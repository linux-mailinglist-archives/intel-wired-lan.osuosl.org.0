Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F1C6E6D11
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 21:48:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 321FB8148A;
	Tue, 18 Apr 2023 19:48:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 321FB8148A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681847329;
	bh=7/Iaz5yf9WU7gnju6aBtUjL7HtRcsAqEggHnef2q96Y=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jvL9I7xopDLU7OXA+xqleZ7jZjM1K+Q7uLYKIeVQ/pKPOaUecJ5SJq2El0z0GJ/qE
	 bfgI9wLQH/mTGx4YnInzThRzE86XY68js76vnB8O3kw7P54zFlk7JMld9EZ/L6Q3//
	 rxgNrTlOgnupt39TQO0e15aSAW7gkhOlsSOauhMASzjPoU+PRpfRctBVUgn65vXyAd
	 yIAe1TEQGm6eMDUXcPCsvjEfMA5pQzg+Nz7xOPNT4/wOPtfl6cVwf7hcykxEVLokn4
	 7g2Kj47SkVdixapex+y1eKCnuoIBd2sv4h9glZyoE4MQGjq51G5pklJCmiudG4xy1O
	 r0UlyVWkzbYuQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1U183GBMbWnt; Tue, 18 Apr 2023 19:48:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D315581489;
	Tue, 18 Apr 2023 19:48:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D315581489
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0370F1C41B3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 19:48:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D902481489
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 19:48:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D902481489
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Cx493xLqGsO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 19:48:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F17F8146D
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2094.outbound.protection.outlook.com [40.107.244.94])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F17F8146D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 19:48:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LadBcvJAoR+kwXTKXteXWKG+I9dWWwpnCZBHtlcd7om60eRLwSAobl5Ocz0i948q/pg3mVs1s6TaPFZBM3+6RF0PfbR6sO5RqwS/OmAHX8X969HI8nNEiKxpyAk3+foTw4hGWnBbsznVwwOrpzvbEQwbIGI7fUsVS12Mqemgt/1j7DNqwOZkzF14dYAL6RPD/nnxOa0FpAiU74TK3mMiYskF2DDOcTxkiiTyJrPc43lOyEb0KeW1NMVHLxoo11phWvYUe/7yAnz56zdmnHZebdc9hxwE6fp9JKaxsavM8lO+9uIUIMKRKdL+02oKolGDL+qs589SB9BEH3e9RnnNRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sjh/7vV8T12BuDREuiPqryYb5bMmkXaUzx838nzXqYY=;
 b=FPiUS7+5Px6XfJs6oD52ot93tjoBMITRanRtEQmJUDBx4eLZVxnSUUmaCJe3XKZrg4cLa72F7VuoquKoBwoqaiv0qYPJrcWZbpdB8xIaqRGYhl7AcCJOiiRcYxfx/P3JR0ZFplY8nlKtaahYgyXwlcerGwa/EO4miHiuh0ZRBEqcDZVyqbZ2EIlMSHs4NPxGCqOs8MDkeS1dc/IDoKUunTPGXQv/6Fbc6+lKjONJdo7Dno+NAT8KzpA5P8m8rPS43Qgo2EyPmWS1RCVYocMMxsbXBfNNW21bwmEf9PMUP4sQsSGmTHtS5A3L5u/aReaXUUsu8rJS3XLlnHlmLdpGWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by PH0PR13MB5033.namprd13.prod.outlook.com (2603:10b6:510:90::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Tue, 18 Apr
 2023 19:48:37 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169%5]) with mapi id 15.20.6298.045; Tue, 18 Apr 2023
 19:48:37 +0000
Date: Tue, 18 Apr 2023 21:48:28 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Ding Hui <dinghui@sangfor.com.cn>
Message-ID: <ZD70DKC3+K6gngTh@corigine.com>
References: <20230417074016.3920-1-dinghui@sangfor.com.cn>
 <20230417074016.3920-2-dinghui@sangfor.com.cn>
Content-Disposition: inline
In-Reply-To: <20230417074016.3920-2-dinghui@sangfor.com.cn>
X-ClientProxiedBy: AS4PR09CA0008.eurprd09.prod.outlook.com
 (2603:10a6:20b:5e0::18) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|PH0PR13MB5033:EE_
X-MS-Office365-Filtering-Correlation-Id: fd7398a1-2e25-420f-4d2b-08db4045e5f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ashAf0OqN7zrEOELFp8zMUUTP/Wgm86heg1BS533Jz9SqlgFXSb6GWhkfE1HAfbY5N5E5MOYqYgUUCMqL+LkH2NR1R1XXUWZYUYF6bty//GGiZxBOG30SWvEfFK0v/go4gTWvu5ax86s0+26Xqc5o80PC7Gb1CbOn70NKD55BVhXKO2AZVi+mo2wAu9XE90tzm0qEMG7CVLNAe/4zvI2KYhvO0HQfWaOUny16r1kFrkOHSKwxQFlOa5bsibM1u5YB7G5CaKxOlZmh/AW65OKnZf9wPdE3HRvWtTpvrmj2cPLU/Mf0A1x73AaXb3zQvyoVydkxw13F1FNIMWio3dxYU/fBdqxCRG6eO/keSbql3IEt2wJxFmwWPWuDNHoGOpFYL+0x5sMO+UiHM9349rlDHV80iyGPWHSYhXNKznKbY70gkija6eSfFZrpn6lWnDFLPBK1qaOAv+isvhmVlWj0tzFuk0pYr63+i68fh0s9sijBhKxoNBmYrpVD8v8ahtXcqqVc1Huf6rc+9CxasVjR+vwDiKzg6xDozcv6jCUItlm/XdK4RLuP2l/TnCX+vdPVzCOnhMD1/pnU8XnIZ1VW+A/SSBlw9bbKEGfx5RDr6SMrMxpwtZ/crAdXyjMXwS2nsJNGt0Y1CqaNB8W8FDWZw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(366004)(376002)(39840400004)(396003)(346002)(451199021)(8936002)(38100700002)(36756003)(8676002)(44832011)(7416002)(2906002)(86362001)(5660300002)(478600001)(6486002)(84970400001)(6666004)(186003)(2616005)(66946007)(6506007)(66476007)(6512007)(41300700001)(316002)(83380400001)(6916009)(66556008)(4326008)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?05sRjgflEChtJOLnvLVYQCu1kCkMgTydgwa3lzI5Uq8aRscC8m9+Ya0XkNVe?=
 =?us-ascii?Q?eM4Lm2hIQix5dgK7V1iwC9XbL/+6kA+76JsXL6jOI//C/zMaCPN8Ft4SFfOK?=
 =?us-ascii?Q?Ceo8Nfpx84LO10lJ0opn9ownjhiTH7gWMrxheJbo7EKm+Jlf6Nn2Ud/+mzzY?=
 =?us-ascii?Q?sycqeFOEZMQFVwezq0VTMuLL9ZrwgNoduvtqg5pygd06ugottlX8diERYwjU?=
 =?us-ascii?Q?p1XaowS1RnMO5HQ7mn8RG6Susd1JVrmrckRC04dAti9nHjmNkq4N6zq7gTjc?=
 =?us-ascii?Q?vW09lkizVkyLdKsKPf6pIR3EhO9eWFLbWkqy8jgRwDHsURYYVvZqsYZLLjwf?=
 =?us-ascii?Q?sNV4A9pFBoj06FizJDBsQi52YBsbN4hE8wZ548VYkpP6DMMWhrKfNS+U5aGr?=
 =?us-ascii?Q?YAC5QKkaKFC7XLcxJwU/mqRCnGzSqBOJpD2/M4t6ZQdXUCdXfx268yEMzGJR?=
 =?us-ascii?Q?/RwwIobmbjieau414bazQsq9+dfHLhgte39lr37LlOxCccLkK18xMAWhAlVP?=
 =?us-ascii?Q?Wm4vk9YTWfLyCCMo8i9iRcgNrtLaoUl/i8t2KOJvOXq9jDePZXwHS+aJ4yX4?=
 =?us-ascii?Q?Y5lAvEiuGktUdbdckE66ALEfRYE3jsA3fDZ98w7mmWRReDnFxVeGknJ5R8b6?=
 =?us-ascii?Q?8yyfmzk0Gjpf3KSyStk1cdAhDZ4IYR0GFpBlylv9z0APJyXIN0yk/VLfid2U?=
 =?us-ascii?Q?f1Vwlyq/a3Ab888VKbkn8TIUXYYcZdeTOkUTkwhV4cCOKV7i67CoYS0NZhsE?=
 =?us-ascii?Q?AiSpjH7doLHI4LGtOGgum9rHZhMEZL+M3WMoqMQmB09nqjddt+EPe+niMsAf?=
 =?us-ascii?Q?+Mm0i0rLP6I+AUnW/rDSynbzW+tjlloaNueW7pqADsS9ovl6Yp6LpCC6ZCw3?=
 =?us-ascii?Q?nihXmscBLApoL5qFhq+WnVzMEeoXd8c27VE9kzs8dEW75iJJt0U7dQQgIwQ8?=
 =?us-ascii?Q?jFOSX20BS9oqJUrv2Mf9DtJviPXl6ODhASPgN+DXGfPywygjmmtJJkk+2gFH?=
 =?us-ascii?Q?hu0KBfe6DNwZ6HH4KgL8ji6Y3+mPOh4BaZe2yP91BURGC3zvzugTP4znv84f?=
 =?us-ascii?Q?dO5Cutuc+Np87mYG1xMWo5fpSN5ujTlmdxKv1qb5U0nysgWoNvnLlKsKGNm8?=
 =?us-ascii?Q?mXdsrkuPIARbf6CXGrD3s1s+brUp3qrreifLu/S8GxSvf1yOfqSyXYtdi0OA?=
 =?us-ascii?Q?jt+EFcwBhBxpCj06MzgUKE2wb5ShBlmS1SpUnHAvM8qA0ywmjfSGFCIUlND3?=
 =?us-ascii?Q?URWJ88Z6O+yIeBq0cGJw8gmk56UzqGfeKUMjdyJ1YJlyPZTA90WUjlWdfvGu?=
 =?us-ascii?Q?LfROOvKB+JHxMPAd51EMnnw4AF++0hpqIozl4ktWcwnFBQJ/dQr6ch6EiegF?=
 =?us-ascii?Q?Xj8xw38KA2Y4goyIgnCXXKtsg0LUkuhHrXsGcAok5sRSnF3s9LEwekUv6cNy?=
 =?us-ascii?Q?uOLOV1mrdS10C/wZWdkuRMsnm8kuAIPf676eF1LT1IwnsobpREknnskWqzaX?=
 =?us-ascii?Q?qxcIuBuh/ghrn4eV7JhJaFNejkJ5uQWKSWdX4rphDbRkeMe4m5eLyvbavs2A?=
 =?us-ascii?Q?d2hmlwBQDBngnnGONFo1uJ8J35PpkdMOQobg/w14jI0STVDBpGmQbF/nFNuA?=
 =?us-ascii?Q?E0OcD5HE01MlICOiH6b9JbtZVMnDurHNkhG/ydk9YhNaOOenp3M9YJNKrGTE?=
 =?us-ascii?Q?n+/DDw=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd7398a1-2e25-420f-4d2b-08db4045e5f8
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2023 19:48:36.7886 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6ynJzYHCp22qOuBmqBHkZAQkWfy04mwGDhaPNZfsQ25m70S20B/arrrbzPm4gbZWmmuofWZO8yvaiB/oxS1MFWmnglYFCuKHvFn1aCEieAs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR13MB5033
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sjh/7vV8T12BuDREuiPqryYb5bMmkXaUzx838nzXqYY=;
 b=cglUImMeY2o87AmIGgohkO6esaeVyz62fD7jUYky0atBi0NbXw5UVh9f+QaI5p/OGlKF95ygbQe4ok3d6O3r2D/1Gjc39wRT2qzfbcetkQqFzOtkdj4pgJQUoLaCy9Dgia0lXQfq/8b4USorgHPK07hUxGCBdDl7c4+kmeU9Dpw=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=cglUImMe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [RESEND PATCH net 1/2] iavf: Fix
 use-after-free in free_netdev
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
Cc: pengdonglin@sangfor.com.cn, keescook@chromium.org,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com,
 huangcun@sangfor.com.cn, linux-kernel@vger.kernel.org,
 grzegorzx.szczurek@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Ding Hui,

On Mon, Apr 17, 2023 at 03:40:15PM +0800, Ding Hui wrote:
> We do netif_napi_add() for all allocated q_vectors[], but potentially
> do netif_napi_del() for part of them, then kfree q_vectors and lefted

nit: lefted -> leave

> invalid pointers at dev->napi_list.
> 
> If num_active_queues is changed to less than allocated q_vectors[] by
> unexpected, when iavf_remove, we might see UAF in free_netdev like this:
> 
> [ 4093.900222] ==================================================================
> [ 4093.900230] BUG: KASAN: use-after-free in free_netdev+0x308/0x390
> [ 4093.900232] Read of size 8 at addr ffff88b4dc145640 by task test-iavf-1.sh/6699
> [ 4093.900233]
> [ 4093.900236] CPU: 10 PID: 6699 Comm: test-iavf-1.sh Kdump: loaded Tainted: G           O     --------- -t - 4.18.0 #1
> [ 4093.900238] Hardware name: Powerleader PR2008AL/H12DSi-N6, BIOS 2.0 04/09/2021
> [ 4093.900239] Call Trace:
> [ 4093.900244]  dump_stack+0x71/0xab
> [ 4093.900249]  print_address_description+0x6b/0x290
> [ 4093.900251]  ? free_netdev+0x308/0x390
> [ 4093.900252]  kasan_report+0x14a/0x2b0
> [ 4093.900254]  free_netdev+0x308/0x390
> [ 4093.900261]  iavf_remove+0x825/0xd20 [iavf]
> [ 4093.900265]  pci_device_remove+0xa8/0x1f0
> [ 4093.900268]  device_release_driver_internal+0x1c6/0x460
> [ 4093.900271]  pci_stop_bus_device+0x101/0x150
> [ 4093.900273]  pci_stop_and_remove_bus_device+0xe/0x20
> [ 4093.900275]  pci_iov_remove_virtfn+0x187/0x420
> [ 4093.900277]  ? pci_iov_add_virtfn+0xe10/0xe10
> [ 4093.900278]  ? pci_get_subsys+0x90/0x90
> [ 4093.900280]  sriov_disable+0xed/0x3e0
> [ 4093.900282]  ? bus_find_device+0x12d/0x1a0
> [ 4093.900290]  i40e_free_vfs+0x754/0x1210 [i40e]
> [ 4093.900298]  ? i40e_reset_all_vfs+0x880/0x880 [i40e]
> [ 4093.900299]  ? pci_get_device+0x7c/0x90
> [ 4093.900300]  ? pci_get_subsys+0x90/0x90
> [ 4093.900306]  ? pci_vfs_assigned.part.7+0x144/0x210
> [ 4093.900309]  ? __mutex_lock_slowpath+0x10/0x10
> [ 4093.900315]  i40e_pci_sriov_configure+0x1fa/0x2e0 [i40e]
> [ 4093.900318]  sriov_numvfs_store+0x214/0x290
> [ 4093.900320]  ? sriov_totalvfs_show+0x30/0x30
> [ 4093.900321]  ? __mutex_lock_slowpath+0x10/0x10
> [ 4093.900323]  ? __check_object_size+0x15a/0x350
> [ 4093.900326]  kernfs_fop_write+0x280/0x3f0
> [ 4093.900329]  vfs_write+0x145/0x440
> [ 4093.900330]  ksys_write+0xab/0x160
> [ 4093.900332]  ? __ia32_sys_read+0xb0/0xb0
> [ 4093.900334]  ? fput_many+0x1a/0x120
> [ 4093.900335]  ? filp_close+0xf0/0x130
> [ 4093.900338]  do_syscall_64+0xa0/0x370
> [ 4093.900339]  ? page_fault+0x8/0x30
> [ 4093.900341]  entry_SYSCALL_64_after_hwframe+0x65/0xca
> [ 4093.900357] RIP: 0033:0x7f16ad4d22c0
> [ 4093.900359] Code: 73 01 c3 48 8b 0d d8 cb 2c 00 f7 d8 64 89 01 48 83 c8 ff c3 66 0f 1f 44 00 00 83 3d 89 24 2d 00 00 75 10 b8 01 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 31 c3 48 83 ec 08 e8 fe dd 01 00 48 89 04 24
> [ 4093.900360] RSP: 002b:00007ffd6491b7f8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
> [ 4093.900362] RAX: ffffffffffffffda RBX: 0000000000000002 RCX: 00007f16ad4d22c0
> [ 4093.900363] RDX: 0000000000000002 RSI: 0000000001a41408 RDI: 0000000000000001
> [ 4093.900364] RBP: 0000000001a41408 R08: 00007f16ad7a1780 R09: 00007f16ae1f2700
> [ 4093.900364] R10: 0000000000000001 R11: 0000000000000246 R12: 0000000000000002
> [ 4093.900365] R13: 0000000000000001 R14: 00007f16ad7a0620 R15: 0000000000000001
> [ 4093.900367]
> [ 4093.900368] Allocated by task 820:
> [ 4093.900371]  kasan_kmalloc+0xa6/0xd0
> [ 4093.900373]  __kmalloc+0xfb/0x200
> [ 4093.900376]  iavf_init_interrupt_scheme+0x63b/0x1320 [iavf]
> [ 4093.900380]  iavf_watchdog_task+0x3d51/0x52c0 [iavf]
> [ 4093.900382]  process_one_work+0x56a/0x11f0
> [ 4093.900383]  worker_thread+0x8f/0xf40
> [ 4093.900384]  kthread+0x2a0/0x390
> [ 4093.900385]  ret_from_fork+0x1f/0x40
> [ 4093.900387]  0xffffffffffffffff
> [ 4093.900387]
> [ 4093.900388] Freed by task 6699:
> [ 4093.900390]  __kasan_slab_free+0x137/0x190
> [ 4093.900391]  kfree+0x8b/0x1b0
> [ 4093.900394]  iavf_free_q_vectors+0x11d/0x1a0 [iavf]
> [ 4093.900397]  iavf_remove+0x35a/0xd20 [iavf]
> [ 4093.900399]  pci_device_remove+0xa8/0x1f0
> [ 4093.900400]  device_release_driver_internal+0x1c6/0x460
> [ 4093.900401]  pci_stop_bus_device+0x101/0x150
> [ 4093.900402]  pci_stop_and_remove_bus_device+0xe/0x20
> [ 4093.900403]  pci_iov_remove_virtfn+0x187/0x420
> [ 4093.900404]  sriov_disable+0xed/0x3e0
> [ 4093.900409]  i40e_free_vfs+0x754/0x1210 [i40e]
> [ 4093.900415]  i40e_pci_sriov_configure+0x1fa/0x2e0 [i40e]
> [ 4093.900416]  sriov_numvfs_store+0x214/0x290
> [ 4093.900417]  kernfs_fop_write+0x280/0x3f0
> [ 4093.900418]  vfs_write+0x145/0x440
> [ 4093.900419]  ksys_write+0xab/0x160
> [ 4093.900420]  do_syscall_64+0xa0/0x370
> [ 4093.900421]  entry_SYSCALL_64_after_hwframe+0x65/0xca
> [ 4093.900422]  0xffffffffffffffff
> [ 4093.900422]
> [ 4093.900424] The buggy address belongs to the object at ffff88b4dc144200
>                 which belongs to the cache kmalloc-8k of size 8192
> [ 4093.900425] The buggy address is located 5184 bytes inside of
>                 8192-byte region [ffff88b4dc144200, ffff88b4dc146200)
> [ 4093.900425] The buggy address belongs to the page:
> [ 4093.900427] page:ffffea00d3705000 refcount:1 mapcount:0 mapping:ffff88bf04415c80 index:0x0 compound_mapcount: 0
> [ 4093.900430] flags: 0x10000000008100(slab|head)
> [ 4093.900433] raw: 0010000000008100 dead000000000100 dead000000000200 ffff88bf04415c80
> [ 4093.900434] raw: 0000000000000000 0000000000030003 00000001ffffffff 0000000000000000
> [ 4093.900434] page dumped because: kasan: bad access detected
> [ 4093.900435]
> [ 4093.900435] Memory state around the buggy address:
> [ 4093.900436]  ffff88b4dc145500: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [ 4093.900437]  ffff88b4dc145580: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [ 4093.900438] >ffff88b4dc145600: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [ 4093.900438]                                            ^
> [ 4093.900439]  ffff88b4dc145680: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [ 4093.900440]  ffff88b4dc145700: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [ 4093.900440] ==================================================================
> 
> Fix it by letting netif_napi_del() match to netif_napi_add().
> 
> Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
> Cc: Donglin Peng <pengdonglin@sangfor.com.cn>
> CC: Huang Cun <huangcun@sangfor.com.cn>

as this is a fix it probably should have a fixes tag.
I wonder if it should be:

Fixes: cc0529271f23 ("i40evf: don't use more queues than CPUs")

Code change looks good to me.

Reviewed-by: Simon Horman <simon.horman@corigine.com>

> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 095201e83c9d..a57e3425f960 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1849,19 +1849,15 @@ static int iavf_alloc_q_vectors(struct iavf_adapter *adapter)
>  static void iavf_free_q_vectors(struct iavf_adapter *adapter)
>  {
>  	int q_idx, num_q_vectors;
> -	int napi_vectors;
>  
>  	if (!adapter->q_vectors)
>  		return;
>  
>  	num_q_vectors = adapter->num_msix_vectors - NONQ_VECS;
> -	napi_vectors = adapter->num_active_queues;
>  
>  	for (q_idx = 0; q_idx < num_q_vectors; q_idx++) {
>  		struct iavf_q_vector *q_vector = &adapter->q_vectors[q_idx];
> -
> -		if (q_idx < napi_vectors)
> -			netif_napi_del(&q_vector->napi);
> +		netif_napi_del(&q_vector->napi);
>  	}
>  	kfree(adapter->q_vectors);
>  	adapter->q_vectors = NULL;
> -- 
> 2.17.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
