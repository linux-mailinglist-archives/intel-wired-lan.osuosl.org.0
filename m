Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 925AF70C2B9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 17:52:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2271960B45;
	Mon, 22 May 2023 15:52:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2271960B45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684770725;
	bh=m9N6Ezp3ywO5rEgRM4aQ14Tg5cKegMA7aV6m+4pI9mU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G+hLVi3R0I4eQXmwW1NAZ4WCE06is4+eVyjAKjp1gaVcREeQ1sPHWC/fO97O3e5k+
	 KBBl5yGc+aUQb3pqhm28SItg2Rw10nHfgi9JlukOPZ5SMKLWEcTFvjmE/I83Ui/1BW
	 7YCPePtWEKllyb1493CJ/6HkaG6jkKtA+iUTcv65VEwLIWqNmn0fEcNhu1t9rbCaK2
	 WRvXh4w6azcgNPvxNgn5MmJSYps67Q7URPunAZPJgl3X2MpnQzn8Iw3i6QFLdB+8P5
	 IRn9yOCePoKGnLa/Ez2N0RpbpP9mjRxMI91Ect1OazSrLw5tUbWMM+lDduQ+f3gcUf
	 6NUcHnsTiOazQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7folH7Jxzp96; Mon, 22 May 2023 15:52:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 658C360B2B;
	Mon, 22 May 2023 15:52:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 658C360B2B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CDBE61BF393
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 15:51:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B1816403E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 15:51:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1816403E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 34vR9hbbT9vv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 15:51:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0FB64400A6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0FB64400A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 15:51:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="356188975"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="356188975"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 08:51:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="1033662618"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="1033662618"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 22 May 2023 08:51:53 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 08:51:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 08:51:52 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 22 May 2023 08:51:52 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 22 May 2023 08:51:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nhYpWzH2XSU9FtwgJFaEaLznQHi+i9Cw/eVV3C3clVA+Voky1ojkLqnsGvUm/I5yfuVgLYU25sh+a1r1qWChO+a5DmMsMfhrLMoumgJHuIc9aNg80munILb8NQb15mcud6n5ZIC2CrJxrwv06AFTxLaAqAGKE6FzWtEzWUqW+NQ8qjN6laeF/m6i8NPsrm8sNZkbXCRTPiu7QBku9Nu9AhoCLXTB1fylCdTT2cdKuHEZsAmbX8vYJIXRcopQujfG+kRdF/m7+59L0A+HvAB3Glm6oylEIigXKpkxUDXud7lIdvITGycWQB/S3IH1A++RB/dAlhPAmtSUKVfXGqTumA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=plr33/uDKxaE396F1mq1wreQLQO6kHYXajFmNz/zWng=;
 b=M/j4HlRa4VfcmY8ae8q/5INLEVVtxcJnVEg/uhgAazSJt0Ni2o9Pzmh5dC/6JFiU50kNVbh47Q9CyVwJKICyAXdKg9i9Vg+hQTct0Ck/5pL3+QwG90dtWy5xVaRccByXCp3T0CiEqs30AtvZYeO13jHUtv/crYjkhcZs2LTRV94+2bm2P3g0ZD9/DZtTM4aYfTrgl0b8cuz3mRUomthWMdQCk5yhVgGfmmU2SVGMiEShIp3A4fHzn5RK273O1yP2MMmoxsnzFsMp+KbVzvCa/Bhh3ez5N0esnIrxm2Bmmg/3wdtFx1GxxRC48okEoGckYc1VkYZUJ8ZTtMZZq5URJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5471.namprd11.prod.outlook.com (2603:10b6:5:39d::10)
 by BL3PR11MB6483.namprd11.prod.outlook.com (2603:10b6:208:3be::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Mon, 22 May
 2023 15:51:45 +0000
Received: from DM4PR11MB5471.namprd11.prod.outlook.com
 ([fe80::907c:ffaa:352a:8913]) by DM4PR11MB5471.namprd11.prod.outlook.com
 ([fe80::907c:ffaa:352a:8913%7]) with mapi id 15.20.6411.028; Mon, 22 May 2023
 15:51:45 +0000
Date: Mon, 22 May 2023 17:48:56 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
Message-ID: <ZGuO6Hk+NcdL9iwi@lincoln>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-10-larysa.zaremba@intel.com>
 <b0694577-e2b3-f6de-cf85-aed99fdf2496@redhat.com>
 <ZGJZU89AK/3mFZXW@lincoln>
 <094f3178-2797-e297-64f8-aa0f7ef16b5f@redhat.com>
Content-Disposition: inline
In-Reply-To: <094f3178-2797-e297-64f8-aa0f7ef16b5f@redhat.com>
X-ClientProxiedBy: FR3P281CA0139.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:95::13) To DM4PR11MB5471.namprd11.prod.outlook.com
 (2603:10b6:5:39d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5471:EE_|BL3PR11MB6483:EE_
X-MS-Office365-Filtering-Correlation-Id: 72eaca14-8226-4829-6ed2-08db5adc7146
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3mksmCR206p+BYotGJPrNI/NHga7xBKdjXGwFzBL+UNTnX2bVEEIn5l0V6S2Xj5O+I8yXIv04iix9fPmjE0iYGi5mNtly27KUfu4ZM8lKRO4U+hEL/FDF/b4Hm5/+sEQ9XaynIxchr/VA+Ez2KcVSeYHDFLAud28MCL2ijgYz2Mlhgu2f78lQB1/wy99XWcynuoh4oIFcUrFfDJsg6ageNBK6HtZ/avvw3WjP+BN91UiseqLR2KD4X6w3lzGSh9knWRzWPmrnIz1WNJlX9AR4Y3zn/Sfr5vPsmIV4f+Ij6JVy6YSJ7WPw22XZHfyiFP4EdjghkPMja4XhjKb/gSS43xpPWPacprh3lekXzo3MkpXEOnroz/FYvNjEjigINpdL4cHLwrstBQFHNpeYLIIqOKyGjAAJ2sUKQvTwhEL2fYwv7lf1FrnXdpWZlo8yMpTJCMu4yGHGlRnTv81zxosdHre274ltYc006Fc1/0TZ9oYKsZdGksN2IArL9vESPvClf/WewR6z2pc68WFuQtNfb7qEdxUVDrD7/g2bQV1XU9f5uHZ6x1w+NSQ3AFm0Dbfk+RdoatyXm3MCAOAKKkVrQoG4TW9W2KlMARXVcZ+AFE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5471.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(39860400002)(396003)(376002)(346002)(136003)(451199021)(33716001)(38100700002)(8936002)(8676002)(7416002)(5660300002)(82960400001)(9686003)(6512007)(6506007)(26005)(186003)(2906002)(83380400001)(44832011)(966005)(86362001)(54906003)(316002)(6666004)(66556008)(66476007)(6916009)(4326008)(66946007)(66899021)(478600001)(41300700001)(6486002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mpfnEw4kDHVRnRhsZjq4vG7xnXex5Db5lhHY7hDlQe17tkB+CN9iWAV0KbTh?=
 =?us-ascii?Q?k3wyykJkyohusrmujgRTCxQRHU3FEp2boni5hZJpkk1Fd9TZs2TSXXUsWjg8?=
 =?us-ascii?Q?zdyyJM6qc4Wl5DtFD4ApqxjufjDhE2lIw7loHGbXrvRLxFZdr8ZWF6UXV31h?=
 =?us-ascii?Q?E9vjCesxI2AShhiePROfJ0fUE9RJf3EcqOx6OpQeqTjA5o55Ds7pHSORhDvL?=
 =?us-ascii?Q?0hqIWj/N2kB5DUN0RWQ0cwhEdLYG8vwumDDwrmyq7Tu7SI2U2/hthtCbtil+?=
 =?us-ascii?Q?En0NI/bKdM+ycXrKMxZdIXC+G+bKjxZxIcTCZOOac/WaGTImv/dVX+RfboKL?=
 =?us-ascii?Q?cipylGuKCNyjchR3p5zMbvF5K0TMMEBEEbRkiFHcHPscjSgQHskn/M6n0nbx?=
 =?us-ascii?Q?E5e+rp899QDRYF2S4QarMLY6DM0VAoVfV7Lkb7tPestOrFpUyZuQx5F4Jj12?=
 =?us-ascii?Q?CJEPRVA9a9DPMPOuqivgD4CLBnbfqI9AocSdHmsSvzacIjznkHsVJiLgk/4X?=
 =?us-ascii?Q?OEQC1pVKjiN8QNgrX1LoRQ/rOrc5fn49c3viUvPFDPOVOhFT5gD+MfdgM5wL?=
 =?us-ascii?Q?iu3G3iyhG3oVa2hmW5GFftDtnhtMFxeopBnWnZQi5QtcCdEnF6zoyBIyjDB0?=
 =?us-ascii?Q?fQT5qxVBmas6Fp+wmjdayr6GzO8jT8kaye7qq7c+ewR/TOuUmlhUU/MnQOao?=
 =?us-ascii?Q?x5BncN4w7Q+8TGkDB8i+i3G4K2g6gzBBOXlH7jPLOYTibMgAbQkC5Avg+rnt?=
 =?us-ascii?Q?1rfRtRMBiMzZ8TEa9+uJHErGRuzUnEcHrL84CsYlKYWLeK+YNJ+KeBRjWPxj?=
 =?us-ascii?Q?qQ0D6K+nyNaJZJ6qsu4vEVJCzBAF5QdaOm24waidAvKzjFqnljY7QoJqrHoO?=
 =?us-ascii?Q?cJOeCQs9qeIA/xyA/VeqLVcqevS2SmZ1dCfJ23PHNMS0+ZBzzskvdGoLvHdy?=
 =?us-ascii?Q?5gCdlpf26KlXNp43VherSQla45kVBrBeST7IgfAB2xp9es+EFJZI+UmtJp9+?=
 =?us-ascii?Q?2W4hzXnw25TBv33Li3X2e4Y0Ak0YhVBlvQAyh/XOpHfBXCCrQzK1SbL5Z/y3?=
 =?us-ascii?Q?xZGZL5fmYtUo5FvRpFBIVte71n3r7iNT23vlklO13ArWvlJAfSm1hmcp5jmd?=
 =?us-ascii?Q?vZElAYHP2qOQE/daar6M6xS+NkB823pYtQJCrTLdy+0B6dZjaw9K/btEcXEf?=
 =?us-ascii?Q?JKVLa4Dxe1KdjNTeifArQKfe8eii89yxTH5ATOPadITEPdEZu4XplsJrQkTR?=
 =?us-ascii?Q?V6QdjeDvrn1xtl9Qf36lpiFIn66OTNt9S1E+VMTLtnv4LwvV53ee/fpeLVJs?=
 =?us-ascii?Q?fa+4jjjYQ5pvFDt7sdS+2ceDf9EMs6r1lJhzC3I9x+JkTb+WISVsMSe5A3FR?=
 =?us-ascii?Q?OSKjZipa+AFPVUaTMHMvAJtfl/S/TohipmQl76iLRXSMb27Zkz/+Hdsb8UyK?=
 =?us-ascii?Q?5uvS+5mffX52ABWHMBgz4z4fVUxPgE+EmVYPvItMkX+tUSI925ojUprj0KJ0?=
 =?us-ascii?Q?WoN0bP95bAygRRrpoAnFrsv0kp27+39ZELU9cjLgTGReKrS5BdZ9z60dRT3r?=
 =?us-ascii?Q?EDkat8xq4BhYW7+7ajUeVi1vKvr7U+lT9a2gBQzMkvL6z12vVoXBiT1fg+Rl?=
 =?us-ascii?Q?Dw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 72eaca14-8226-4829-6ed2-08db5adc7146
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5471.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2023 15:51:44.9567 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rtVSr/b9HbzYD8uh3oGT+VJ+QjUYV6Jil8j8jM+VKxnEpTtXQb7MYSGlzGEbyj395FjrOZ1uGoKmZjyLs67hteYw9iu0TW0nXvqRiWhgmEM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6483
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684770716; x=1716306716;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SYGptsEhj1a53jyc4n2DA9tPdqyCsALgoB4YLAJtDNc=;
 b=UYEYb1NGLInsSUsLPxSlHZ/8tqgKRYglFyO4HrQXPMdWlr7jLlQJli7t
 YqrSBQL/BHwvFyCdLxVuV49Xb+wgvQpKDYwP7K5tvaS0qoVzTiCyHertW
 p6vfnqFt5RuNAvLB7JI15PAHicdX8BwTt9l9A9hQEOA0rJXy/rdGB2TGL
 b2nTXTHZAQeeV99GeTrVJpzfoMilT489asCqpmCw3QtMGTOiZNeikPFQZ
 Hjrohnt3pyqAQ2K6rHN+m3LUe0haYsL7KhPUj1Fcj8tLi7McQKRv2Xu0t
 Lpy7G02u1gBT6DgClUwef6cDQHm7z19sWMMCqqfKhHMLddn9oSgWEhLLz
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UYEYb1NG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 09/15] xdp: Add VLAN
 tag hint
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony
 Nguyen <anthony.l.nguyen@intel.com>, Stanislav Fomichev <sdf@google.com>,
 Maryam Tahhan <mtahhan@redhat.com>, xdp-hints@xdp-project.net,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jiri Olsa <jolsa@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 22, 2023 at 10:37:33AM +0200, Jesper Dangaard Brouer wrote:
> 
> 
> On 15/05/2023 18.09, Larysa Zaremba wrote:
> > On Mon, May 15, 2023 at 05:36:12PM +0200, Jesper Dangaard Brouer wrote:
> > > 
> > > 
> > > On 12/05/2023 17.26, Larysa Zaremba wrote:
> > > > Implement functionality that enables drivers to expose VLAN tag
> > > > to XDP code.
> > > > 
> > > > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > > > ---
> > > [...]
> > > 
> > > > diff --git a/net/core/xdp.c b/net/core/xdp.c
> > > > index 41e5ca8643ec..eff21501609f 100644
> > > > --- a/net/core/xdp.c
> > > > +++ b/net/core/xdp.c
> > > > @@ -738,6 +738,30 @@ __bpf_kfunc int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, u32 *hash,
> > > >    	return -EOPNOTSUPP;
> > > >    }
> > > 
> > > Remember below becomes part of main documentation on HW metadata hints:
> > >   - https://kernel.org/doc/html/latest/networking/xdp-rx-metadata.html
> > > 
> > > Hint compiling locally I use:
> > >   make SPHINXDIRS="networking" htmldocs
> > > 
> > > > +/**
> > > > + * bpf_xdp_metadata_rx_ctag - Read XDP packet inner vlan tag.
> > > 
> > > Is bpf_xdp_metadata_rx_ctag a good function name for the inner vlan tag?
> > > Like wise below "stag".
> > > 
> > > I cannot remember if the C-tag or S-tag is the inner or outer vlan tag.
> > > 
> > > When reading BPF code that use these function names, then I would have
> > > to ask Google for help, or find-and-read this doc.
> > > 
> > > Can we come-up with a more intuitive name, that e.g. helps when reading
> > > the BPF-prog code?
> > 
> > Well, my reasoning for such naming is that if someone can configure s-tag
> > stripping in ethtool with 'rx-vlan-stag-hw-parse', they shouldn't have any
> > problem with understanding those function names.
> > 
> 
> Naming is hard.  My perspective is conveying the meaning without having
> to be knowledgeable about ethtool VLAN commands.  My perspective is a
> casual BPF-programmer that reads "bpf_xdp_metadata_rx_stag()".
> Hopefully we can choose a name that says "vlan" somewhere, such that the
> person reading this doesn't have to lookup and find the documentation to
> deduct this code is related to VLANs.
> 
> > One possible improvement that comes to mind is maybe (similarly ethtool) calling
> > c-tag just 'tag' and letting s-tag stay 'stag'. Because c-tag is this default
> > 802.1q tag, which is supported by various hardware, while s-tag is significantly
> > less widespread.
> > 
> > But there are many options, really.
> > 
> > What are your suggestions?
> > 
> 
> One suggestion is (the symmetrical):
>  * bpf_xdp_metadata_rx_vlan_inner_tag
>  * bpf_xdp_metadata_rx_vlan_outer_tag
> 
> As you say above the first "inner" VLAN tag is just the regular 802.1Q
> VLAN tag.  The concept of C-tag and S-tag is from 802.1ad that
> introduced the concept of double tagging.
> 
> Thus one could argue for shorter names like:
>  * bpf_xdp_metadata_rx_vlan_tag
>  * bpf_xdp_metadata_rx_vlan_outer_tag
>

AFAIK, outer tag is a broader term, it's pretty often used for stacked 802.1Q 
headers. I can't find what exactly is an expected behavior for rxvlan and
rx-vlan-stag-hw-parse in ethtool, but iavf documentation states that rxvlan
"enables outer or single 802.1Q VLAN stripping" and rx-vlan-stag-hw-parse
"enables outer or single 802.1ad VLAN stripping". This is in consistent with how 
ice hardware behaves. More credible sources would be welcome.

What about:
  * bpf_xdp_metadata_rx_vlan_tag
  * bpf_xdp_metadata_rx_vlan_qinq_tag

> 
> > > 
> > > > + * @ctx: XDP context pointer.
> > > > + * @vlan_tag: Return value pointer.
> > > > + *
> > > 
> > > IMHO right here, there should be a description.
> > > 
> > > E.g. for what a VLAN "tag" means.  I assume a "tag" isn't the VLAN id,
> > > but the raw VLAN tag that also contains the prio numbers etc.
> > > 
> > > It this VLAN tag expected to be in network-byte-order ?
> > > IMHO this doc should define what is expected (and driver devel must
> > > follow this).
> > 
> > Will specify that.
> > 
> > > 
> > > > + * Returns 0 on success or ``-errno`` on error.
> > > > + */
> > > > +__bpf_kfunc int bpf_xdp_metadata_rx_ctag(const struct xdp_md *ctx, u16 *vlan_tag)
> > > > +{
> > > > +	return -EOPNOTSUPP;
> > > > +}
> > > > +
> > > > +/**
> > > > + * bpf_xdp_metadata_rx_stag - Read XDP packet outer vlan tag.
> > > > + * @ctx: XDP context pointer.
> > > > + * @vlan_tag: Return value pointer.
> > > > + *
> 
> (p.s. Googling I find multiple definitions of what the "S" in S-tag
> means. The most reliable or statistically consistent seems to be
> "Service tag", or "Service provider tag".)
> 
> The description for the renamed "bpf_xdp_metadata_rx_vlan_outer_tag"
> should IMHO explain that the outer VLAN tag is often refered to as the S-tag
> (or Service-tag) in Q-in-Q (802.1ad) terminology.  Perhaps we can even spell
> out that some hardware support (and must be configured via ethtool) to
> extract this stag.
> 
> A dump of the tool rx-vlan related commands:
> 
>   $ ethtool -k i40e2 | grep rx-vlan
>   rx-vlan-offload: on
>   rx-vlan-filter: on [fixed]
>   rx-vlan-stag-hw-parse: off [fixed]
>   rx-vlan-stag-filter: off [fixed]
> 
> 
> 
> 
> > > > + * Returns 0 on success or ``-errno`` on error.
> > > 
> > > IMHO we should provide more guidance to expected return codes, and what
> > > they mean.  IMHO driver developers must only return codes that are
> > > described here, and if they invent a new, add it as part of their patch.
> > 
> > That's a good suggestion, I will expand the comment to describe error codes used
> > so far.
> > 
> > > 
> > > See, formatting in bpf_xdp_metadata_rx_hash and check how this gets
> > > compiled into HTML.
> > > 
> > > 
> > > > + */
> > > > +__bpf_kfunc int bpf_xdp_metadata_rx_stag(const struct xdp_md *ctx, u16 *vlan_tag)
> > > > +{
> > > > +	return -EOPNOTSUPP;
> > > > +}
> > > > +
> > > 
> > 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
