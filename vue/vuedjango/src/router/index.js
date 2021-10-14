import { createRouter, createWebHistory } from "vue-router";
import List from '../components/list'
import Details from '../components/Details'
import ListCategory from '../components/ListCategory.vue'
import ListType from '../components/ListType.vue'

const routes = [
    {
        path: "/",
        component: List,
    },
    {
        path: "/details/:id",
        component: Details,
    },
    {
        path: "/category/:id/elements",
        component: ListCategory,
    },
    {
        path: "/type/:id/elements",
        component: ListType,
    },
]

const router = createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes
})

export default router