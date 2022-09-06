Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 162345AE19A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Sep 2022 09:53:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89F324179B;
	Tue,  6 Sep 2022 07:53:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89F324179B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662450786;
	bh=FCPq2ra94PM8YwMlm5r0jAp+PvbKrxvMWT32neKaopU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gprtTBBmI75LP9/fFeBoO9wZtrBNy2gOHev7TDSeToCCbonbRffGyl8bQYfL+T9CN
	 0/fI5j0GOy2aVHRHymSRUnMkutp19fLOmFUKcWYA5251vTcU3CM93qQ0atU1XUSsus
	 TdKTH4p7CxgC/Jatpd3NJZR+hBZA+sMnXpqbAeyyRFzIfjDdpGpqT5hrV/0ETFbOvv
	 XECc8N1eXF+jajKU7gpz/Px127ktaUI4Ne49BCDPdNt6x3VVXWUtHjX3W25c5Gj7we
	 Er0od2Jt72FPpNX+1y/LuWSROoUnQPQmP2kSzANXY8BkZnWJJntoCLwOxKUYM909st
	 m8S/APM7DcWLw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CFAgJy9jb3rx; Tue,  6 Sep 2022 07:53:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F3C04173B;
	Tue,  6 Sep 2022 07:53:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F3C04173B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 121451BF30F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Sep 2022 07:53:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DB7A180FF8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Sep 2022 07:52:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB7A180FF8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NI9FvxkXvLaq for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Sep 2022 07:52:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 184F780F7E
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 184F780F7E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Sep 2022 07:52:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="276269225"
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="276269225"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 00:52:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="717600796"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 06 Sep 2022 00:52:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 00:52:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 00:52:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 00:52:57 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 00:52:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fkXnxu16pTpOU+IhQpQTEAOGNBJL3wLk7B7dM6afHqNx5K1qjH99RDJ3F6xFhFqnJooaUxemI8nZCLtvAz0fUEmdkEAhAq01cOBfNHcynL+copJ97F55I3yxvLqagAkhg5LJqXYL17ZZfjMJzK21508TiKvMZqvGo6Zun76bMmZc+aIPO1MNnVY9xwxKD3h8s6E2Og/awoCLJHfsWsux0aAzMuBQc2r/ruByDKAj1QAOSOGe73HtuaIR6xFJff7/NtYSx3ltKh+4sbA26H6y0Mhat8voXQ9q8Svu2KnCDUeHGfJQ9xfq/NUlVB06jCt0lWni/9Sc8SAqs+vGVx9Kyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=45p0v4jZsxgEUnQ+A/0UPs53F1vYcGDB11n8nQAhntk=;
 b=aocB2mKRGwKwdb1rY7cOpyqOMKXP+K9t7iiIFLxlmD7Y9wHacDtRjmAwPksDW88zJq+1VunnvFVrpN3zpWB1/VxeiHIvxZ6uJ0QTCYDoH0UOfma6B44sHehaic6pJq4mFo2r4rs323BgIUlPO8p28X6uxKxgwGe24EtGUTH4tSCAu9HBlUKdw2FZWjJQFwhlhuiY4PUTA7GXfBjXQofZIfmC+LXwTG4nql0wjwexFIMQJyJk+iYZS0uR0nhaYh80tbYodBGT94JqmpuZxYCa6chp7AaWUCzsMZaayPNmtdDEP3c1h0cOykTNKyvVRV9Od3L+AOAX8a83EDQbdB/HtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3254.namprd11.prod.outlook.com (2603:10b6:a03:7c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.11; Tue, 6 Sep
 2022 07:52:55 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b80d:5e10:abd2:c709]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b80d:5e10:abd2:c709%7]) with mapi id 15.20.5588.017; Tue, 6 Sep 2022
 07:52:55 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Add basic support
 for I710 devices
Thread-Index: AQHYu58ZaMZb2/G8xUeFOC2x0xZfyq3SE/Aw
Date: Tue, 6 Sep 2022 07:52:55 +0000
Message-ID: <BYAPR11MB3367879960F1A007704E3A0BFC7E9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220829115946.54125-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220829115946.54125-1-mateusz.palczewski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f7cc3f64-fbbf-473d-5b0e-08da8fdccee7
x-ms-traffictypediagnostic: BYAPR11MB3254:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fYTaptTODG9eFzX8ilSnU5CHP4jzqie7O7pobp8ujhJfMx7LXgyY1fE4H+hvgj3gszNjn5Z5Kc/7Xl1MMbjr87eDbrhGut5IeK/HFSOBQWnSdNd6eOjewEgCejialj+HZMiSnm3gOxEYRvaVSua4pGuTYx2ImC1NVvKXCihVI279VPb3CUlT/XPH5UMoS7SxfQfHJ648zlmTwiNq6zpP3YZ8sTT8A9vPI5nZaBwfMIpD601ADA03WBJ9sMzJvNCwwU0fB9c64FU9wNkcXlzRwANuBC1lmsOrsPu88eDaUK4+OiGhUXG124PGpJPkrrkyQxBvKYBTOR2wnbHItHMlgdbz22YFWaIVf3Y1tgNgSSMDLfVKuUzoTdljj0mt64c/1Eqz6P7Hb1Cas1NxaPW146o7eQX4B+q3dKTmOciE63oo88VzJmPd/a8j05WWhAZIsCTS71ZcS+8AZ2UP/mNiMGqiB6vWADli6xvIlXN4ZEw+3yWVqDuZ+19YqBy7gqIye3z2TAD5evwAICTL01XihD1OSqDq6qaFNFzapfG1du3yVrs8RNG1O2cVf82KF9OQKOEt4Adh0Jgl9V3/rMQcVKinIxJnCMDQYNQoH8lcE1I9Hdi18vD9sCOQvw7xPi9pohcvP2y4s6tTQel/wJzF3Zizx9D/gtDVhniMNtGdVyTQ2xhRpcG8ownt5j105HUolFXYWwtS1yTZPpmuc6HF13EXNgx87a4OVgbgMrwjcfAvWE//t+cXCdUlVDypfReu+svz73Dk+L8mGstpuaTEQA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(346002)(376002)(136003)(366004)(396003)(5660300002)(8676002)(186003)(33656002)(2906002)(38070700005)(41300700001)(83380400001)(4326008)(4744005)(8936002)(52536014)(26005)(66556008)(76116006)(66476007)(6506007)(38100700002)(53546011)(7696005)(82960400001)(9686003)(478600001)(64756008)(86362001)(66946007)(55016003)(316002)(107886003)(122000001)(66446008)(110136005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FuZ5Qp5kjHSLZgpx8l4Ax5rHoG+pMPOi8SQZaaPRuLV96MdUH05f4jVfxPQM?=
 =?us-ascii?Q?4dzaYFrevBhHwz5h6kGhqHLcIrEhvxLME/tW4ffyYqzgFDiWJTJXvkvNPBSy?=
 =?us-ascii?Q?74YS6eMg7lhyQgsUFOsVslNITJR1xtt9WniDeFoA+AbX8X2oLNqW9LyN/tn0?=
 =?us-ascii?Q?2+RVAdKupJEtfL3FWwK3yP0yRqvPDpKk+BhxJ25PDJAQ6S+vHeIg2D4uThEv?=
 =?us-ascii?Q?JFLRgApl9cCLpR6bVOKi9yRF56TALmxYMsvQYnivjk8idyQdkfFdCHFUaRiK?=
 =?us-ascii?Q?tgHyzg0Wj6ni/6uBH8Q81ycApUnrWY4JCuwJLvRyGzQscAZVN7YPeItS+Qq1?=
 =?us-ascii?Q?QJETUvVWvX95j3+XvgbDWksM2/MFDgH8ML376AQy80i+0EZ+m9iaR0j8ff9o?=
 =?us-ascii?Q?UI6A8CV7wnEGYw5etzRAH1Q62d8orG8zvLV/1DAsX9MRWULy8xNL7NBd5kNa?=
 =?us-ascii?Q?Xun87qpkOxNFraAchXFcz4IOpcC88jTv6i7YWKOh+/+EMXfnfme2yjZYD4oT?=
 =?us-ascii?Q?N4tJbBKPv3lLnlxCIi4vZcukc6OzUsBHAuipp0Vy6+NJzxuqWoBRhirCKyUf?=
 =?us-ascii?Q?LeqrqwpV6T05UXFHGU6WQgUVGLnFKeTKQjEvIuY0B/f3psiB5ArElYj6Eeoq?=
 =?us-ascii?Q?ww0VJmSXnwwAVbiVL4NR9IpO2lpdsxyPD6wUrOvAtUvJpNpJ1hwyr2fwgLqf?=
 =?us-ascii?Q?cyM85opcnyWIhaU6WvNjwlx0qysqFr8VBSXSEi+BSOT8kKubgN8sDMri6hR3?=
 =?us-ascii?Q?Mm7k4GHJzILGCaBnKFcg1+endpMgUL86tlxi0SAw23OeXWxH4F7xE6gINi1O?=
 =?us-ascii?Q?BHM96ncgqq6NWNHykGDJlDMcrSLpcqsinBkawKNHntae0vas4aS3UuIAn61A?=
 =?us-ascii?Q?xQv+pCvL+MHNckZ/siO9XPjH5QpYazH2IBLIFCbPZcRu90OZxcGF+jVwnCEj?=
 =?us-ascii?Q?CFb9fUIIu5zD83fwQdYcYZ0rQTsqFaNlcYSAm2SQg4vuL/sMVgEOEIlq3mPb?=
 =?us-ascii?Q?RZekKX0ZN9qYBmRQmx+Ja77k1g90tb/X42JGRNP5LEZNVnSsz2qYVQN7g1om?=
 =?us-ascii?Q?21tWjimiTJXPUabn1P1daWxatOoo1hHCKyT2IW7vdWZ3faP2lH/0AjpSPNZ6?=
 =?us-ascii?Q?HIX4YR2iuFJF+AK59HKubwsHbpSs6zF8oGFnWLdGjty33b1KpGWJ9xBkttax?=
 =?us-ascii?Q?rZ1BPSzk54/Bfy2q7UR8rNgrRThneriE8LUpw6MU8BYUXjfvlII7CDRczekW?=
 =?us-ascii?Q?SC0LiGB2WzLtvCfzJ3fXcNpYpx60ByfzlxH1Sm4BVKf6HF0162Ur0W7G6T0K?=
 =?us-ascii?Q?pcCRLqBxkGB4875xhA0plOG84v0ljvhu29A8jIz34LiyuC3Qm7tIkPInNiHu?=
 =?us-ascii?Q?9DfxFWKfaB4xHkFfXs8fJS0MZ7s0owj2hTG6MahGp8UDtYe3PTz0HlPxre7C?=
 =?us-ascii?Q?R5x263sc1o/z/sE8FM/1q6Z8HWzhMqnYxZOsZjP76xgM7jxtZRaZXs0pXh0p?=
 =?us-ascii?Q?qAQcsfDs30XMMK3SfCp550z+D1V1Asag3tm8wvat+lIpdfg25QTpcOcw6FMv?=
 =?us-ascii?Q?Se7qWw9z4fhokiPXn3lye5MlVKr1UyZKmgoEy9Go?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7cc3f64-fbbf-473d-5b0e-08da8fdccee7
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2022 07:52:55.3035 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gXhCBqCv+Jeo5JUGbs96GuZXBa2GLsmxksU1nqjrdHiItAuZVl0VjVhhXlYvOmq20m+1BmdfF+yhp1HR+NJZnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3254
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662450779; x=1693986779;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lCeDh2d30yBMRmTsUQkEk6ISChA7dCJvErye1qrQmJI=;
 b=L01Chx1e4rWCsjSaDrsVX8kDoMb+pDw9gij5O7AQ6qASUPFhhVtcOG5M
 og+I7HV09OS6n+UlnjTQ2RnMs47M3iarIVKoo+M4AxEPO4bVqJliAk8aX
 cVw5fREfZNFI9E2kBKitQDKkqG7kjyj3RMmNEAPO9qVKw434kEB51+CAi
 hdlOfD7vDkYaowI/TaGrN0b5jwgtBP8NyLc8Mg7Y0992ueft6uKejej2V
 qbHA3ATowWPJEubH8mj+8g7uulg96E/PUfZrttC5zMMh6mlr/86Bbpmy+
 uO7RzXdlkasEm6vSwcF3JdqYaWa7b8i8tZnaNSoePwTGKPC2PY5pn+k8i
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L01Chx1e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Add basic support
 for I710 devices
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
Cc: "Grzeszczak, Stanislaw A" <stanislaw.a.grzeszczak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Monday, August 29, 2022 5:30 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Grzeszczak, Stanislaw A <stanislaw.a.grzeszczak@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Add basic support for
> I710 devices
> 
> From: Stanislaw Grzeszczak <stanislaw.a.grzeszczak@intel.com>
> 
> Intel introduces a new line of 1G ethernet adapters with Device ID 0x0DD2
> 
> Signed-off-by: Stanislaw Grzeszczak <stanislaw.a.grzeszczak@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 3 +++
> drivers/net/ethernet/intel/i40e/i40e_devids.h | 4 +++-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 1 +
>  3 files changed, 7 insertions(+), 1 deletion(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
