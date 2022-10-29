Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC2B611FBD
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Oct 2022 05:29:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 666524154A;
	Sat, 29 Oct 2022 03:29:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 666524154A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667014178;
	bh=xGBIsaMQXKY7BTt1Men0WTqCT/n6w6G0g4Nci37KnAM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ngouigqGyZWqRwHX91i/V5EQ9OEYsthzBGVWgFKypu4XFp0r+u344GDGp25FQ/n+s
	 6/8/q6WfCJ84kwxskfxBafe1iAvhg1ov4pOZhcyZaz+MFAkhtfeEiTqMcTrXrfRItH
	 0GLT+yf8fSYyaNO4AF0a9H8BeSL6+/C4nmTR9KcoqnKjF2QJahDN1zBRttKfdwGxSz
	 3v+UitG1PuWHhvBCbGHcQ386e/pjJe9fwWlZ0SNc5l/4Fejv9tEl/yS8HUHYSvCIQl
	 yoHwemVIDriXTHL1N4OZaNe+6N75aCubX1omTWD8fST8pN23qW2Fttw8fv8FvcS1j2
	 A2schbz8HFmoQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7CTkneTJh-Zy; Sat, 29 Oct 2022 03:29:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A589409AA;
	Sat, 29 Oct 2022 03:29:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A589409AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4A5751BF982
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Oct 2022 03:29:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 19B79409AA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Oct 2022 03:29:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19B79409AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VsdUCSXB3_2R for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 Oct 2022 03:29:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07DF8408F4
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 07DF8408F4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Oct 2022 03:29:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="296042359"
X-IronPort-AV: E=Sophos;i="5.95,222,1661842800"; d="scan'208";a="296042359"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 20:29:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="701956910"
X-IronPort-AV: E=Sophos;i="5.95,222,1661842800"; d="scan'208";a="701956910"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 28 Oct 2022 20:29:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 28 Oct 2022 20:29:19 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 28 Oct 2022 20:29:19 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 28 Oct 2022 20:29:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sv4dS/Zej7Ivt8Ba1AvkHlT6RUXM3zrBe3mY+N4tppjpSz07hVZHWrlXu/t8CKyiYmOP3ArJ3j7l4z5rsWIHMnlYv/c0uo+pq1Wifw2fun6ypH7hmOkbAoYYNG2e/j9RWvnsYbS1tzIpsVOPfO5y0UzRZqEcVmOiip3MUVhImf93UWI5SOxl7yIRP1DnlI7g2RmfttCHaJ2Nk8p+SmhaR1Q8IhceBQRpbUMmsuNMIRnzWbfscKo5uaTrbIhNtHLCUp796VIz0+dxz+//YzaVIouYPNQib75Q357edl2j+hQ9nvKvQzKXoZgyvEZmobFhPTrMoDTpuXV66iOqXeB+XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=poZWxthZlGjJ+9Awt6Y7J9kQIM+6iyET7Q3OtuxPUhQ=;
 b=XgQWj9Za3dzck27owgpvjBOOn3ZkwPm1ABAeLNzirbVVvGnKd6yWUEyxhLBumb1MAXaIRy3J7rXvxueU8xFJdO8zy0AOnR6sdyUTEh6lvCXd9iDMmggq6XHwkAvNXNcVQ19jyGvno0ccVQ20Bt6u2yXpAVFtNfEwP+XvCp9mZjypn3QBa0P3JLZnix0LO/Wf/ixpp1yu1rk62M7LDwaHlG01vStqlVHpVA899f2nJUQe9Aqo+5WYILsappMuvuPYyO8tg0EP9SRBgt7EI1hgk4VE9sdnf4r7YBKZVZKodIhNMi2t/I6qGSttkpKxmd08JN1uhIsen4lbRhbZhgmcVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MW4PR11MB6811.namprd11.prod.outlook.com (2603:10b6:303:208::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Sat, 29 Oct
 2022 03:29:12 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5%7]) with mapi id 15.20.5769.015; Sat, 29 Oct 2022
 03:29:12 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Kees Cook <keescook@chromium.org>, "Ruhl@www.outflux.net"
 <Ruhl@www.outflux.net>, "Ruhl, Michael J" <michael.j.ruhl@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v3 1/2] igb: Do not free q_vector
 unless new one was allocated
Thread-Index: AQHY4tOnBcedB+c6kEOS5ogdMhNIEq4kx1fw
Date: Sat, 29 Oct 2022 03:29:12 +0000
Message-ID: <BYAPR11MB3367C323EB65A6A52FD16769FC359@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221018092340.never.556-kees@kernel.org>
 <20221018092526.4035344-1-keescook@chromium.org>
In-Reply-To: <20221018092526.4035344-1-keescook@chromium.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MW4PR11MB6811:EE_
x-ms-office365-filtering-correlation-id: 69e5778e-d55c-41ab-0e21-08dab95dbfc2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PLC0Yey9l7Rs5zXyPrkN0HWzsBlaWo41yHkfyhqw/EsSqZytXOe9Au6EmtSqQiJKdQncvstcGx9MJ9vB8f6FE0UfT9Gu5yBpv6Ymd9mGWisvA9olllzv4VRvHrbptKocKH/gDZpkE6YjvQwS5w2/O1NKBe4hMcXVQ4namFjy65VRC/BUOkebS7JyXUKaOI29bgZQRZ0xTnCk3FRIF1bjY8Dkg9z7MUyJ6VIhUz5iahlsFXA/pCr5729U0c4bQcL6tM1inILnCEBdlh1LTyhSN/x/kpMyGYM+BvDoPTAsrVm7qrpqbYeAYlezReFIi3lKh4mJWFPoSbd5kPRAOA1MrxMhzGJH4lbrEVheY/QaX1Nl3T3yzw+fQGwHFAbt/3ONG99YMDDooWJZO5E5Da+tuhT7nTkbKN7lXIYNplTvzB7eAskDMn5pC91AdXdarhIM0tgP7SrlwxsBfZ6iDPYi5qDcV9o29BzXbw2vNGfIxedjKpa/oQCTATzy+4g7dKgVSXv3W95prsk/koR7FF53TcGuOfrMsiFV0wuJ/cbbixLlMiTr8RF4Q25D/BbHhhunzBSm1cQu1cZx8wQsgiCDsZYYqEqvfAMPsn58VS81OGBPmr+0uc7ebtZLTD/JkehA5Prort9p8PLdmS7Gb5Ok74K8bg9WHqfEfnk3SwGiVnuekWSLSXmG9K6DirIDR6rGFA9xxrh+F9QT7BxE9HvuL5gFQmGFbIeDuZsV85UYEv6d07kqaFJkf/wqX1vflTbw50Bug3xglWKE4LmYQYwlV279PBDPqiyS7j2lKnvBsGQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(346002)(396003)(376002)(39860400002)(451199015)(55016003)(83380400001)(82960400001)(7416002)(5660300002)(122000001)(2906002)(86362001)(38100700002)(33656002)(38070700005)(478600001)(186003)(9686003)(53546011)(26005)(71200400001)(110136005)(316002)(76116006)(6636002)(54906003)(41300700001)(52536014)(8676002)(66946007)(4326008)(66446008)(66476007)(64756008)(66556008)(6506007)(7696005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pQ5jeaWTcAYss8LRYj2pJw/UkHa7BiGefkqDfwfNG8XUqHQbWIMCefgxRRtO?=
 =?us-ascii?Q?uPQt5aGQjCNa7m7OJx42fCxgBbr4rydZjvtMbqZKFCE0dCX0kwax1ZdSo5d1?=
 =?us-ascii?Q?hAKgOlCV/j+IEqUqQ++z03piHmtIzyscMNpcS824ypet0bH3q2qZTuSZC7mg?=
 =?us-ascii?Q?lqcV37Ak7v9nxr3mEQ/g8HLGZm6vRmlxvDVTfcRZZE87znBYwvF//svLpRWz?=
 =?us-ascii?Q?RmIbiPYqdr/r/WoBcm44+in0Sw2PWweqRNljvX1j6bQBxkO2aKXsLD2eKZup?=
 =?us-ascii?Q?JGTzDmr1ib2fNy5ltLmcOpfazKHGzounWBwWlaVPSTlNtrjyWmqB3am8ia7S?=
 =?us-ascii?Q?k9jDac5NPC57ZByPyhD+Nt20q9vf+vV1+Y+q409HrX1E5dduwiq+RnRBvOGZ?=
 =?us-ascii?Q?KfhJZGuuddnaViIcTNgOeB5Ona1/Wop4ejcJyZVtYlOJgY1mo9ms2JkNRjOQ?=
 =?us-ascii?Q?VYgH9rJvNp3MTrYCNQNivbpiDVbPVrDrriK5LzbhOTMlQSDea4INzP8RZRe+?=
 =?us-ascii?Q?/C6S4yxLOnRIoyBfZAoGISxCmXROjYNG/GLEEwsN8t0iOC/kam5K6v3DHXvg?=
 =?us-ascii?Q?OWe3dDJmOBZJSNrTLHZJ3Xn0ZkKQcEjBPvi23vvoclwZvNeaOdZlVWfLjldk?=
 =?us-ascii?Q?Qal82vRa0+1sLAE2IoMFizNVveJms/mTplLhzGeXFz1kKi1vy5Z6XGWWSqYB?=
 =?us-ascii?Q?gBDaV8p/HzhKMeR4/LEzperui5qT+Np9LMssugget+Y2U0FR9DnqWN55epz4?=
 =?us-ascii?Q?P5zfxOQAv0jbdblcRgRPcYzb+DtNXVZktNfOFeXTSkdrPjNY/XGhd8/3Fs0l?=
 =?us-ascii?Q?YTl8BCiJI1fqFZI+FeELgaVAU1sK+GrddOf8kGgMJSkjFaOo6Tx95g1rb3yI?=
 =?us-ascii?Q?dn0FVov1Rd08ZID20pkDHz3Ku3fk2SyjWyn2b9FoaouyfKThKJ49GqRFUVEL?=
 =?us-ascii?Q?3Zfxt7IiCeffcGG4poU3tSM8kbTB7y++Fct7vFfe2O4pKJkVmA9kbAfSfEFD?=
 =?us-ascii?Q?IYUnpTbxn8WBEcmxOwntwvU3gYUY0Cv6zJUQNbvtxriOXcaXsWZxltm9mluO?=
 =?us-ascii?Q?TZi2zaoQ98mH97Qb/kQPcv/2GYo2DsuSBQgIo6A1j+rXPj2NkIGJE/UbX9KQ?=
 =?us-ascii?Q?nJma0vwr6J3Fi28tED5zm9rXe1baL+0P/YPey3TszaimwyrM4dlaws29QDhE?=
 =?us-ascii?Q?XDZSGMqncEbtQJuCTSRqFR9/VrfqiMldTEfx+5rcP5yfSDUhKzLLdIK4OOwI?=
 =?us-ascii?Q?jfLB/H1nFNFw7bDseCexQdddg6y+ObCqYugKGV5OvePMBeAtzY1XaQneERee?=
 =?us-ascii?Q?soiPmjcvDVKZm1blhST70gI1DZk50VPJUjHH5RU5C8C/3ketEJvu8aE95pgl?=
 =?us-ascii?Q?4yPiYGY1Us6ghHnpAIy2IpYkBCZRfnlhBNvs3t6HhSk0zij2yaeeiOrGigAW?=
 =?us-ascii?Q?5U+nbiBOKCIY1VYvN23MJxvcuewKZLNLJsmEbN/CWSO1QCIgRYYcxsu/5DHg?=
 =?us-ascii?Q?sziMqKUcsfk+IdHt9aYQrIa+ofSDvpaumszAPs8gSsOjHI/YTUKO0uO2YgWe?=
 =?us-ascii?Q?WzGFrom9b5UbDK4oidIdtHUzZggco7kjuUunxG2e?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69e5778e-d55c-41ab-0e21-08dab95dbfc2
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2022 03:29:12.6296 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jF8NpRKLwsS7a94/cKGxQ2DlR+KB4Rpt+XdRcP9nIgOtNF6IW34Fh1S+uAFyqIeWgA75ip4mAjipTo1Rtsu3QQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6811
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667014170; x=1698550170;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GaJYxwUBEA2zJ3GLXbvx8jrS4vekO5Zpf+fhR3xjkfc=;
 b=l5XQlPFnph8LMlnqYiTeCFl4dzfoKynBVgVnA31KOKg9CZ4oQgcarDk+
 T2bBF5QSXLyr9QPD/Ixyq51iq0dJdPWumm4TwYLYzTpJsZXssXrz8Ei2u
 gwmeQcG3K3+VcRfa8BmKp3KS4rLNUNhgLY7QM7P9lbJzGUO9+eHviNHI/
 XHDJSjuvxGj6NRn/kBLqIOF/WyTVLELcn93Z7Aegw8sarJWzwOwSP1LO/
 mrvrBFSK/wGZVsM0euHzCw4jbQGgHB+IzxWDz41vOa8wR51JX6LNxey55
 M+hWa3gahI4IyW3zLZlerfIYigiiS2+SZa3mkWN2P8Kl+60Tt6E4s6VnO
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l5XQlPFn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 1/2] igb: Do not free q_vector
 unless new one was allocated
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Kees Cook
> Sent: Tuesday, October 18, 2022 2:55 PM
> To: Ruhl@www.outflux.net; Ruhl, Michael J <michael.j.ruhl@intel.com>
> Cc: Kees Cook <keescook@chromium.org>; intel-wired-lan@lists.osuosl.org;
> linux-kernel@vger.kernel.org; Eric Dumazet <edumazet@google.com>;
> linux-hardening@vger.kernel.org; netdev@vger.kernel.org; Jakub Kicinski
> <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller
> <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH v3 1/2] igb: Do not free q_vector unless
> new one was allocated
> 
> Avoid potential use-after-free condition under memory pressure. If the
> kzalloc() fails, q_vector will be freed but left in the original
> adapter->q_vector[v_idx] array position.
> 
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Eric Dumazet <edumazet@google.com>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Paolo Abeni <pabeni@redhat.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
