Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AC652D023
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 May 2022 12:07:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 814C260E9D;
	Thu, 19 May 2022 10:07:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4OfZO-t5RRtx; Thu, 19 May 2022 10:07:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A81460BF7;
	Thu, 19 May 2022 10:07:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4AC241BF408
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 10:07:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 36C60408C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 10:07:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rbeP8VBZIS3G for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 May 2022 10:07:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A868B40493
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 10:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652954821; x=1684490821;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/suEPWG0o/8hUKnvAjWpqZgu2coIymtl0xI85EJaXas=;
 b=VeQppXI99MmFDQgTXhu8ZXFEriNL/ZmIknwGe9k6ICj+ZY3if804DEir
 rPF1xv+7LAJm79+MxlfmYhMJjh45o7UZpar3F3FfmAOBBVDvpzEXoZsG8
 //VJDcLw10Oqj1zevU9Po3XhULBa4EWbcsZnNZo9SJT9pLylGvRkfPZDr
 9A1z2kcKTAetRk0wHlLVl3+gaqxLqZnr5q7H3qw6O+3zvyOKA3mRIsnOe
 AUm2+5fOAuF0RwNRI4bL/1GyuD5CQLZylbqSxIpXNG60rQWBevw2CT5sh
 visuGUqCdERU9OrzCn8UkGyvX3rsdywb2wHzNJPKnXU9vqE7V3qKlRwFA g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10351"; a="269713680"
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="269713680"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 03:07:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="598477334"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 19 May 2022 03:07:00 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 19 May 2022 03:07:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 19 May 2022 03:07:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 19 May 2022 03:07:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NvedskH2d7HYKrsJd0A5ySXUM8sb1PLYSpAmXdZgevKcLGN2mahfPvmqXsPeclCXPsB/PxLUCZvJqA2nZ6OO8wXO2v4MIeILhb33RyKSn0Fkadj/azoPQPztZg68osnXFwy+sF5eG1AecgmaZ2nAD3cAb30KkMHOQ3L2H9jYeiZSLzN4HIXntrrpQ2vTsU4vJ1U1XIPMmrRMXZ7klXPzBLe7vzJ6nzeovWrHITGQWxbpkhBze7gZtx/ZHwFGboyRzHHhVV3CzWxvQ1AaudSUhKjCjaVmyxofswbhcpyAamsIVPbHwUuTqE7k8/rY8o+/lyKroJrZma4MxIzSuoX2Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SGFhygHNiGIgcEfKM3uS8FDi8TrfLeGEC7cOmzHrLro=;
 b=D32VqF3Fkk1pPXmQeDfcU7grB0ff7oE9Uvv8jTbaWlTdmgbqBQ8RKp1LrqblYROH54Xfcwq5G4JtiQYE8Nl4N5RxBxH9Q03Ajup5aA701KcWIImOtcjybKQCn1Q+YAkRYvjr94gVlGveX0qJ5hEkhJtZFmDASOlP1g5uRI7izyXRcGhbLcLGfGGvMgQ16f28HYcvwsSTC7GopmlXnyoueculUX7ZVgDM3BZBv4LGoiIM1DfDscByiJ+ULFE4FYTe3sMNTVIWKPsm3mDEKj9WIGLhiw05hPtXF1YDKTZRRzmlnXYb6ap3ObejsYoUOeRyUpMXG/BNB79Ld/apOhixGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by MWHPR1101MB2094.namprd11.prod.outlook.com (2603:10b6:301:4e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.15; Thu, 19 May
 2022 10:06:58 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::a55f:6395:afe2:df6a]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::a55f:6395:afe2:df6a%7]) with mapi id 15.20.5273.015; Thu, 19 May 2022
 10:06:58 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix calculating the
 number of queue pairs
Thread-Index: AQHYW8aX6H0ib+pk0ki3XHaeG6BRSa0mGBFg
Date: Thu, 19 May 2022 10:06:58 +0000
Message-ID: <MN2PR11MB3614CE8C76DCB2912508DF818ED09@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20220429124023.979010-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20220429124023.979010-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 35edf14d-85c3-421e-595d-08da397f4fb6
x-ms-traffictypediagnostic: MWHPR1101MB2094:EE_
x-microsoft-antispam-prvs: <MWHPR1101MB20948C804933BC92F7012C348ED09@MWHPR1101MB2094.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: toZRIAVgkHZKKeubkXdH4h90hTBZqt5BheoTDXYukKOTzecO7uIZBh4JLTLu8XqNFHcE6F+eYYWX01ySOdaEMu72iYoZQDmX/XBo0nm9Oe5w+y4oYQLP9lml4ADCUGcpbA7n+4CCXVQ3HApAHmxTzC9sUqBkJBRlRDz4MolXOXJN8g1DS3zBP5X6x9qdr2BuNW4IaUjuLXICsRfty2m3ImrZoHyxC0xhgp3SVpb53ICTA1H0mFeV+Z6RGHW5MWM5tlO6doHNSQWtpNWf6ym7TgdTJgXYKZWt8n1zWNS9GlCHmZ0PF/79fySv7L7J5dPraCSeFGD/RNb6rie8wSzn9VNKqCULluTNfocoBu5hrQPr2+t2ReIAzP6p7+KDIbydhb8c9cNQoFMUrtVB0fwG9H6DETXbSY5Hq1ZfAJpoasuhScngoO7K4iHuybLNe2wPTvJShIIJ975NmlBSQbCyS1jFUCy5/VzxLndcrPbA68r9Bhx8X9FSvQIBUBev/zc3/1R7q53fMV+xHuyPFU+F9jpakH8PVRV6hlY7ahdtgKK2t35yNtL8KdwVj9J+vp5OPAhN2YDs6W+74AJST9XLA/aH5Wq3juksLJbtohBKkzyqds0dIf4D8LPLgrGlN0z+u3FwzG9W5/DfTSLdSmmW8vnG40uzGScPC8FLnTLaqDYw/4XjlMb9afzaP/2M0lQnUs0ZeFe5IN5AcxbXH8OGdA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38070700005)(38100700002)(2906002)(508600001)(86362001)(71200400001)(6916009)(4744005)(316002)(82960400001)(52536014)(8936002)(5660300002)(26005)(55016003)(64756008)(66446008)(8676002)(66946007)(122000001)(66476007)(66556008)(76116006)(6506007)(53546011)(83380400001)(33656002)(9686003)(7696005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?p6cADyrV6sImIhyhGqgrRnb2ITfk1f1NDVTrXTMXTmhT3YQs3f8S6TbFzaMO?=
 =?us-ascii?Q?ZkDbk744OFdkPsRIee6ocFcliXLoHZwKExJq3RNOkE5hpt05DqsezDfcl6Z6?=
 =?us-ascii?Q?h1Vn1Vz0cgWP+P+ccluHxqxt9/jIlH9nG1+lIqwfOl6trS2lZzRAUpeBon2W?=
 =?us-ascii?Q?yvk6NHP1Khct0Q7DRJWVMlP48cBmGd2dBN1cst5xr2XDhoHju7prRW3g/rMp?=
 =?us-ascii?Q?iKtFrNrfR/9md5KZbyPmmVhcoru1Ec//xlp2IN6sN8AidZPerdjxylY+ZJfi?=
 =?us-ascii?Q?znR+8Wb2B4gIKsIZHGX7etAPd5yo+nB85LPBwqZ20cnmL+2qW75BBBD9+ycP?=
 =?us-ascii?Q?2zfepx4UA6A7gJpBOzkP/vbipns+PFeDQhTES8ZNthiFFFPNYHgbY98tKMJc?=
 =?us-ascii?Q?vy2vaGsAgzZNYJXRMoscnCHp3E12VCW9IRIfnY3Hyy/TXJfxaQeXhqi7Zb+U?=
 =?us-ascii?Q?xWGtWD012RjQNMU8MLBtxQD6oc7bWntU26NFYYaOPSiCdsiLF5md8Tcfj3a1?=
 =?us-ascii?Q?+f2MPvBYp3fcs5ckxzhECeAOCIVv8J4NbkymHQJkNn9KcUosfIkoxvQaTpvC?=
 =?us-ascii?Q?A2C74rG2/dA31GR5HVzoirp9Z7pWQ2T5l197g5gpbo+Nr3JbND0IYB9dTOxI?=
 =?us-ascii?Q?gvZ6ul66yNx5GbJqSsDMMU+yB0W16l2IU+B++i/BaTF6urY2o9hPgqUEFZIi?=
 =?us-ascii?Q?IMeQvsv3SXDSK97CPvWyizRo6rA8KXLNLp05rsM73kT0mtipdoT8zsBF3zbK?=
 =?us-ascii?Q?XXUio8Xm14jJpq2YW0zBcLZW3W2XqNJNEvkGwS1e6KHjKlVvPgOAKD6oalOH?=
 =?us-ascii?Q?Et6QetfUEoZriG3gdrtQwrihA5S8WU8aMTGKyjrU9UOlJFvVFloPQK5vFMy2?=
 =?us-ascii?Q?QkisIeJPkoW0ovvW3IHtov5dofP9JhxHeYiZDG076Uu3Z6szc1afapDGhVGh?=
 =?us-ascii?Q?SqA57kZlZ2hD91be+6IZl2oUGqWiulhy9GycvRBt2EPwhI9p6qh1ZALEGGhO?=
 =?us-ascii?Q?Mb3eW3FDJFRLl62nPELaoslMBpg4YSqf2ybezy2tM6FJUGQBxOYSgBBQ3Z7N?=
 =?us-ascii?Q?fP9+DuP6Ay4SHwMkXt35no7ZIChL+35CU5SJMXNPTcroXJYd8b7qd4B9QjGU?=
 =?us-ascii?Q?Vg6DRiwHBRbLkEYWmFCXhKZtvIB+uLvJF1J2WcZhp+bZvQ/bFBpqGl7s4UmP?=
 =?us-ascii?Q?0KmEoAUehX7M3Tv9zsvKEiZfiATxVLalTSCwVHOdC0TyfrCBfC9whn7tUxmn?=
 =?us-ascii?Q?D1Mluf8Z/0lSyAfe6ihpM28b9xwbicaDtLcgEffDPVZybKM5fwu9hKCBe9Fz?=
 =?us-ascii?Q?q6UeBY8vt2wZ7Rzf2jijk0RmlWgh/ttq7pA0/1xvh7NRtzRM/OMlsz37r0NY?=
 =?us-ascii?Q?6W402qHr1sn09kQsWD3ynn2jSsjJJhpLe6ukQ1tOmhDyRm0jDt5MgKHwf6Ns?=
 =?us-ascii?Q?Z5/K6gYduN40xkN/Xu1ILdwWwpgk9B6iN+Euh0gCwbfa6PYBIQHh7qdZzthg?=
 =?us-ascii?Q?3ssddDfG9fAqSo8feLi5a9+BL93BftWL5WQk3S6ge9GOw6Ahs02XEuZ+ruRw?=
 =?us-ascii?Q?qca+qo5Lv4a5YjCSLzd0//8LASQqJxravnMcVziNcwhB3Xz3vMHd9frFEulM?=
 =?us-ascii?Q?uL7MYLtzVS10Jnp9SSEb2yAtHGHkbH/iIV35ZcCSVZS1jKxkMIULCP9JRWhm?=
 =?us-ascii?Q?ywkqpZPFeh54c8McuO9iu4aO8YwCJXeaRy1a0qNsjnXnkyg3c7rP7/Qmpj/c?=
 =?us-ascii?Q?luYAYrh+SLPRTRVUmGyWhEMbq5iPXPU=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35edf14d-85c3-421e-595d-08da397f4fb6
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2022 10:06:58.6389 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R77BzjA2W0/PaFAtooERuknj0usd966P6px6usfGVXyyx0x8sdyNulVl6p6o8YKN6mzRzGxiZ4azu3yfHlA98oDO0bY07dfJZnca/sOBWAQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2094
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix calculating the
 number of queue pairs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedzej Jagielski
> Sent: Friday, April 29, 2022 6:10 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix calculating the number of
> queue pairs
> 
> From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> 
> If ADq is enabled for a VF, then actual number of queue pair is a number of
> currently available traffic classes for this VF.
> 
> Without this change the configuration of the rx/tx queues fails with error.
> 
> Fixes: d29e0d233e0d ("i40e: missing input validation on VF message handling
> by the PF")
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
Tested-by: Bharathi Sreenivas<bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
