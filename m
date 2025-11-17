Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A602DC65303
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 17:38:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5618E8087B;
	Mon, 17 Nov 2025 16:38:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e_cnJs2xDAHT; Mon, 17 Nov 2025 16:38:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 958A380ADD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763397489;
	bh=eJW/BJSUER7yDRFWuqOyy4P1sbrna1wpM/5mFRdaUvs=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TZP95/R8q92RBHDpGWsVefcSOFgksEtYcG5ALWz+LFsDoCRjqXqG9DJiUoTNigiOB
	 vs80IK/m5ezluuKx/wDbc2WLid/AOFkuXHinf4Q/IcFlkcpgDjY7NfgyFwcRKByvDn
	 ykDHKYOkBESwmmAepgZbwciZiHL5XuI9dvkjfrQ2tmVw5oivf1rNs9gP1wGzIdp2Bh
	 uAjDbYDHu/BK+5r3z/CC5uHSNVZc+trX3lYTlPm4CnYcs3UIZxdm97o3V1a7PoNV+3
	 Tj84I/Tbp8ZOXZeiGtK7HnY0b0DAWgfAVIcRcGQKeOHTQ8LPGFlOCqA4iuTbFZSPAS
	 j5IkW6P+29siA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 958A380ADD;
	Mon, 17 Nov 2025 16:38:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8E979D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 16:38:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 79676606F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 16:38:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q0_wAJxpzrLH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 16:38:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B6039605F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6039605F7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B6039605F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 16:38:06 +0000 (UTC)
X-CSE-ConnectionGUID: f7cg532iQ1uSETdc/efLPA==
X-CSE-MsgGUID: uUaSH2rARS6QYV6UZfQWcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="76864589"
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="76864589"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 08:38:04 -0800
X-CSE-ConnectionGUID: UD1KU93VQN+K//XhmGVk3g==
X-CSE-MsgGUID: tHWz94AzTB+7nWeBIrdkDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="190734093"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 08:38:03 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 08:38:02 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 08:38:02 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.56) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 08:38:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=URsZl9Q+/99vfhtox7Fe+cIVvt2SWSFQCOjaekX4E8S5RrxSMxAX/Iw3dGX+FW3OVJM7xfoJBvxZylx3m3/j7pt7kOfI1nzOLndybcb+VpnZ0NwNJh+/eQul1nkIFbmpMz2ZL8eJxd3KDrO1CPB7H5Xv1o2QiTJd0Y/MlZ6iFfAw//VThD11mvzO6k3Yt5YWdME91DDJu19bnhLI2wtfOz+vMxnnNmHMoK8XMwEBhsI4L2i3nnE5oVaFg4rN9eOIAk7YzWTQQHuAUuK5wU0VU1f41ZwoJu+RhuQ+srjpMrJqPl5KSaD6+j2wuUD4D4bqA6t38wGde0IMXlKX3E5RFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eJW/BJSUER7yDRFWuqOyy4P1sbrna1wpM/5mFRdaUvs=;
 b=EQY8GvpRqJ6TSaybapo8fqXXPsplpgz8XWDArT/xf3NSHROZOFZorgSJqREC3rRM/XI7ma/W7NxNMPmoFK9q/G/6fcPOyVMYNChZDjyGdjV/HAiQLY5wNCYc5qDZg4f5V+1mPHKCCdBQJtBCVsQLbRkpbrteobye1WzDdRGWliWHEBbAZHAUx2WeQqdh/TukpKnKOh2A2/1KNAnsn8FwlEvIdmYsecWBf+4dPpxVtYPp6M6drpA4gNPa0DFgYtHRHfJUHMMymdIiYpdqjePlwf1M06Ep6CX9K4cAEBRaWVzJNPqqAHgUnod4DcGKQHql39zPOXMhUaa5vnr/D10kqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SJ5PPF867D7FF5E.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::83d)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Mon, 17 Nov
 2025 16:38:00 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.9320.021; Mon, 17 Nov 2025
 16:38:00 +0000
Date: Mon, 17 Nov 2025 17:37:49 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Alessandro Decina <alessandro.d@gmail.com>
CC: <netdev@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>, "Alexei
 Starovoitov" <ast@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Daniel
 Borkmann" <daniel@iogearbox.net>, Eric Dumazet <edumazet@google.com>,
 "Jakub
 Kicinski" <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>, "John
 Fastabend" <john.fastabend@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Stanislav Fomichev
 <sdf@fomichev.me>, Tirthendu Sarkar <tirthendu.sarkar@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, <bpf@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kernel@vger.kernel.org>
Message-ID: <aRtPXS8haLNHu8H1@boxer>
References: <20251113082438.54154-1-alessandro.d@gmail.com>
 <20251113082438.54154-2-alessandro.d@gmail.com>
 <aRcoGvqbT9V/HtoD@boxer> <aRgysZAaRwNSsMY3@lima-default>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aRgysZAaRwNSsMY3@lima-default>
X-ClientProxiedBy: DU2PR04CA0199.eurprd04.prod.outlook.com
 (2603:10a6:10:28d::24) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SJ5PPF867D7FF5E:EE_
X-MS-Office365-Filtering-Correlation-Id: 60c36eb6-3198-4669-d536-08de25f7ab91
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?GpMhW6fbtiBjslc1tUgJsBd1k6SFruyLo9N/b33LMrpEJNY4enVgA/3xcAQB?=
 =?us-ascii?Q?JgNn5jiAbX7lt+fhcH3IbegRJr/BdnQlxm3ZlEDZ6pVdReDuhCDS9kWOs01Z?=
 =?us-ascii?Q?OBm7m38BDqJRPp6yWpD58JxEnsPe+KfLv7QsVFM1jABbRbFffJ1JeII1r9bY?=
 =?us-ascii?Q?Vr2TxBQCxoLCK2JnXqTUiSkl8QpKOavS84nbhIPA3VTWkL3fiMZO2OZrXnh3?=
 =?us-ascii?Q?7yZLtb1KSPix9cByJSbqvTNwALBiXFR3d9FyaajNAtsNHGfWrZedEdTTOXzh?=
 =?us-ascii?Q?QhiCMaIHFHMbA4muFN2JHs6oGDlvQnE0BZmB0WzPz2BQBXb3TqBZ3ptYqnMu?=
 =?us-ascii?Q?HIea0odfCSiR6c9JdcxsBwyo0yoiqSZlHUeH41Qu6GQyazLEmEu86aR8Llj9?=
 =?us-ascii?Q?1Q9EJ9f1J1avu767zK5VeGIRJHe2AVaOmCjmxkz7YicCSiopbxSCTULnWWon?=
 =?us-ascii?Q?H847xKG+nBd7w0gqsbxIiODgZxb8oMKH4zPuszN7AR2X5FyHQblVkhZtC/o+?=
 =?us-ascii?Q?e1doaAJBK5m3/7MpZWqUhPwue1GBCZyez7YeX0oiCAK7EDwtRaaL48dJSiKk?=
 =?us-ascii?Q?TKgUmQpcawsjmyx0dTN0OlcsPYE+2jN14md0UErI49byAx/91AqfCOWd3Euu?=
 =?us-ascii?Q?XwT08IEr9P+wgQOPt+IS/jRMp4PoZbBuIWF9knWNPjl2nN8qED+jrzOGwtTO?=
 =?us-ascii?Q?MvlaNwoF93HJqHN5AqE0sF1onIjQ/Ol73h2avq2hEnbeKQVqnmB80oqv5AZW?=
 =?us-ascii?Q?1a7cVcod5NWyM5j2JtB9FZJDh403nv4eBjLjgTkjAiWxVDQTUyqVCY99D5tP?=
 =?us-ascii?Q?6RJcHSPy6vj2fzu9mCv1jbtpov8yHcTEI2phliAYuP4p7+je84/ixmCOzr4v?=
 =?us-ascii?Q?rSZ04HY2sBr5Oa7rWL6DydLyyHVcd7OM1H1Xxuto12GsfLHHSBP1fJVD5Gd+?=
 =?us-ascii?Q?lVoGo/fykZlTXHb0OXvIcpCZWsDRHyUCLxxlqX3idfw49zdVmEHshK3XWtqp?=
 =?us-ascii?Q?Srg1YS7NrHYksfPrdXXD23BETCwJB/Kbo9yNKvu+52qR5iOSpYKI9hCBOwvG?=
 =?us-ascii?Q?VlpiZ5d2D2SouEGnG+5NvEqP29OMxwYPsJvalx5TUE5HgG+IbLfs+RT4c03P?=
 =?us-ascii?Q?ZLFDqiwMkSojpSl6COsL3puN62F7OFTIRp15K7VGSxt/rJNFQY4MSg9SaZsb?=
 =?us-ascii?Q?SRKPjGQlQBiwli12AkB6DAyh7p9A9YRs78CNKXPoWDYsbDuYIVsWdU271HmV?=
 =?us-ascii?Q?b63dGaiGsboiEd9VaTwSvahWurvB4JaResdh9xCQY05EmofQvHSUExcr0CgK?=
 =?us-ascii?Q?iC0Lv/ilwFz4nPZMhou3XNOBnapnIwkjJsVZK/WxOM5e+i1CvIHStaKJnp46?=
 =?us-ascii?Q?Rp8hcubgXBDHosYOITVszeYLV9rYCTlVfWBprVWQQFxDzAcrRajbde8yIkw5?=
 =?us-ascii?Q?nnSK4tQ7NnijPhT3Dc4tqJ6yJw00PugputZ6yFzzsKacQkuoy8HC7A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oSabFlWZkPFGDI2MBGJ/KLpJjv/1NxPW8UkIhcnCume7E8GFw6TxDg7JoS3T?=
 =?us-ascii?Q?v2ckS2zSUEl9js1iSN+laY/n6O/GmelxOQUIUoA+agRwveB4R+W+X0SOEwy+?=
 =?us-ascii?Q?0HEdX7WUvQKNAg8nqf/fDDcCO1H7+LfNQdqbepFAF6rMYUlIKNlsSYqzZFTK?=
 =?us-ascii?Q?xm4cagLc1LkYUMERwN+xxYnYR+H35SnjesHH8ZGIJk6dC6R1atsiI8B/Z0Xu?=
 =?us-ascii?Q?LoFVgADLEHTMdzrbvcmhmQrEf7XOyjr7wLUCjTp5tdqNKuJ7EfKoSj9POdpQ?=
 =?us-ascii?Q?tc2Ir7OaTMr7Spk9R//Hov0NtbZj2mz623cRkqK84o6tWRHJSroa/2PkC+OA?=
 =?us-ascii?Q?to+88t/EclzBDGPmoamphOfTwjIUU6mC6Wx6pYo5Fd28+xJyrnde378GMb3i?=
 =?us-ascii?Q?XNqWD4EhCSLYxdeb/i91Ftmu7JqMXpSOrV+oljPdES3a3fP1KTO60m5z7JAk?=
 =?us-ascii?Q?g8+OS63tBB0Fvvvt/kX9BKzsQsbGdmoNiQIFLy63o7H7y+hTXuFr+hfWZZ8Y?=
 =?us-ascii?Q?oXViDSa/U7WfdHSNCpZ5lxxRJGyGl5aQXHalJZSg8wYFR3rmWIib9tt8JA7n?=
 =?us-ascii?Q?A/nDXWqQTb+ijErMMbzcG1adkcKOdnj1MR9SHfsj4O2Og5V8ZGC9UcLREE2p?=
 =?us-ascii?Q?WRz2S8+taSIX9mog47EeHXIF8x2/5aZrCBMu8cRKjM3FLC0MDDVDqheOIxin?=
 =?us-ascii?Q?nB4f5Pfsfuc0LhJbAIAeCODPdFWA38EvPbzQU00Xb/04Xeyw2uQzAHl+Bi9E?=
 =?us-ascii?Q?WHtqBMUPw6PrE+qJMDpfkxyMgInVTJYb391psr537K2dEzdl2G7A5QKvAe8R?=
 =?us-ascii?Q?jpnG1M7HkF1QVw4RCDYmUTl3OQydpQTv1hJGCa+vSThPC1UQSUuHO9xHXVE/?=
 =?us-ascii?Q?tlktk1f1i6YRt1lgty8rmqrToJ8uoheU3iwCHwUrNrRbN3Ig+WeXHY2Bowmu?=
 =?us-ascii?Q?45c8c0wahJfOstFdnq4/SICUpmvqnAagtq+Or3Sv3h9aWoZGpFXyVpUXyiwY?=
 =?us-ascii?Q?bLl5nCjmkQoFIBWp8t7DNJdTtO28vHvCaKKvZVjauKkdwHhoX+tT8tfPhP9/?=
 =?us-ascii?Q?hjs5mmngGVTiQHCvt/tXEavI8yUo01Lq5p0ts33Wn3nlUaQ94LVitQZIFaH5?=
 =?us-ascii?Q?H/sPlyWj0RvCv6TR/pfeUstQ778IE6gXij5DkpUjGvhIkvAKdPSUJEgYro1f?=
 =?us-ascii?Q?NDYKuzk1oPlq3foi5oLgncaJzdkGwt4x6Etwnyj7ZfOu17q4nKrkFAy+u/h6?=
 =?us-ascii?Q?h7kaLsW6R5EMzHuCJg0l4zZrgHJPsOB6ctt7/aqM3vAXRx+bmQaGplVpDCnm?=
 =?us-ascii?Q?Kpu+I9b5REACJwJCv0Rbs//9lbeKX6Bvt9n3STlmp4yGfE7WRmygBxRJ423a?=
 =?us-ascii?Q?uytnSG10LrtcUPSNr8avybVR5MplH9S0LmpjQUnDCv936WzT68EHZ2YTTbfw?=
 =?us-ascii?Q?i19tRLRIONbi8uUFMDiv788JjY1zeIJfjzeHWcrvf++VwGzRqSscq2xg281i?=
 =?us-ascii?Q?2DAwMUzdN88QNnN5d4KGVTlNnThyiziSYcYXjOPzTIwfLkDaJZCME3ZqdVfF?=
 =?us-ascii?Q?ksvoCMXBcb3bkFN+kjpU1NL+NUjTNV09t0AWOPW27j0yCGfZgA7wOKOG9GAg?=
 =?us-ascii?Q?vQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 60c36eb6-3198-4669-d536-08de25f7ab91
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2025 16:38:00.2428 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JnxHNMgHOUG7ZUUoxwKGqoFN3suzyunGxEHlWtq56AvfpuJifMqvRzg218/kOhmKcdRqng17P39jlNHuklqOUVfWqwEdu2bI1gJwZ+UTdGM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF867D7FF5E
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763397487; x=1794933487;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZiFVpPeC1jOm218rjdwx/cbrtay36XB4cZJdaGyfa/o=;
 b=e+CMJi5NwEEJxgU4BQHtKZ3VQEDXuKnERijR3LnfRjn31utQlD0+9sU4
 DF52I66YchTmUcQTcOk2pB4k9HksmaygKmA0NsfxNasJj70q2mXJNSBEt
 p/Y75zP+yhocvoIoaBDSgYIpCcnXpvC41g/DDRILjX/lN6kTz7ORGPIpj
 v72o6a0TsYrwpsuKUjnVEFDLWg7FTXIqkPk2AAzFPCQJ+lUP6YFtRsQu5
 skFRxNfK6CphUIJeAWKenbEuCIb+cn1OBQiaFgkrufUFaLLfI3GvPF1KL
 nXGYS3jVqUc8S/Ulyu5rE7mDwJfDPNzOVgFGSWJXaSV0K5GbnSIJe7M2s
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e+CMJi5N
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 1/1] i40e: xsk: advance
 next_to_clean on status descriptors
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

On Sat, Nov 15, 2025 at 06:58:41PM +1100, Alessandro Decina wrote:
> On Fri, Nov 14, 2025 at 02:01:14PM +0100, Maciej Fijalkowski wrote:
> > Woah, that's not what I had on mind...I meant to pull whole block that
> > takes care of FDIR descriptors onto common function. That logic should be
> > shared between normal Rx and ZC Rx. The only different action we need to
> > take is how we release the buffer.
> > 
> > Could you try pulling whole i40e_rx_is_programming_status() branch onto
> > function within i40e_txrx_common.h and see how much of a work would it
> > take to have this as a common function?
> 
> Just before I send another rev, you mean something like this? 
> https://github.com/alessandrod/linux/commit/a6fa91d5b5d1cc283a2f1faa378085c44bda8b4a
> 
> My rationale for i40e_inc_ntp_ntc was that _that_ is where the bug lies:
> letting ntp and ntc get out of sync. By introducing a function that
> forces you to _have_ to think about ntc and explicitly pass NULL if you
> don't want to sync it, bugs like this become less easy to introduce.
> 
> That said I don't mind either way! Let me know if you want me to send v4
> with the i40e_clean_programming_status() change.

This revision is much more clear to me. Only thing that might be bothering
someone is doubled i40e_rx_bi() call in i40e_get_rx_buffer(). Not sure if
we can do about it though as we need to use ntp from before potential
increment.

...maybe pass rx_buffer to i40e_get_rx_buffer() ?

> 
> Ciao,
> Alessandro
