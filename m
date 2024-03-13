Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 409DF87A218
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Mar 2024 04:55:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 987FF818C9;
	Wed, 13 Mar 2024 03:55:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 65dxQH5Qil8e; Wed, 13 Mar 2024 03:55:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98ABE8144B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710302144;
	bh=TZWFk7vUAdO+r361ZqPYMsYXm9pmonCZ83L6anD7K2M=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TDvFq9ck+Vlg8Ea9iYMD9w/zuMTqcbCKmqQq6VxRSIxWkoh/BI0iBsqCsdaL2GgZF
	 wJc7/4T7muqxAs88BieYU9xlj0DFiM/9mzti4EjOI06eh+DBUv5cMHu6VwFOyJdGOL
	 pS21ZCaca/FHgFU2AGG9F8qMsKSWtq/3/+MEEmtjtuxV/lDln5pDiqtBLTk5TGpqIO
	 jy4fd4asvYZp2M7DbiHFU/za+WoD74mE4rtt4KKXOHlNbGszZbNZUI3eF/ZyxZg2Rs
	 zk2Te8VtYdB0sqY6usgVRicYARnumedGACLoxlJGKbTO0ARe9l740lasGb+sf7SH9A
	 p+lT6H7GHzS1g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98ABE8144B;
	Wed, 13 Mar 2024 03:55:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CD7CD1BF255
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 03:55:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B951F8144B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 03:55:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pXI5gZZQAl4z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Mar 2024 03:55:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3961781425
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3961781425
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3961781425
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 03:55:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="4914523"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="4914523"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 20:55:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="11697503"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2024 20:55:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Mar 2024 20:55:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Mar 2024 20:55:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Mar 2024 20:55:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Mar 2024 20:55:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SvVEQsWh60OvW7gR1vdQNk3c1wsUfaXYVkY1+s/y7lVRb9gHblF5hwWTv+JoQVo1HLog2KcuPZYR8+9Hw2B2YP5dCowxkLNOTHiPCkPnTZEPx/8CDwmi1S9VDTDESwrZpk0ngqxMPi027qfiPFQpja4zA4PTU0VzwPTyCh34ZdTDXtHCTw5V4A8+IKe6kKcVHec61uaYTAt5zh4lGXDnYyHlM2ey9SqowspCys2p9YO6+0GB60loLZ3/eeEC/ja/YgEyNlPtaa0aV21uXx1ULT3pIrUbJdeKOgB26mB0NLf81ypu/fqWJL08NJ45XsBnIv1VQ7foPHKNdU8bkBGi/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TZWFk7vUAdO+r361ZqPYMsYXm9pmonCZ83L6anD7K2M=;
 b=FIznllk73meqVbgEqjOzRBJgyyMrjNE52QrWyfguKtOIuASyr0f5xTZ1kWjdfDTPh0HbwNsbA2ke8UZaFIMeLm4mfZO+t0X3f7tg2rOp/rR8ZCB3Y9EpcgBL2SLwU8QGpc3UmU+VwGSncMWDzVIa6gHCW/Qz7BqsmdK9Z1gCKcJo/WNyZtVh55WVxscSyJanFdvJlSRlaJH0hNvnjUdhsaVEStjWiFpwW2cOsNqg/JZ3bQ5YwsRzxVyGw7dK0PrD29VdzfXZWS0+66QB5RRvXGiZzqb5mOZP5u69IkbjwepMdwgD4z7lHq90nGX+Rcmzz+qjqazch1JoNnyaKAvMPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DM4PR11MB5231.namprd11.prod.outlook.com (2603:10b6:5:38a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Wed, 13 Mar
 2024 03:55:36 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7386.016; Wed, 13 Mar 2024
 03:55:35 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/2] net: intel: implement
 modern PM ops declarations
Thread-Index: AQHab3E2e3haonoWd0eT3aRjUufUaLE1FTyw
Date: Wed, 13 Mar 2024 03:55:35 +0000
Message-ID: <CYYPR11MB842975830940F22571722F8ABD2A2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240306025023.800029-1-jesse.brandeburg@intel.com>
 <20240306025023.800029-3-jesse.brandeburg@intel.com>
In-Reply-To: <20240306025023.800029-3-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DM4PR11MB5231:EE_
x-ms-office365-filtering-correlation-id: 05b28d38-3324-48d7-5b84-08dc4311705f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2dSAXSjRUBqDkNOA7Bh+puWQ4udFuMFpVoEz6xUAXyZRj1X8rYE0HbHLEnIaMXPGte4oN+vI65iT1TdhUl2p0C1m/9WvnRCy7AP4I6wUV25zRRi7ovTFX69xWo+RvcE09aEpwX4EEQ0aazKA0ykHqvrPHbQke/Z7e66q5W8BMgHiDpk357eZh1/8+CjDXJnJYoub6SBnAyIcf3WHviM5HH2y76r3C39cc+aApeGzXQMGgMb4621orvKICYB4JKjZb43kYoGR8oHKTaQ7nlSRLEV1A/evYCCXh0xYsB30lggDItcCYaCds2J8vlBHwgcO3OiJcvxF7xUELlN/2GogyROUbT9WMfio/AHBRIBBJBKT4X3PyTyNCHZKtl6/d2B3RsfjbX4AuEjzVl4f1rKT0VFJtrwR4dMrHHl/njicADlS4U7WYCj7uBhBEMsdm5p+2l0Q1jTSTE1ociT3xFoCWkBxad+0ZdazgIPIoq3O+0MIS3YkDMHysfeG+x5wqFIKmHSWwdfQ2jWbWEfIDlmxldPTWpJXr6Rhl6dznQLJt9d+JQkaBUcx6hn7r8RMuFJdl38Q52jZ1f5u4crlO9A7aOrv7ch/bsHNxqH0bD7iyKayZayyWD5RiQ0lOUYcMUwBS4MYzqvkHKt9LyzFU6OWjOLzz2XAZQK66tQifxo9+YQYB/3AXoTcMYzCg1OExhQdrWN4PnvYu1XC5bR+EnkgzqOEDyXcmp2k2rUJCElR7yw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+DPf5wkU6qT9gakZfAWSr92B7fYEs8F8wbgA4njSLx9/iNqOjgrxOBU0W2Pz?=
 =?us-ascii?Q?r7FNGoITudFOSZ2452HjEQGsTs2sIYTDwYvseNxYUHTT0kb7FMjD7/v2kKw8?=
 =?us-ascii?Q?+xKOwnDLkcnppu9qKkLTr6va5qA1pdZD76rnfJBOuFsGWFZmG2rH8VEhoftb?=
 =?us-ascii?Q?OrpzV9QKw+GoStauJ9LttxXRPlWpFCdwTc5srEepZqvz1daptdeDYOvWUiG2?=
 =?us-ascii?Q?Yyn7Mk1RqK7QADhiyrm8w9BZ/MNOCemOklM7R08iRo8DMjbmr+jiVb29GkkA?=
 =?us-ascii?Q?wsNzsX0Eu/LDXlzvRvPK0Oebm4TlQ98/rvfjZCrACcWb1B36vDIkKWw9bKmh?=
 =?us-ascii?Q?sppYMru+gTcZTfSSpreQE4K7LQx9/yKjcc+ivd5jbNTNAa5RmcRw0H0ojswY?=
 =?us-ascii?Q?L1RyC6A9SNAdawWgCPvuw6jyogD7G2O88QJ/qJ3MHCmqpvTx69FnlbigrVas?=
 =?us-ascii?Q?K55RAQyosRV0hgJajNo7kRThfIWaOqY4g/pJTu8wbDxTHUydQgyfZ8vgbMXx?=
 =?us-ascii?Q?jowAqrN0Bqh6p+vTS2kCrIKgDeYvnT3m4V0wGHiy2dmUVEKe1rxzaAM07ghE?=
 =?us-ascii?Q?atelbEk+SXGyNJsb0oODNLdNtkAy4IeXGsfy3Rkc7NuRrhf8EeL/hCvJ50IU?=
 =?us-ascii?Q?SfnJjk0EfoXq32LK7Bn9JwYTOghZQa9/RuwkxWhfzxRz/ECSjAIaX7FixqrB?=
 =?us-ascii?Q?2bQMwHdfNkMLGLMdN0NaGhezsirGi4DRaNupl0OxaUqhysHzOgE9GJb+DV7N?=
 =?us-ascii?Q?a0TDvwK6pzvEG0iSkTyhBe0zKDMcb+awmdL6U3yAZ+CtnFcYembGs1tEbq+0?=
 =?us-ascii?Q?X2RD7eNG2dnMF2n1AXpj+4BEMlwxXZ/V3JTkdSPbgVoVpzWsOxa+ldxT/6XG?=
 =?us-ascii?Q?rOwdQWCQ8jjQAEFCJJZBjunKRFcsXW/gk+5l6lsh4mOIagHCmDDxqRMvNgV6?=
 =?us-ascii?Q?PrSR6IcvdAiWXvQZmt/uOkd5JI8UqIltCNo3He92+LDZvkZiZIoQnyGDKuVy?=
 =?us-ascii?Q?P3EbIKb33p41+kpc3+5r+kdQf2s1arT8Kl1GcvRT6xE2ft81Backd8gsg3OU?=
 =?us-ascii?Q?aLfKdB9JO8pLW5aqIp9Fu8u0H7AgZ1DfAGEOT/fHBb2EFuo2wGjQ7a0kBvEp?=
 =?us-ascii?Q?OpGcQNAr9T6jrPol+fVvEpeCrp41EQSh7QU82A6tCamg9kaTiUwOge3tBf6P?=
 =?us-ascii?Q?dvxO3biT45E1Enkv6nJ9efjm1p3qEE/zPFIWJfhC1MnJJ8NAsJ6ga2XHFJBy?=
 =?us-ascii?Q?1FXw87YKavc6Jtt60D4XisZubcgOlg1fB6fsccTNM8jAvwGGq7fy62K41RQV?=
 =?us-ascii?Q?DuRj4R7RovFEDP894oWkx0iSEOeLNpgHjAxgAIgQNCRu/WKUY/qZrW/Vp7QH?=
 =?us-ascii?Q?oYLIKTJ10f4O6XaxhVUsx0b3JPJ3fThPtgd1Z9OvAne0J1xm2/+UyCLKhWAy?=
 =?us-ascii?Q?zSH32oq7ddfL3xvagZmUcFqYtD1fK4Ln+7sa1zGk1QpmZq6NzcDA7fhRWt2Y?=
 =?us-ascii?Q?8TIQrTrHywUbJLv8UOYAI/eFxBLjnhHyK84CI6sZceVZTbc7btFw3cDsSkC2?=
 =?us-ascii?Q?Iyb/sdSb8IZdLvTRWtJKeqemSbyU1bfRBDfm+T0JHXw1MoOygoSOGup2Yiju?=
 =?us-ascii?Q?AQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05b28d38-3324-48d7-5b84-08dc4311705f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2024 03:55:35.8383 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9ZlsfKYGt3ia5GpO2V7JzJHFT39Vk5xcMSduUNbucAcz6wWuw6ozLlip8uYMHFHpsTeNXWL2D2Rvh3NSxcUV8v3yZjfL1w7+dh1BMcIxKvTIebMs/hXohlax861tHfwU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5231
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710302141; x=1741838141;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+8jievE2i/ytvM31uaya6Jq/odVg3o6j82dqF0hoopE=;
 b=D+ClKihD5bOkqxR/3hyu/jGb8UYKyIqbKRVgOBr5dJ6xCahhQyt/annJ
 iPHwvgHgu3H3whl0452q9h9K7sfGMsKMZOBo1fG16XUmHQ1SSCwqS/zWG
 4nURam6WS0jeWOf9rk2de2s4CxpInHxy8waonWocyhOFb12v4nUpixpmY
 fJqGre3ssvRSN9A4fv2fcPZTfPw17dwQdUQa+nGFwEE9Pzy9/jG3Neikp
 uatM03MVdndygN6ts3kNXNtfby5kcidH7sSkFNW8YVjdkugxc9TUBvLp/
 aToOO/3tL5fCYbKw1BCjQrqHJpFJ5uCevDpBKqF1SnUKbwGpQKGJXcO01
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D+ClKihD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/2] net: intel: implement
 modern PM ops declarations
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, "Brady, Alan" <alan.brady@intel.com>,
 "horms@kernel.org" <horms@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
esse Brandeburg
> Sent: Wednesday, March 6, 2024 8:20 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org; Eric Dumazet <edumazet=
@google.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brady, Alan <=
alan.brady@intel.com>; horms@kernel.org; Jakub Kicinski <kuba@kernel.org>; =
Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/2] net: intel: implement =
modern PM ops declarations
>
> Switch the Intel networking drivers to use the new power management ops d=
eclaration formats and macros, which allows us to drop __maybe_unused, as w=
ell as a bunch of ifdef checking CONFIG_PM.
>
> This is safe to do because the compiler drops the unused functions, verif=
ied by checking for any of the power management function symbols being pres=
ent in System.map for a build without CONFIG_PM.
>
> If a driver has runtime PM, define the ops with pm_ptr(), and if the driv=
er has Simple PM, use pm_sleep_ptr(), as well as the new versions of the ma=
cros for declaring the members of the pm_ops structs.
>
> Checked with network-enabled allnoconfig, allyesconfig, allmodconfig on x=
64_64.
>
> Reviewed-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> v2: added ice driver changes to series
> v1: original net-next posting
>     all changes except for ice were reviewed by Simon Horman
>     no other changes besides to ice
> ---
>  drivers/net/ethernet/intel/e100.c             |  8 +++---
>  drivers/net/ethernet/intel/e1000/e1000_main.c | 14 +++++-----
>  drivers/net/ethernet/intel/e1000e/netdev.c    | 22 +++++++---------
>  drivers/net/ethernet/intel/fm10k/fm10k_pci.c  | 10 +++----
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 10 +++----
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |  8 +++---
>  drivers/net/ethernet/intel/ice/ice_main.c     | 12 +++------
>  drivers/net/ethernet/intel/igb/igb_main.c     | 26 +++++++------------
>  drivers/net/ethernet/intel/igbvf/netdev.c     |  6 ++---
>  drivers/net/ethernet/intel/igc/igc_main.c     | 24 ++++++-----------
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  8 +++---  .../net/ether=
net/intel/ixgbevf/ixgbevf_main.c |  8 +++---
>  12 files changed, 64 insertions(+), 92 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

