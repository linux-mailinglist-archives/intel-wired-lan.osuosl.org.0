Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52025B0BA56
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 04:19:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06B5161C9D;
	Mon, 21 Jul 2025 02:19:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id baV5vgfztfGy; Mon, 21 Jul 2025 02:19:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E87261C98
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753064354;
	bh=CeDMN0y2LxxzXxmac8Sov5r+FiCgBlJtQe7PAfm7O1w=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=glHo//rWM3PbJ5l1GmmA5BPsoCACs495dzwhNNizhwPjTGTpqLMirO57whN/6XbZs
	 gNT98nZ6zpFwAlRyLOvchcqtFodAHTvPS2afHyxLBN1BeyMPtwcrCah4XWaXT5KkiX
	 nwlVDU+qqJHPNzV2U1oLq25LninqSvNkNj3Z6mhCGY/JLG904NLyilQ/hxWhnOBNpQ
	 toRq+09pL552Uhfwx1yIi7l4EcMCBzNOKewsGg+KJdHOVIXLJAJNsmuzJIeq9nShAW
	 LktJ61u3x8pxpZB6UpUxuU8+dXifAsF1afmpeGY9UBf5B1+odcZXEBshNt+A5etaT5
	 zIN/fAkAsv10w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E87261C98;
	Mon, 21 Jul 2025 02:19:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 33ABDDA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 175A6842BF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZwtbBxMeDwJy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 02:19:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2E1AF84298
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E1AF84298
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E1AF84298
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:05 +0000 (UTC)
X-AuditID: a67dfc5b-669ff7000002311f-d8-687da387e959
From: Byungchul Park <byungchul@sk.com>
To: willy@infradead.org,
	netdev@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, linux-mm@kvack.org, kernel_team@skhynix.com,
 almasrymina@google.com, ilias.apalodimas@linaro.org, harry.yoo@oracle.com,
 akpm@linux-foundation.org, andrew+netdev@lunn.ch, asml.silence@gmail.com,
 toke@redhat.com, david@redhat.com, Liam.Howlett@oracle.com, vbabka@suse.cz,
 rppt@kernel.org, surenb@google.com, mhocko@suse.com,
 linux-rdma@vger.kernel.org, bpf@vger.kernel.org, vishal.moola@gmail.com,
 hannes@cmpxchg.org, ziy@nvidia.com, jackmanb@google.com, wei.fang@nxp.com,
 shenwei.wang@nxp.com, xiaoning.wang@nxp.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 sgoutham@marvell.com, gakula@marvell.com, sbhatta@marvell.com,
 hkelam@marvell.com, bbhushan2@marvell.com, tariqt@nvidia.com,
 ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com, sdf@fomichev.me, saeedm@nvidia.com,
 leon@kernel.org, mbloch@nvidia.com, danishanwar@ti.com, rogerq@kernel.org,
 nbd@nbd.name, lorenzo@kernel.org, ryder.lee@mediatek.com,
 shayne.chen@mediatek.com, sean.wang@mediatek.com, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, aleksander.lobakin@intel.com,
 horms@kernel.org, m-malladi@ti.com, krzysztof.kozlowski@linaro.org,
 matthias.schiffer@ew.tq-group.com, robh@kernel.org, imx@lists.linux.dev,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org
Date: Mon, 21 Jul 2025 11:18:33 +0900
Message-Id: <20250721021835.63939-11-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250721021835.63939-1-byungchul@sk.com>
References: <20250721021835.63939-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSa0yTdxTG/b/3dm3ypjb6rotxaWIwOpmILkezqXFf/h9mosHE4CWukTdr
 Y6mklY5iiKhFBplgNjSgNVIBpdRY1k6pUrwUQvEOpWIZNy1iUKtDUNYCylqN3345J8/znJNz
 OFLRS6s4nWGfaDRo9GpGSklfyezLimsKtMtLXnwNNtcFBrom7DQ4Y3lw/rGXhqBDgObOGAG2
 hssI3sb7WHCX9JMw0RZgoMY+SUK88SgFtgdWCt65pkgYaY+w0OF/T4HTvRGGzj2jwFfcRELr
 u0UQKe9g4Kh1moSqwSIGZv+ZpqEl/pqFQ956AlpeXmKh83IZDRVTdSQ0FT5OZA330NB91cZA
 9+EuBIMXZml45k8ERuv7WShznkTgv+5g4JA1HaKX3rIwdryNhKGy9fCh0gzt1fNg8k4UQV/d
 QwJmfV4W7g9epKHN1URA6EmchMnfTzNQ+qocwcOqqwTcPd1IQ+2dEJGYIwN6ZmcI+DNYzcCw
 dQhBsDVCwamDZQhc18I0vPElVp6O2Zj1G3Br9F8SewdqEf7b0Uvg0WMfCBy+dpvAV04OsLja
 nYs99Utwje85gUvDQRK7G0oY7B7/g8X9PT4Gd1ROU9hTewCPeqrQpgXbpN9niXqdWTR+u/Zn
 qfbE7QCdE2LzvLHf2ELkYEqRhBP4lUJFYzH6zL1XXtJJZvgUIRyOk0lW8mnCRCRAlSIpR/L3
 ZEKLp5JINubymUJR+amPRhS/SHA8+Ssh5jg5/50w9WbHJ8+FgrPxxkcfSaIcSVw/yQp+lRB9
 4aWTngJ/RiKcbwgQnwRfCjfrw9QxJK9GcxqQQmcwZ2t0+pWpWotBl5e6e2+2GyUe7lzBzHYv
 Gu/M8COeQ2qZPIcq0CpojdlkyfYjgSPVSjkO5GsV8iyNJV807t1lzNWLJj/6iqPU8+UrJn/N
 UvC/aPaJe0QxRzR+7hKcRFWINMtHRzKPOyx1ZwU9pO2n86dkXYoS5/W0PemLU5Qp1nGLccua
 3KKZn8btoUesY7NUudX/NPYeHlTY96s6ohKlymT6Jnr4B9Y80Le6vc5wRPpF82b5j46xZbc8
 wxmuEcPOYHRC+mip/b9MFUfmXNzFhc6uay4ckKWmj/m6K1+rKZNWk7aENJo0/wMuA3g+bAMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAAzVSa0iTYRTu/e4uRx9L7MOiYBCBkSllnK50+dFLUET96EJkI7/acJpsJlpJ
 WrNUastuaCloam0aarN05bowRS3TbF5Y5XVWlK7MpsupuWbRv+ech+cC53CkrJoO4VRxCaIm
 TqGWMxJKsmv9+RUXilKU4aOZayGv4j4Db92FNJRNJMG9fgsNdpMAtW0TBOSVViMY835gwZzZ
 TYK7vpGBokIPCd7KyxTkvdFRMF4xScKnBicLTbbfFJSZd0Lf3c8UWC/WkFA3vhSchiYGLuum
 SMjtTWfA936Khqfe7yycsxgJqMt/6R+HH7HQVq2n4fpkCQk1qf3+wMEuGtqf5DHQfv4tgt77
 Pho+2/ypLmM3C/qyWwhsz00MnNOtAtejMRZ+3KgnoU+/GWZyEqGhIBg8zS4EH0o6CfBZLSy0
 9pbTUF9RQ0DHgJcEz6V8BrK+GRB05j4h4HV+JQ3FzR2Ev8de6PJNE3DNXsDAoK4Pgb3OScHt
 ND2CimcOGkatOmrzNlznGiGxpacY4YemdwT+cmWGwI5nrwj8+FYPiwvMJ3GVMRQXWb8SOMth
 J7G5NJPB5p9XWdzdZWVwU84UhauKz+IvVblo9+KDkg3RolqVKGpWbjoiUd581UjHd7BJlokM
 NhWZmCwUwAn8auHd42F6FjP8MsHh8JKzOIiPENzORioLSTiSbwkUnlblELPEfP6AkG64/VdM
 8UsF08ADv5jjpPwaYXL00D/PJUJZ5Yu/PgH+tdN/8Vks4yMF15CFvoIkBWhOKQpSxSXGKlTq
 yDBtjDI5TpUUdvRErBn5v+luynS2BY21b7chnkPyQGk8laKU0YpEbXKsDQkcKQ+S4sZTSpk0
 WpF8StSciNKcVItaG1rIUfIF0h37xCMy/rgiQYwRxXhR858luICQVHRM07JlZebpsOB1M4cC
 Mx7YFvl2K9La4n//Slq9vFzWbHRfH5GGhF9QN5UMdUgbiGqV3pkQut8QeaC5xtV/eO7GcM28
 7tKtnj2enSPTPY6Dy63txm2OzuyUdPudoX5DhjHmTJ/bY3GkBkfPjdIuXKHMnxqnF8+f56zN
 Lmz9aH7vk1NapSIilNRoFX8AjoMWi0kDAAA=
X-CFilter-Loop: Reflected
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v12 10/12] mlx5: access ->pp
 through netmem_desc instead of page
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

To eliminate the use of struct page in page pool, the page pool users
should use netmem descriptor and APIs instead.

Make mlx5 access ->pp through netmem_desc instead of page.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
index 5ce1b463b7a8..5d51600935a6 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
@@ -710,7 +710,8 @@ static void mlx5e_free_xdpsq_desc(struct mlx5e_xdpsq *sq,
 				/* No need to check page_pool_page_is_pp() as we
 				 * know this is a page_pool page.
 				 */
-				page_pool_recycle_direct(page->pp, page);
+				page_pool_recycle_direct(pp_page_to_nmdesc(page)->pp,
+							 page);
 			} while (++n < num);
 
 			break;
-- 
2.17.1

