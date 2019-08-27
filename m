Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC0E9DF2B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2019 09:52:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EEE6522DEC;
	Tue, 27 Aug 2019 07:52:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id em6iJKvOFITs; Tue, 27 Aug 2019 07:52:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 068FE227E1;
	Tue, 27 Aug 2019 07:51:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1E7C01BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 07:51:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B3E5B21FF8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 07:51:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L16OLbPKpbGw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2019 07:51:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr130057.outbound.protection.outlook.com [40.107.13.57])
 by silver.osuosl.org (Postfix) with ESMTPS id 6EC9F2079A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 07:51:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JcVyD5PWOw0Mpp4O/YY+8RHir6FrKYUXOdIbWhLDO34pfK61aJxydGHFtERZj34ztauAJaovO1XGl8K4ekkZd+gBkNmO+A7I+N/cUqF11P4FLHgfi37ArEmSsJRSCZSlCStdpPvBwxPfWMu/hGQratylW2mTj/eL9KGiRkkAs+BAw4X1ZYJ+qi6+8BxcQNnzqYCtwtuXvWqettLpkzA79CkMrjGHCW4WScCN4YKluRDlbwKfnA+jwCoM/zdQIgRAu/6gNwkRMjb4b3AS60FSwi8Br2nQgguaEcevzWhlCknTnQ/vjY2ARyFFdm7E5YrxOmbFrgx8ZwrmUH6ay1NIhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i3+xkHhOvA11fcRlRrXQe6HsuGG1tNz62skr+VSzxGQ=;
 b=RMU9f/S/Yc7enOBu4UwhfhAHhmPTG4aFwkorrtxvrJTPSZ6cqXk7JSTkVjLtbQ2TrYXexqvpn0wqrqqxY+hoNOvov7vH9+hRnRccMaNJfbZhNjLasSaLiOjLQIMAAxg/sbL1uafOkI1BgBuLocjEsdB02xI7J/4NkIeLN9NEDPcZZcNEINQWuyRgfEnOfiwpJ4FKRvm4ikHzUkG1sGDCCwUUmFDL+fX5KT5eVfwi6PosCDw2lBOvfx1nE9pE3B8lKd+v+jP+ctoaPeU6smC+OipBc8L5w45ZuN5O5ALRFLkI2slsXNGlm7Nmi6wl7nljh4BMJMWiY2Ygm1y1VusRVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i3+xkHhOvA11fcRlRrXQe6HsuGG1tNz62skr+VSzxGQ=;
 b=SFPRB7HkPl9G24Hc/AZ1MQvQqUTnlG2tHg1R/pxhcgzpCeWS82ufv9UUaCU+zElDOFuwnZ2ril2SEfezE/10dZZKueH4juAton4Jr4Y1FMD1KlujrtXxgMapIsUPBh7papzPH93mtcYQbAZ2LIqye+7rM0NaJib/6nd4O47LhNk=
Received: from AM6PR05MB5879.eurprd05.prod.outlook.com (20.179.0.76) by
 AM6PR05MB5126.eurprd05.prod.outlook.com (20.177.197.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Tue, 27 Aug 2019 07:36:19 +0000
Received: from AM6PR05MB5879.eurprd05.prod.outlook.com
 ([fe80::f9d8:38bc:4a18:f7a7]) by AM6PR05MB5879.eurprd05.prod.outlook.com
 ([fe80::f9d8:38bc:4a18:f7a7%5]) with mapi id 15.20.2178.023; Tue, 27 Aug 2019
 07:36:19 +0000
From: Maxim Mikityanskiy <maximmi@mellanox.com>
To: Kevin Laatz <kevin.laatz@intel.com>
Thread-Topic: [PATCH bpf-next v5 03/11] xsk: add support to allow unaligned
 chunk placement
Thread-Index: AQHVWNBt8Buhoq8L5ESScadzHmrTmacOopQA
Date: Tue, 27 Aug 2019 07:36:18 +0000
Message-ID: <4a6ac11e-c8e6-e72b-ede2-f5cd96dcd5cd@mellanox.com>
References: <20190730085400.10376-1-kevin.laatz@intel.com>
 <20190822014427.49800-1-kevin.laatz@intel.com>
 <20190822014427.49800-4-kevin.laatz@intel.com>
In-Reply-To: <20190822014427.49800-4-kevin.laatz@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0902CA0041.eurprd09.prod.outlook.com
 (2603:10a6:7:15::30) To AM6PR05MB5879.eurprd05.prod.outlook.com
 (2603:10a6:20b:a2::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=maximmi@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [95.67.35.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 12e4c5d8-4aef-4932-e875-08d72ac13ff6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR05MB5126; 
x-ms-traffictypediagnostic: AM6PR05MB5126:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR05MB51263C7E149BE553BE776169D1A00@AM6PR05MB5126.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(396003)(346002)(376002)(136003)(199004)(189003)(305945005)(8936002)(386003)(6916009)(71200400001)(86362001)(102836004)(3846002)(71190400001)(6506007)(229853002)(4326008)(99286004)(316002)(26005)(6486002)(66066001)(31696002)(53546011)(14454004)(2906002)(478600001)(14444005)(6116002)(256004)(446003)(66946007)(66556008)(66446008)(64756008)(2616005)(11346002)(486006)(476003)(6436002)(53936002)(6246003)(6512007)(53946003)(186003)(8676002)(81166006)(54906003)(76176011)(7736002)(36756003)(25786009)(52116002)(81156014)(7416002)(31686004)(30864003)(66476007)(5660300002)(579004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR05MB5126;
 H:AM6PR05MB5879.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: igLb++wHmHk13x9yCm6KCFvMICM0eJnar1tCCH+NekfdzWxUc0m4BkkreQ6CDCexeUzto9Am2CL24nSlhRQSQk2EEn55htuy87CgjTe8KU5euZOSHVH/a3mrobH37DB+VfatSe9XpHt6PDD4Omy37cTUKGQ7xrQWcMLup8pe9BMSbYxChgDUJEDotLhzKoVAgWzf3TB44GmtnZHpKlc7vuzMZ/c7o7uAtkCAtnvoINIFtiAm6Pbg8/IR+z1vmheY/K3TRxUt37F2KHU/oR4c7479eXRDnCdhmqSmIIeGLwscfBqkkln6RwzH7ImeX5uf78qSKD0Kgt3iHj7EnsHWfLzEEo0ywXUXFJ+CnQbXfCMWumLDZZFbjvmbV+ED9fjox/7l9zU/kkcd7llcCSoyCCXdjNjzTKwbg8mR3x76Tvg=
Content-ID: <2785D5BDCF089046A22CD13CD8CEFF13@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12e4c5d8-4aef-4932-e875-08d72ac13ff6
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 07:36:18.9483 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4jX8ZxNwh4eXwBS9QzqdnlvjB/Q+m2r0LbKtGNNcK2cPVRmmYQuIjNiF0FTF7K9oEHHaZ4YqYnN1IJ+Be2qrow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB5126
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v5 03/11] xsk: add support to
 allow unaligned chunk placement
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: "jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "ciara.loftus@intel.com" <ciara.loftus@intel.com>,
 "ast@kernel.org" <ast@kernel.org>,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 Saeed Mahameed <saeedm@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>,
 "bruce.richardson@intel.com" <bruce.richardson@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "bjorn.topel@intel.com" <bjorn.topel@intel.com>,
 "magnus.karlsson@intel.com" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2019-08-22 04:44, Kevin Laatz wrote:
> Currently, addresses are chunk size aligned. This means, we are very
> restricted in terms of where we can place chunk within the umem. For
> example, if we have a chunk size of 2k, then our chunks can only be placed
> at 0,2k,4k,6k,8k... and so on (ie. every 2k starting from 0).
> 
> This patch introduces the ability to use unaligned chunks. With these
> changes, we are no longer bound to having to place chunks at a 2k (or
> whatever your chunk size is) interval. Since we are no longer dealing with
> aligned chunks, they can now cross page boundaries. Checks for page
> contiguity have been added in order to keep track of which pages are
> followed by a physically contiguous page.
> 
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
> Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
> Signed-off-by: Bruce Richardson <bruce.richardson@intel.com>
> 
> ---
> v2:
>    - Add checks for the flags coming from userspace
>    - Fix how we get chunk_size in xsk_diag.c
>    - Add defines for masking the new descriptor format
>    - Modified the rx functions to use new descriptor format
>    - Modified the tx functions to use new descriptor format
> 
> v3:
>    - Add helper function to do address/offset masking/addition
> 
> v4:
>    - fixed page_start calculation in __xsk_rcv_memcpy().
>    - move offset handling to the xdp_umem_get_* functions
>    - modified the len field in xdp_umem_reg struct. We now use 16 bits from
>      this for the flags field.
>    - removed next_pg_contig field from xdp_umem_page struct. Using low 12
>      bits of addr to store flags instead.
>    - other minor changes based on review comments
> 
> v5:
>    - Added accessors for getting addr and offset
>    - Added helper function to add offset to addr
>    - Fixed offset handling in xsk_rcv
>    - Removed bitfields from xdp_umem_reg
>    - Added struct size checking for xdp_umem_reg in xsk_setsockopt to handle
>      different versions of the struct.
>    - fix conflicts after 'bpf-af-xdp-wakeup' was merged.
> ---
>   include/net/xdp_sock.h      | 75 +++++++++++++++++++++++++++--
>   include/uapi/linux/if_xdp.h |  9 ++++
>   net/xdp/xdp_umem.c          | 19 ++++++--
>   net/xdp/xsk.c               | 96 +++++++++++++++++++++++++++++--------
>   net/xdp/xsk_diag.c          |  2 +-
>   net/xdp/xsk_queue.h         | 68 ++++++++++++++++++++++----
>   6 files changed, 232 insertions(+), 37 deletions(-)
> 
> diff --git a/include/net/xdp_sock.h b/include/net/xdp_sock.h
> index f023b9940d64..c9398ce7960f 100644
> --- a/include/net/xdp_sock.h
> +++ b/include/net/xdp_sock.h
> @@ -16,6 +16,13 @@
>   struct net_device;
>   struct xsk_queue;
>   
> +/* Masks for xdp_umem_page flags.
> + * The low 12-bits of the addr will be 0 since this is the page address, so we
> + * can use them for flags.
> + */
> +#define XSK_NEXT_PG_CONTIG_SHIFT 0
> +#define XSK_NEXT_PG_CONTIG_MASK (1ULL << XSK_NEXT_PG_CONTIG_SHIFT)
> +
>   struct xdp_umem_page {
>   	void *addr;
>   	dma_addr_t dma;
> @@ -27,8 +34,12 @@ struct xdp_umem_fq_reuse {
>   	u64 handles[];
>   };
>   
> -/* Flags for the umem flags field. */
> -#define XDP_UMEM_USES_NEED_WAKEUP (1 << 0)
> +/* Flags for the umem flags field.
> + *
> + * The NEED_WAKEUP flag is 1 due to the reuse of the flags field for public
> + * flags. See inlude/uapi/include/linux/if_xdp.h.
> + */
> +#define XDP_UMEM_USES_NEED_WAKEUP (1 << 1)
>   
>   struct xdp_umem {
>   	struct xsk_queue *fq;
> @@ -124,14 +135,36 @@ void xsk_map_try_sock_delete(struct xsk_map *map, struct xdp_sock *xs,
>   int xsk_map_inc(struct xsk_map *map);
>   void xsk_map_put(struct xsk_map *map);
>   
> +static inline u64 xsk_umem_extract_addr(u64 addr)
> +{
> +	return addr & XSK_UNALIGNED_BUF_ADDR_MASK;
> +}
> +
> +static inline u64 xsk_umem_extract_offset(u64 addr)
> +{
> +	return addr >> XSK_UNALIGNED_BUF_OFFSET_SHIFT;
> +}
> +
> +static inline u64 xsk_umem_add_offset_to_addr(u64 addr)
> +{
> +	return xsk_umem_extract_addr(addr) + xsk_umem_extract_offset(addr);
> +}
> +
>   static inline char *xdp_umem_get_data(struct xdp_umem *umem, u64 addr)
>   {
> -	return umem->pages[addr >> PAGE_SHIFT].addr + (addr & (PAGE_SIZE - 1));
> +	unsigned long page_addr;
> +
> +	addr = xsk_umem_add_offset_to_addr(addr);
> +	page_addr = (unsigned long)umem->pages[addr >> PAGE_SHIFT].addr;
> +
> +	return (char *)(page_addr & PAGE_MASK) + (addr & ~PAGE_MASK);
>   }
>   
>   static inline dma_addr_t xdp_umem_get_dma(struct xdp_umem *umem, u64 addr)
>   {
> -	return umem->pages[addr >> PAGE_SHIFT].dma + (addr & (PAGE_SIZE - 1));
> +	addr = xsk_umem_add_offset_to_addr(addr);
> +
> +	return umem->pages[addr >> PAGE_SHIFT].dma + (addr & ~PAGE_MASK);
>   }
>   
>   /* Reuse-queue aware version of FILL queue helpers */
> @@ -172,6 +205,19 @@ static inline void xsk_umem_fq_reuse(struct xdp_umem *umem, u64 addr)
>   
>   	rq->handles[rq->length++] = addr;
>   }
> +
> +/* Handle the offset appropriately depending on aligned or unaligned mode.
> + * For unaligned mode, we store the offset in the upper 16-bits of the address.
> + * For aligned mode, we simply add the offset to the address.
> + */
> +static inline u64 xsk_umem_adjust_offset(struct xdp_umem *umem, u64 address,
> +					 u64 offset)
> +{
> +	if (umem->flags & XDP_UMEM_UNALIGNED_CHUNK_FLAG)
> +		return address + (offset << XSK_UNALIGNED_BUF_OFFSET_SHIFT);
> +	else
> +		return address + offset;
> +}
>   #else
>   static inline int xsk_generic_rcv(struct xdp_sock *xs, struct xdp_buff *xdp)
>   {
> @@ -241,6 +287,21 @@ static inline struct xdp_umem *xdp_get_umem_from_qid(struct net_device *dev,
>   	return NULL;
>   }
>   
> +static inline u64 xsk_umem_extract_addr(u64 addr)
> +{
> +	return 0;
> +}
> +
> +static inline u64 xsk_umem_extract_offset(u64 addr)
> +{
> +	return 0;
> +}
> +
> +static inline u64 xsk_umem_add_offset_to_addr(u64 addr)
> +{
> +	return 0;
> +}
> +
>   static inline char *xdp_umem_get_data(struct xdp_umem *umem, u64 addr)
>   {
>   	return NULL;
> @@ -290,6 +351,12 @@ static inline bool xsk_umem_uses_need_wakeup(struct xdp_umem *umem)
>   	return false;
>   }
>   
> +static inline u64 xsk_umem_adjust_offset(struct xdp_umem *umem, u64 handle,
> +					 u64 offset)
> +{
> +	return 0;
> +}
> +
>   #endif /* CONFIG_XDP_SOCKETS */
>   
>   #endif /* _LINUX_XDP_SOCK_H */
> diff --git a/include/uapi/linux/if_xdp.h b/include/uapi/linux/if_xdp.h
> index 62b80d57b72a..be328c59389d 100644
> --- a/include/uapi/linux/if_xdp.h
> +++ b/include/uapi/linux/if_xdp.h
> @@ -26,6 +26,9 @@
>    */
>   #define XDP_USE_NEED_WAKEUP (1 << 3)
>   
> +/* Flags for xsk_umem_config flags */
> +#define XDP_UMEM_UNALIGNED_CHUNK_FLAG (1 << 0)
> +
>   struct sockaddr_xdp {
>   	__u16 sxdp_family;
>   	__u16 sxdp_flags;
> @@ -66,6 +69,7 @@ struct xdp_umem_reg {
>   	__u64 len; /* Length of packet data area */
>   	__u32 chunk_size;
>   	__u32 headroom;
> +	__u32 flags;
>   };
>   
>   struct xdp_statistics {
> @@ -87,6 +91,11 @@ struct xdp_options {
>   #define XDP_UMEM_PGOFF_FILL_RING	0x100000000ULL
>   #define XDP_UMEM_PGOFF_COMPLETION_RING	0x180000000ULL
>   
> +/* Masks for unaligned chunks mode */
> +#define XSK_UNALIGNED_BUF_OFFSET_SHIFT 48
> +#define XSK_UNALIGNED_BUF_ADDR_MASK \
> +	((1ULL << XSK_UNALIGNED_BUF_OFFSET_SHIFT) - 1)
> +
>   /* Rx/Tx descriptor */
>   struct xdp_desc {
>   	__u64 addr;
> diff --git a/net/xdp/xdp_umem.c b/net/xdp/xdp_umem.c
> index 2d65779282a1..e997b263a0dd 100644
> --- a/net/xdp/xdp_umem.c
> +++ b/net/xdp/xdp_umem.c
> @@ -340,6 +340,7 @@ static int xdp_umem_account_pages(struct xdp_umem *umem)
>   
>   static int xdp_umem_reg(struct xdp_umem *umem, struct xdp_umem_reg *mr)
>   {
> +	bool unaligned_chunks = mr->flags & XDP_UMEM_UNALIGNED_CHUNK_FLAG;
>   	u32 chunk_size = mr->chunk_size, headroom = mr->headroom;
>   	unsigned int chunks, chunks_per_page;
>   	u64 addr = mr->addr, size = mr->len;
> @@ -355,7 +356,11 @@ static int xdp_umem_reg(struct xdp_umem *umem, struct xdp_umem_reg *mr)
>   		return -EINVAL;
>   	}
>   
> -	if (!is_power_of_2(chunk_size))
> +	if (mr->flags & ~(XDP_UMEM_UNALIGNED_CHUNK_FLAG |
> +			XDP_UMEM_USES_NEED_WAKEUP))
> +		return -EINVAL;
> +
> +	if (!unaligned_chunks && !is_power_of_2(chunk_size))
>   		return -EINVAL;
>   
>   	if (!PAGE_ALIGNED(addr)) {
> @@ -372,9 +377,11 @@ static int xdp_umem_reg(struct xdp_umem *umem, struct xdp_umem_reg *mr)
>   	if (chunks == 0)
>   		return -EINVAL;
>   
> -	chunks_per_page = PAGE_SIZE / chunk_size;
> -	if (chunks < chunks_per_page || chunks % chunks_per_page)
> -		return -EINVAL;
> +	if (!unaligned_chunks) {
> +		chunks_per_page = PAGE_SIZE / chunk_size;
> +		if (chunks < chunks_per_page || chunks % chunks_per_page)
> +			return -EINVAL;
> +	}
>   
>   	headroom = ALIGN(headroom, 64);
>   
> @@ -383,13 +390,15 @@ static int xdp_umem_reg(struct xdp_umem *umem, struct xdp_umem_reg *mr)
>   		return -EINVAL;
>   
>   	umem->address = (unsigned long)addr;
> -	umem->chunk_mask = ~((u64)chunk_size - 1);
> +	umem->chunk_mask = unaligned_chunks ? XSK_UNALIGNED_BUF_ADDR_MASK
> +					    : ~((u64)chunk_size - 1);
>   	umem->size = size;
>   	umem->headroom = headroom;
>   	umem->chunk_size_nohr = chunk_size - headroom;
>   	umem->npgs = size / PAGE_SIZE;
>   	umem->pgs = NULL;
>   	umem->user = NULL;
> +	umem->flags = mr->flags;
>   	INIT_LIST_HEAD(&umem->xsk_list);
>   	spin_lock_init(&umem->xsk_list_lock);
>   
> diff --git a/net/xdp/xsk.c b/net/xdp/xsk.c
> index ee4428a892fa..907e5f12338f 100644
> --- a/net/xdp/xsk.c
> +++ b/net/xdp/xsk.c
> @@ -45,7 +45,7 @@ EXPORT_SYMBOL(xsk_umem_has_addrs);
>   
>   u64 *xsk_umem_peek_addr(struct xdp_umem *umem, u64 *addr)
>   {
> -	return xskq_peek_addr(umem->fq, addr);
> +	return xskq_peek_addr(umem->fq, addr, umem);
>   }
>   EXPORT_SYMBOL(xsk_umem_peek_addr);
>   
> @@ -115,21 +115,43 @@ bool xsk_umem_uses_need_wakeup(struct xdp_umem *umem)
>   }
>   EXPORT_SYMBOL(xsk_umem_uses_need_wakeup);
>   
> +/* If a buffer crosses a page boundary, we need to do 2 memcpy's, one for
> + * each page. This is only required in copy mode.
> + */
> +static void __xsk_rcv_memcpy(struct xdp_umem *umem, u64 addr, void *from_buf,
> +			     u32 len, u32 metalen)
> +{
> +	void *to_buf = xdp_umem_get_data(umem, addr);
> +
> +	addr = xsk_umem_add_offset_to_addr(addr);
> +	if (xskq_crosses_non_contig_pg(umem, addr, len + metalen)) {
> +		void *next_pg_addr = umem->pages[(addr >> PAGE_SHIFT) + 1].addr;
> +		u64 page_start = addr & ~(PAGE_SIZE - 1);
> +		u64 first_len = PAGE_SIZE - (addr - page_start);
> +
> +		memcpy(to_buf, from_buf, first_len + metalen);
> +		memcpy(next_pg_addr, from_buf + first_len, len - first_len);
> +
> +		return;
> +	}
> +
> +	memcpy(to_buf, from_buf, len + metalen);
> +}
> +
>   static int __xsk_rcv(struct xdp_sock *xs, struct xdp_buff *xdp, u32 len)
>   {
> -	void *to_buf, *from_buf;
> +	u64 offset = xs->umem->headroom;
> +	u64 addr, memcpy_addr;
> +	void *from_buf;
>   	u32 metalen;
> -	u64 addr;
>   	int err;
>   
> -	if (!xskq_peek_addr(xs->umem->fq, &addr) ||
> +	if (!xskq_peek_addr(xs->umem->fq, &addr, xs->umem) ||
>   	    len > xs->umem->chunk_size_nohr - XDP_PACKET_HEADROOM) {
>   		xs->rx_dropped++;
>   		return -ENOSPC;
>   	}
>   
> -	addr += xs->umem->headroom;
> -
>   	if (unlikely(xdp_data_meta_unsupported(xdp))) {
>   		from_buf = xdp->data;
>   		metalen = 0;
> @@ -138,9 +160,11 @@ static int __xsk_rcv(struct xdp_sock *xs, struct xdp_buff *xdp, u32 len)
>   		metalen = xdp->data - xdp->data_meta;
>   	}
>   
> -	to_buf = xdp_umem_get_data(xs->umem, addr);
> -	memcpy(to_buf, from_buf, len + metalen);
> -	addr += metalen;
> +	memcpy_addr = xsk_umem_adjust_offset(xs->umem, addr, offset);
> +	__xsk_rcv_memcpy(xs->umem, memcpy_addr, from_buf, len, metalen);
> +
> +	offset += metalen;
> +	addr = xsk_umem_adjust_offset(xs->umem, addr, offset);
>   	err = xskq_produce_batch_desc(xs->rx, addr, len);
>   	if (!err) {
>   		xskq_discard_addr(xs->umem->fq);
> @@ -185,6 +209,7 @@ int xsk_generic_rcv(struct xdp_sock *xs, struct xdp_buff *xdp)
>   {
>   	u32 metalen = xdp->data - xdp->data_meta;
>   	u32 len = xdp->data_end - xdp->data;
> +	u64 offset = xs->umem->headroom;
>   	void *buffer;
>   	u64 addr;
>   	int err;
> @@ -196,17 +221,17 @@ int xsk_generic_rcv(struct xdp_sock *xs, struct xdp_buff *xdp)
>   		goto out_unlock;
>   	}
>   
> -	if (!xskq_peek_addr(xs->umem->fq, &addr) ||
> +	if (!xskq_peek_addr(xs->umem->fq, &addr, xs->umem) ||
>   	    len > xs->umem->chunk_size_nohr - XDP_PACKET_HEADROOM) {
>   		err = -ENOSPC;
>   		goto out_drop;
>   	}
>   
> -	addr += xs->umem->headroom;
> -
> -	buffer = xdp_umem_get_data(xs->umem, addr);
> +	buffer = xdp_umem_get_data(xs->umem, addr + offset);
>   	memcpy(buffer, xdp->data_meta, len + metalen);
> -	addr += metalen;
> +	offset += metalen;
> +
> +	addr = xsk_umem_adjust_offset(xs->umem, addr, offset);
>   	err = xskq_produce_batch_desc(xs->rx, addr, len);
>   	if (err)
>   		goto out_drop;
> @@ -250,7 +275,7 @@ bool xsk_umem_consume_tx(struct xdp_umem *umem, struct xdp_desc *desc)
>   
>   	rcu_read_lock();
>   	list_for_each_entry_rcu(xs, &umem->xsk_list, list) {
> -		if (!xskq_peek_desc(xs->tx, desc))
> +		if (!xskq_peek_desc(xs->tx, desc, umem))
>   			continue;
>   
>   		if (xskq_produce_addr_lazy(umem->cq, desc->addr))
> @@ -304,7 +329,7 @@ static int xsk_generic_xmit(struct sock *sk, struct msghdr *m,
>   	if (xs->queue_id >= xs->dev->real_num_tx_queues)
>   		goto out;
>   
> -	while (xskq_peek_desc(xs->tx, &desc)) {
> +	while (xskq_peek_desc(xs->tx, &desc, xs->umem)) {
>   		char *buffer;
>   		u64 addr;
>   		u32 len;
> @@ -333,7 +358,7 @@ static int xsk_generic_xmit(struct sock *sk, struct msghdr *m,
>   		skb->dev = xs->dev;
>   		skb->priority = sk->sk_priority;
>   		skb->mark = sk->sk_mark;
> -		skb_shinfo(skb)->destructor_arg = (void *)(long)addr;
> +		skb_shinfo(skb)->destructor_arg = (void *)(long)desc.addr;
>   		skb->destructor = xsk_destruct_skb;
>   
>   		err = dev_direct_xmit(skb, xs->queue_id);
> @@ -526,6 +551,24 @@ static struct socket *xsk_lookup_xsk_from_fd(int fd)
>   	return sock;
>   }
>   
> +/* Check if umem pages are contiguous.
> + * If zero-copy mode, use the DMA address to do the page contiguity check
> + * For all other modes we use addr (kernel virtual address)
> + * Store the result in the low bits of addr.
> + */
> +static void xsk_check_page_contiguity(struct xdp_umem *umem, u32 flags)
> +{
> +	struct xdp_umem_page *pgs = umem->pages;
> +	int i, is_contig;
> +
> +	for (i = 0; i < umem->npgs - 1; i++) {
> +		is_contig = (flags & XDP_ZEROCOPY) ?
> +			(pgs[i].dma + PAGE_SIZE == pgs[i + 1].dma) :
> +			(pgs[i].addr + PAGE_SIZE == pgs[i + 1].addr);
> +		pgs[i].addr += is_contig << XSK_NEXT_PG_CONTIG_SHIFT;
> +	}
> +}
> +
>   static int xsk_bind(struct socket *sock, struct sockaddr *addr, int addr_len)
>   {
>   	struct sockaddr_xdp *sxdp = (struct sockaddr_xdp *)addr;
> @@ -616,6 +659,8 @@ static int xsk_bind(struct socket *sock, struct sockaddr *addr, int addr_len)
>   		err = xdp_umem_assign_dev(xs->umem, dev, qid, flags);
>   		if (err)
>   			goto out_unlock;
> +
> +		xsk_check_page_contiguity(xs->umem, flags);
>   	}
>   
>   	xs->dev = dev;
> @@ -636,6 +681,13 @@ static int xsk_bind(struct socket *sock, struct sockaddr *addr, int addr_len)
>   	return err;
>   }
>   
> +struct xdp_umem_reg_v1 {
> +	__u64 addr; /* Start of packet data area */
> +	__u64 len; /* Length of packet data area */
> +	__u32 chunk_size;
> +	__u32 headroom;
> +};
> +
>   static int xsk_setsockopt(struct socket *sock, int level, int optname,
>   			  char __user *optval, unsigned int optlen)
>   {
> @@ -673,10 +725,16 @@ static int xsk_setsockopt(struct socket *sock, int level, int optname,
>   	}
>   	case XDP_UMEM_REG:
>   	{
> -		struct xdp_umem_reg mr;
> +		size_t mr_size = sizeof(struct xdp_umem_reg);
> +		struct xdp_umem_reg mr = {};
>   		struct xdp_umem *umem;
>   
> -		if (copy_from_user(&mr, optval, sizeof(mr)))
> +		if (optlen < sizeof(struct xdp_umem_reg_v1))
> +			return -EINVAL;
> +		else if (optlen < sizeof(mr))
> +			mr_size = sizeof(struct xdp_umem_reg_v1);
> +
> +		if (copy_from_user(&mr, optval, mr_size))
>   			return -EFAULT;
>   
>   		mutex_lock(&xs->mutex);
> diff --git a/net/xdp/xsk_diag.c b/net/xdp/xsk_diag.c
> index d5e06c8e0cbf..9986a759fe06 100644
> --- a/net/xdp/xsk_diag.c
> +++ b/net/xdp/xsk_diag.c
> @@ -56,7 +56,7 @@ static int xsk_diag_put_umem(const struct xdp_sock *xs, struct sk_buff *nlskb)
>   	du.id = umem->id;
>   	du.size = umem->size;
>   	du.num_pages = umem->npgs;
> -	du.chunk_size = (__u32)(~umem->chunk_mask + 1);
> +	du.chunk_size = umem->chunk_size_nohr + umem->headroom;
>   	du.headroom = umem->headroom;
>   	du.ifindex = umem->dev ? umem->dev->ifindex : 0;
>   	du.queue_id = umem->queue_id;
> diff --git a/net/xdp/xsk_queue.h b/net/xdp/xsk_queue.h
> index dd9e985c2461..6c67c9d0294f 100644
> --- a/net/xdp/xsk_queue.h
> +++ b/net/xdp/xsk_queue.h
> @@ -134,6 +134,17 @@ static inline bool xskq_has_addrs(struct xsk_queue *q, u32 cnt)
>   
>   /* UMEM queue */
>   
> +static inline bool xskq_crosses_non_contig_pg(struct xdp_umem *umem, u64 addr,
> +					      u64 length)
> +{
> +	bool cross_pg = (addr & (PAGE_SIZE - 1)) + length > PAGE_SIZE;
> +	bool next_pg_contig =
> +		(unsigned long)umem->pages[(addr >> PAGE_SHIFT)].addr &
> +			XSK_NEXT_PG_CONTIG_MASK;
> +
> +	return cross_pg && !next_pg_contig;
> +}
> +
>   static inline bool xskq_is_valid_addr(struct xsk_queue *q, u64 addr)
>   {
>   	if (addr >= q->size) {
> @@ -144,23 +155,49 @@ static inline bool xskq_is_valid_addr(struct xsk_queue *q, u64 addr)
>   	return true;
>   }
>   
> -static inline u64 *xskq_validate_addr(struct xsk_queue *q, u64 *addr)
> +static inline bool xskq_is_valid_addr_unaligned(struct xsk_queue *q, u64 addr,
> +						u64 length,
> +						struct xdp_umem *umem)
> +{
> +	addr = xsk_umem_add_offset_to_addr(addr);
> +	if (addr >= q->size ||

I know I already asked about it, but I feel we need to clarify things 
here further.

The `addr >= q->size` check is good, it checks that the address doesn't 
overflow the UMEM. However, the new encoding of UMEM handles consists of 
two parts: base address of the frame (low bits) and offset (high bits), 
that are added together by xsk_umem_add_offset_to_addr. It's possible to 
craft an address that has too big base address of the frame (all 
0xff...f), some non-zero offset, so after adding them together we pass 
`addr < q->size`, but the base address exceeds the UMEM. In my opinion, 
we should not allow such addresses, because the base address of the 
frame is out of bounds, so we need one more check here. What do you 
think about this point?

> +	    xskq_crosses_non_contig_pg(umem, addr, length)) {
> +		q->invalid_descs++;
> +		return false;
> +	}
> +
> +	return true;
> +}
> +
> +static inline u64 *xskq_validate_addr(struct xsk_queue *q, u64 *addr,
> +				      struct xdp_umem *umem)
>   {
>   	while (q->cons_tail != q->cons_head) {
>   		struct xdp_umem_ring *ring = (struct xdp_umem_ring *)q->ring;
>   		unsigned int idx = q->cons_tail & q->ring_mask;
>   
>   		*addr = READ_ONCE(ring->desc[idx]) & q->chunk_mask;
> +
> +		if (umem->flags & XDP_UMEM_UNALIGNED_CHUNK_FLAG) {
> +			if (xskq_is_valid_addr_unaligned(q, *addr,
> +							 umem->chunk_size_nohr,
> +							 umem))
> +				return addr;
> +			goto out;
> +		}
> +
>   		if (xskq_is_valid_addr(q, *addr))
>   			return addr;
>   
> +out:
>   		q->cons_tail++;
>   	}
>   
>   	return NULL;
>   }
>   
> -static inline u64 *xskq_peek_addr(struct xsk_queue *q, u64 *addr)
> +static inline u64 *xskq_peek_addr(struct xsk_queue *q, u64 *addr,
> +				  struct xdp_umem *umem)
>   {
>   	if (q->cons_tail == q->cons_head) {
>   		smp_mb(); /* D, matches A */
> @@ -171,7 +208,7 @@ static inline u64 *xskq_peek_addr(struct xsk_queue *q, u64 *addr)
>   		smp_rmb();
>   	}
>   
> -	return xskq_validate_addr(q, addr);
> +	return xskq_validate_addr(q, addr, umem);
>   }
>   
>   static inline void xskq_discard_addr(struct xsk_queue *q)
> @@ -230,8 +267,21 @@ static inline int xskq_reserve_addr(struct xsk_queue *q)
>   
>   /* Rx/Tx queue */
>   
> -static inline bool xskq_is_valid_desc(struct xsk_queue *q, struct xdp_desc *d)
> +static inline bool xskq_is_valid_desc(struct xsk_queue *q, struct xdp_desc *d,
> +				      struct xdp_umem *umem)
>   {
> +	if (umem->flags & XDP_UMEM_UNALIGNED_CHUNK_FLAG) {
> +		if (!xskq_is_valid_addr_unaligned(q, d->addr, d->len, umem))
> +			return false;
> +
> +		if (d->len > umem->chunk_size_nohr || d->options) {
> +			q->invalid_descs++;
> +			return false;
> +		}
> +
> +		return true;
> +	}
> +
>   	if (!xskq_is_valid_addr(q, d->addr))
>   		return false;
>   
> @@ -245,14 +295,15 @@ static inline bool xskq_is_valid_desc(struct xsk_queue *q, struct xdp_desc *d)
>   }
>   
>   static inline struct xdp_desc *xskq_validate_desc(struct xsk_queue *q,
> -						  struct xdp_desc *desc)
> +						  struct xdp_desc *desc,
> +						  struct xdp_umem *umem)
>   {
>   	while (q->cons_tail != q->cons_head) {
>   		struct xdp_rxtx_ring *ring = (struct xdp_rxtx_ring *)q->ring;
>   		unsigned int idx = q->cons_tail & q->ring_mask;
>   
>   		*desc = READ_ONCE(ring->desc[idx]);
> -		if (xskq_is_valid_desc(q, desc))
> +		if (xskq_is_valid_desc(q, desc, umem))
>   			return desc;
>   
>   		q->cons_tail++;
> @@ -262,7 +313,8 @@ static inline struct xdp_desc *xskq_validate_desc(struct xsk_queue *q,
>   }
>   
>   static inline struct xdp_desc *xskq_peek_desc(struct xsk_queue *q,
> -					      struct xdp_desc *desc)
> +					      struct xdp_desc *desc,
> +					      struct xdp_umem *umem)
>   {
>   	if (q->cons_tail == q->cons_head) {
>   		smp_mb(); /* D, matches A */
> @@ -273,7 +325,7 @@ static inline struct xdp_desc *xskq_peek_desc(struct xsk_queue *q,
>   		smp_rmb(); /* C, matches B */
>   	}
>   
> -	return xskq_validate_desc(q, desc);
> +	return xskq_validate_desc(q, desc, umem);
>   }
>   
>   static inline void xskq_discard_desc(struct xsk_queue *q)
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
