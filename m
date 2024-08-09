Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B545994D36D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2024 17:25:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41B3F841B7;
	Fri,  9 Aug 2024 15:25:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MpmEuryIELwn; Fri,  9 Aug 2024 15:25:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 694A1841AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723217138;
	bh=2IX1ZtgkzN6T/vddOia7abxKCAeYoaFk3fmvleLoVp8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Tav/9Edij1EWWQlsRGuqZJF85MCEIwrAtddfPjl97IU3J5UYHCGx4TzuS+y3YXQnM
	 FqbPyhmwyuEzgYLPI93Irgyg0ZbKofirxnl0O7S2C0Ueyv8kmkHL05eXDjlgLY6dBg
	 /y1kwNc+z5OBX+/mBmVYlXlmw/aJy1a6batYzL2Fau5vEPBQiaJMF/Jm+BYG99xS1n
	 McrMgsbWFkZN9BbHHqqeu3PCDL9Q4si8rvUlw1MxaYLCZi72uGO3etSPnJMyY0dKCd
	 DSfodEaSwwmNzocsgdmf+t5b66rIKPcU7a+gNugOhg4PiY2UJORl9WKgh7PJkD/hBs
	 EEqzqVn2LcAvA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 694A1841AB;
	Fri,  9 Aug 2024 15:25:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 818851BF31E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 05:02:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6CE5240BEF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 05:02:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ja7teagd2v90 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Aug 2024 05:02:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.92.63.147;
 helo=aus01-me3-obe.outbound.protection.outlook.com;
 envelope-from=hanguidong02@outlook.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7726740B9B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7726740B9B
Received: from AUS01-ME3-obe.outbound.protection.outlook.com
 (mail-me3aus01olkn2147.outbound.protection.outlook.com [40.92.63.147])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7726740B9B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 05:02:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ybxo7Nd2GaYpdLSzSroz5NJGYYsjfj8PHaFC3e8VL6KD5dsufPGoDQ/kyGGDZUh8+qtGBpMMe46kR3gTc5db7VT+4CSHIyFq6IkwMdVwXEjHcPriSvvI9pVrg7GdUm+oNuhC/JMG8YgDjPr1MSzj10NAB+cV4K3MaKEMRUJPz/4G/lqUF8G/HvltuOU8ZCjhFJpvIBMiW0+i1Bf4rRrzoo5KMOU1klQAABIdHT66xXuEV9Mv7pOTMf4IpbVuaB7NvBe7VTYnpaQpnD9qQHK95BzsNISvOBlRCcgm56HdaZ5uYRN3UvcQLtpVxsgPVPJyMSbMDllZYwu7dPXsnptoTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2IX1ZtgkzN6T/vddOia7abxKCAeYoaFk3fmvleLoVp8=;
 b=PY7jNwInHi8CxvbnXxw9BN9lnO2yObBEq0m7PajpiazLjrbp8m5UIdylFmB9K1FZ7jxpaaxO5Q5Kp2hctKPyLQzrGPydfxX1f9T76s6TtrmfMdRqYn9tP/RRM4Zltjl7BSS40WU63dXoW7PHJ9/wGkN7ROwjpE/mc502Ii3HaIibWNbkqAMXx6rCmpw1yGmfD09gxHegT+FrdJv1okkU2hp9jGcFBp9Pk+QWX7bplypIA6h4TxrXaX81gz1fhn4id9jNyWoowvtj2NBFLzWEIOsDT7oN2NnZsYW3oM0FFCxgGMwJUGuYSO1nqpx5pXx9OTS5VRKflTaz/763F1l+7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM (2603:10c6:10:297::10)
 by MEUP300MB0222.AUSP300.PROD.OUTLOOK.COM (2603:10c6:220:21b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.15; Fri, 9 Aug
 2024 05:02:31 +0000
Received: from SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM
 ([fe80::14bc:d68f:122:f4f2]) by SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM
 ([fe80::14bc:d68f:122:f4f2%4]) with mapi id 15.20.7849.014; Fri, 9 Aug 2024
 05:02:31 +0000
From: Gui-Dong Han <hanguidong02@outlook.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Fri,  9 Aug 2024 13:02:15 +0800
Message-ID: <SY8P300MB0460FB85729319189B40576FC0BA2@SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-TMN: [KrTxXt6Tru/OGH7rPfarzIJvaDDSMND+/7XsknawzzfYAW8HV8qt+uNMzu+cxrzd]
X-ClientProxiedBy: SI1PR02CA0043.apcprd02.prod.outlook.com
 (2603:1096:4:1f6::19) To SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM
 (2603:10c6:10:297::10)
X-Microsoft-Original-Message-ID: <20240809050215.5269-1-hanguidong02@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SY8P300MB0460:EE_|MEUP300MB0222:EE_
X-MS-Office365-Filtering-Correlation-Id: 3db97736-c0fa-456b-f5b0-08dcb8307939
X-Microsoft-Antispam: BCL:0;
 ARA:14566002|461199028|5072599009|8060799006|19110799003|15080799003|3430499032|3412199025|440099028|1710799026;
X-Microsoft-Antispam-Message-Info: 8KwtPhKJR/DJehe80alDGZ4K7Db5d74EmQsfMVmjj1JHvIh9Qg6cy6s9ycW4bazK3sXjtHdEKPRegfWt4UG38bDgUx8QYpFDzAVeayD0NDETNeyUk3e9CcYbc1gLQFWm4bMclzwgVYcPulmriprwPwSLiF6nWLgA3reujzwV2AgLrjWCjlJ9woFMdJUQfdGz60wCl/IH43eMxSkI5efes77O9NRTQWy+DVIMtnDoCfTzMNkrdjg33RnbBsXz8jY1RgbPHfoleOXr+VflHhWgKY8aGsHaT95SLCO6/Wx8UsqyfAZGTTysU4kA8ORIWIjZCKMe6KDYrhZPIFju6b2Rawa9YrFiplQJl+MBsUUd/BRFeFRTTtI5Cx7OhYuOQY5obRpT7A0Jm1VWgdxMx6vQOy1gUUbfvI6Xmcl9e6Ru15SCoN6qkXrPWw+ML8T15T/fPFLlCN46eMk+5knsikUQamsMib5Oe+fOvV2IshfH0KDJji0N9u4grDUWgrrVis0SJdGurN0Kw5qnhETZc2DXR+n1EDJOanoLdf4S1YydIAGCX2MclaXHWQ6kHK9JPrS4l8bnCK/TKzcSa/p8UHHujhIl8VQ+5H8efQbdA2lc1VN3vKw/HYKBWq2jOzTC9zxXkXavDQb5euZnpN6+q+r3XZasU0HfhYTY5FRPRB1Yjp9QbmgMEqoaHxaSVtDpOsJMWsCHWsdN72ZbWKhIwc700f1wIFkHBKDjfJP0xPW76C4=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fO33d8qap59/yJ9K/9C3lGtgEVV/64pZAMzsMhoMl9GeYJDbU6SaUkN2Tmqo?=
 =?us-ascii?Q?DC2kqKgq3CVShYqLKv/3VI8ypLxJ3GVwF6G6u0eeWcS8KXmgEXTNB73rzy18?=
 =?us-ascii?Q?FRW0aZlMGz3aeis9+ORJUD7wonVDEIu0sTkNaU+FjLooFwcfIYIZTqbcyGMx?=
 =?us-ascii?Q?pPSvd34DluQ40B3sOUNSIimfOhRFMvBRx9iZh4K+e0vCJjBWPapFE/v2fSR/?=
 =?us-ascii?Q?Fl9oAnGOH/Nx9frJApFVxYViwSJP6MuMcS8ryEOP0qmt9jZmz+/cojiVzhBL?=
 =?us-ascii?Q?khK/hI+W0AVn1j1CCOYn6zXqf0m/7XLuE8Cxu6pJby/i/p41TQmgjZQn2Oge?=
 =?us-ascii?Q?rD/D4Zary7x3RSN/B/PDIod6FiZPZmad6vkRW7j9+G/9ymQeIpv98gpl2wud?=
 =?us-ascii?Q?02ykoahNT+1nMqB9SSP0JXoS25Em2zip2DXRlk3KWtpSHF+fznJ81R/XTcBI?=
 =?us-ascii?Q?5SelVsB056VRHnK5/P/OzJzFYzmQGaDqbIT0Um3/BAlYfVEQP7oObmlSwqaw?=
 =?us-ascii?Q?Uca6kLXzhf5zwbxI88+BE4lW6eCsF3K3tMm8Fmw4IHGE0a/W/26A5Didlu8F?=
 =?us-ascii?Q?Ny0Bp+Rk8v7beJthVEMUUD6dO8Fcvn3k8sm2pyY7LiDWaqpd93g6lN4BPUv3?=
 =?us-ascii?Q?NjKD4xYpbNaVWn9g7H1W/Ld97b/MlNZ5CocJwfwmIBjZTc2Oyd72C7fV6/bx?=
 =?us-ascii?Q?ouwq9mTbGq/uJkpN+bM+kDVEj2Q7RuYE3gW/f1miCcbKazuEvUGM4YF84foC?=
 =?us-ascii?Q?ujWDEcL5+5g5reM65cUPEbalYDv1Q1Y6h+OFtDWLUGSYXPoxABGDLIehv5A1?=
 =?us-ascii?Q?h05ey2QFZaf5rgvnlKqeGibzg+YMEn6ieZjNEI1CyztiPfEa40laMsrXJWq8?=
 =?us-ascii?Q?eg/uSeu1SCySIEAbXcWbIoRAZIQTprT+zhq+YLZOeln++JEtR30ltR/MaOG6?=
 =?us-ascii?Q?6MgSrgD6nOu06TjwxJARxMZQTAnR9vylT+T1+/Adz7tQh098z1+INFBYuBdz?=
 =?us-ascii?Q?Fx4YnAYq0BqVgtHz6Etr7tKKPI8O6mrBW1ZdtoISg1dBk0puK/5ffsnheuKK?=
 =?us-ascii?Q?bZdybHet38oYA3ZHthArt4UwN4CceQ7n1A4qj1dZ9zr4/DraryCvYCBw0LVZ?=
 =?us-ascii?Q?MBPjepmq7ab3TqrIAobwl7xltvQidiX2sTnqyB55cmY+9eTgRiYcRxvgksLP?=
 =?us-ascii?Q?q3cGBtQdq7VEVYCx3WmfC44Utv17p8RH11NSxUtWdSYw9bHBt2vKA6Ch9P6S?=
 =?us-ascii?Q?AuOFuvH/YJ6R1uYoePetFUtooH3HAUN2a3pildzTFw+Y8WShqxyylrG06DN0?=
 =?us-ascii?Q?JG6AO48frP1qkoQL9RE9nIJe?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3db97736-c0fa-456b-f5b0-08dcb8307939
X-MS-Exchange-CrossTenant-AuthSource: SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2024 05:02:31.3881 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MEUP300MB0222
X-Mailman-Approved-At: Fri, 09 Aug 2024 15:25:35 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=outlook.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2IX1ZtgkzN6T/vddOia7abxKCAeYoaFk3fmvleLoVp8=;
 b=lzKEG6E1rkYA1eV8SZKJIW0rk+LnFnefp76QUxH6JUwhGzAfw8I5LFSGc8Y3jibCuLHcJKl8MIim00waZlSYPakvD6VEfSwWhUeeRPny4fK+zqCoNQpKCxVDbkRHepKXuJ0PADxFdNdJOBQg+QHZcwlEZtgY16SxFiHWcyZOBK0rLvmaokCp5GyqRtGGJS4zC34J4+02Pdv8M4GGs6QSU2spp7CarT3TfPVHd3/ArNyXzvtsMCwwxsR616mKpGReKDrUhEbAbfpS6kuxMmkqrbNx2EWGwA1EFmL2/ZKYWAlz4NSbUzZ/u9XjoBw6N0L7+KRLQP8qpfv6xbL9rYbKKQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=outlook.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=outlook.com header.i=@outlook.com header.a=rsa-sha256
 header.s=selector1 header.b=lzKEG6E1
Subject: [Intel-wired-lan] [PATCH] ice: Fix improper handling of refcount in
 ice_dpll_init_rclk_pins()
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Gui-Dong Han <hanguidong02@outlook.com>,
 baijiaju1990@gmail.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch addresses a reference count handling issue in the
ice_dpll_init_rclk_pins() function. The function calls ice_dpll_get_pins(),
which increments the reference count of the relevant resources. However,
if the condition WARN_ON((!vsi || !vsi->netdev)) is met, the function
currently returns an error without properly releasing the resources
acquired by ice_dpll_get_pins(), leading to a reference count leak.

To resolve this, the patch introduces a goto unregister_pins; statement
when the condition is met, ensuring that the resources are correctly
released and the reference count is decremented before returning the error.
This change prevents potential memory leaks and ensures proper resource
 management within the function.

This bug was identified by an experimental static analysis tool developed
by our team. The tool specializes in analyzing reference count operations
and detecting potential issues where resources are not properly managed.
In this case, the tool flagged the missing release operation as a
potential problem, which led to the development of this patch.

Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
Cc: stable@vger.kernel.org
Signed-off-by: Gui-Dong Han <hanguidong02@outlook.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index e92be6f130a3..f3f204cae093 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -1641,8 +1641,10 @@ ice_dpll_init_rclk_pins(struct ice_pf *pf, struct ice_dpll_pin *pin,
 		if (ret)
 			goto unregister_pins;
 	}
-	if (WARN_ON((!vsi || !vsi->netdev)))
-		return -EINVAL;
+	if (WARN_ON((!vsi || !vsi->netdev))) {
+		ret = -EINVAL;
+		goto unregister_pins;
+	}
 	dpll_netdev_pin_set(vsi->netdev, pf->dplls.rclk.pin);
 
 	return 0;
-- 
2.25.1

