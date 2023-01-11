Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 674CD66659D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jan 2023 22:26:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0022081F77;
	Wed, 11 Jan 2023 21:25:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0022081F77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673472360;
	bh=aW4CneHOFm5SeO+rkU5+JdLxT7vNItrzw0CCIJqKcA4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Oy2ecMamp74T4CPz147ETF263l3dl2/AJZUfoNUuvLX0aDxAzQhw4W4OM6LEZUewU
	 pRBJJyfjcwziUz0oOEvbJwUe2Oy/RX7KUtZzfVbrr1HyWqXexjrOpQY5VtpeSeE0bQ
	 qjjOBuRryf6cma0V2+Q+yP9uq87KLUJIFmwvUhF3bKph56iE+PaDD6D6xllC3wRd0L
	 nVj/WMLK6OADct1ZP7Zlk03brMJqXK8c2zi7rvOWg2TOAh4sVbRzHwXk9SggZRAANY
	 GyZVxkSjP4mn4jBEvcn1RqjvPvxTtC++/jseKvmkF9+yr5M3LSsOYRZN870U5o6wuA
	 or/Bz5GxA/fNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3MvrBDXUPTNO; Wed, 11 Jan 2023 21:25:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBD9081F44;
	Wed, 11 Jan 2023 21:25:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBD9081F44
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F4B71BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 21:25:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7566B4027A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 21:25:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7566B4027A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eZzhkbZRd3-P for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jan 2023 21:25:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A612040164
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A612040164
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 21:25:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="323601491"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="323601491"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 13:25:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="986293827"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="986293827"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 11 Jan 2023 13:25:42 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 11 Jan 2023 13:25:41 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 11 Jan 2023 13:25:41 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 11 Jan 2023 13:25:41 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 11 Jan 2023 13:25:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mnX4mdOLdCjXs77QzbQAHLOp7h8jXY2HTksJgNzcOVrIhJbXQk0Z4U2c9UM1js5WFHLd6yi+0OImhsjkj086H9go/Pq0eAwGLoTXROz3tXZtDVDxodf9Cp0nA0h0JE63pZRcpgs7W/Pl0ZRMpjGdhKkMNBzK3CmMBPHC6fixeh6VqBdT+z5x/QBkXgEyTwEDGduoRXcwN3bt/tTxZuSM7z6z6GHNKUdDxh52jZaccR4tf+PQG8fO7VzOOz2sTgtUjBBjHg4WB3WKE6iUcWwOPso7VW1FgMPmvD9NUZiZlelKkFW4kdCEccFkSpXhPakNlWmoa/c1xZSM/EdT566gqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZUSeZ8ITTpRtLykMw14lVLz8cvLTUTA+vZDCfHxp9sU=;
 b=jZyPnfNZkgBs3HLW9PyrlTCvGKI2tRpCvwrLhp8XZdlurr5tLh4mVyBn4TXwUk4FloQ0oRO0Kxcb2wVRUvRw4YdmJWeyFXM6Tu1AEFIUuoHmYu5J8QkGtQHIBsE3fl7WsT0HoAA2RK2/8iIggnMk5+s4R0dTDJYTEYK7+QBJg7Rk93E/qLhD87vFdQpSIq0PpoChypa000LmvVQqe+ZGaNBX2FmLJ3ALeBTjMOfw32WyX19WR/YE+yg76+gkX5dH+2xTKhrte3u/xUiKM+Ck5rZws91ly+uhwMSNLdBGxBYIIvKGhX2u/HCNR+uciZ5AEXZ7ags+3xXmTlF1E/17Gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Wed, 11 Jan
 2023 21:25:39 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::ae83:22d0:852a:34f7]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::ae83:22d0:852a:34f7%9]) with mapi id 15.20.6002.013; Wed, 11 Jan 2023
 21:25:39 +0000
From: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net v4] ice: move devlink port
 creation/deletion
Thread-Index: AQHZIVMYs6RelFsUjkmpBon9+Ld26K6RFMwAgAiuhWA=
Date: Wed, 11 Jan 2023 21:25:38 +0000
Message-ID: <CO6PR11MB5636C8607306298EFA0AB7F1E0FC9@CO6PR11MB5636.namprd11.prod.outlook.com>
References: <20230105221415.15394-1-paul.m.stillwell.jr@intel.com>
 <86209fb7-6075-aa3c-f000-a587a1776112@molgen.mpg.de>
In-Reply-To: <86209fb7-6075-aa3c-f000-a587a1776112@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR11MB5636:EE_|CH0PR11MB5444:EE_
x-ms-office365-filtering-correlation-id: 390eedca-b14d-4aa4-a87d-08daf41a62db
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RdB4xxAOg1jKcH4irgmPm3Ak2C+Oo65Ih0+kkoOyRU3kiC00RqY6JvVQXtWrmlcSEmGEwwkC2DJP4iQcq5598fzGa2uqItswsLzDKrUrF6YGoGccC6op8sWz93X+LUkI7zXUu5TlJVSHSrqa1CckzWX+2soTxQKrfuP9ema8vc/kbBQb3T5rDtPvf7ntOa7OH4FhWOnG2HvtwXx+F4xg7r7+BKSaED7KSn7Dle4hXZklbN1gV0wp0p38C5wzvIaQK7o9lIZ3t/WzvXU7nWCxmWXpp1DfwOqfqopx0JFkCGS4TpR74MOIF7ly9EVGknKeZIYQuZ04Hboyxw7YxG+Wd+qaq5BNLz4yR4IDWwQ1LGbDzG/cyURGCCO7hA13tHg0TiDwJKIw+Fb5rPqW2qQtbeSN67fekj8hwOEs3pHR9JuPtUyOwuFqGhPg3R7FDn/B8vj1+h407wPtV4XdF64I96K6FRD8joML2eaPNmRM0iFCcT1aHyxM7gm+hC7jll/pu+R9PbZZZA8MimSw5rAqxmZ0+rPiEms4Z2ACx7zBHg0sPnJcjMkR/gLxh1ioxt1H3bI/HDm9oOOKgNk3iIAvqOMAAhUAnJtWvws6k9Hl+dhJnzWQbD+W0qch9gTSIgE9lhy1IKTYjre+mXjvOnAUU/Rb47DK4B405p7yWAJ8zOgDisb142YrIpoxjIQ2FL7RQM12HVklNCQsKp/KgnIrVw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(136003)(39860400002)(346002)(376002)(451199015)(33656002)(316002)(9686003)(71200400001)(186003)(7696005)(26005)(5660300002)(478600001)(41300700001)(64756008)(66556008)(66946007)(66476007)(66446008)(4326008)(8676002)(6916009)(76116006)(52536014)(8936002)(83380400001)(38070700005)(86362001)(55016003)(53546011)(6506007)(122000001)(82960400001)(38100700002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dDIyZnFhVU9XNHkwa2E1ZklJTVBKZWhkUEp4VDR6b083YnlXaFk5bE9jVU5X?=
 =?utf-8?B?YkRVbGl4ZlhJVFBOMWhkR3lXczlEWXp2RkNaU3VyVktPWElkamMrd0UyYkpr?=
 =?utf-8?B?eGNQT1pTeDI1ZDhqc1grU3Z6SGdqTlVRM3hua3pxMW5wbGFjVVBYcEU1ZmRV?=
 =?utf-8?B?M085ZXdDVXBMcCtZdHd0UDJ2YTdHNnJLY2gzMmRYdlNkRExVNEtmc1Vubm42?=
 =?utf-8?B?RUp5NUo3VjVFNVR4dkMwWU1xdVZVdEI0L0JxWUI5SXhGZXFOdUd5SUlkeGVt?=
 =?utf-8?B?YkNDZjJpbmVmS3hMYUpreEt5Ui9taUxZM05lU2c5YjNwZG1paFg0SWp3K1Qv?=
 =?utf-8?B?ZmR6eFpMZ3kvd05pOHJnQnpES1QxTGJlaTdybmxDNzYzVnZzYUxaSEYzN0FM?=
 =?utf-8?B?a0RkZnpncUZUbDJSV0w3cm1ncm5NMFdkZEZnY1BzT0VZUDRyRDZ5VmFDOFRN?=
 =?utf-8?B?TVpHU0xBYkh4R2wyTSsrbjVLOTVPRjllSUs3YXM5dktBZzFMUVA0cldOYS9s?=
 =?utf-8?B?Q3JOTVNnNFVFK3FtNStBTW9PRnVkNTAxVEplZDFJYW1rUHpsZ0NFODdtcFhV?=
 =?utf-8?B?WXNMRDlheEYxMSs1OHNLY09rK1N3cDAxMEVNTVU5YjRnZWZ0blVoS2tkYW10?=
 =?utf-8?B?QnZZNGRielV6WDFvRmtQdUcyeVZJNE5GOHQ2dlJBdXgrZTBnY0NJWS9uUXFt?=
 =?utf-8?B?QVp6RDNBRjFuK3c2NHEybnN0VVgwSHFPQVVhclBDYzY4b2xvcmZxd2x3cjEw?=
 =?utf-8?B?dnBZVHVSNWM2eVdDcEp3V3h2TmJacFNzc3hiTENndnRJenJRd0dSa3ZXV0VI?=
 =?utf-8?B?TXJxR2lndTJIZUZnVnZta2UzcHdzWnV2c0RSRUUvK0JJei9FSE81bWtFOEM1?=
 =?utf-8?B?N3MzMkhEdXhQTlpWdCt1TGR1SzZEUlBzSHQ2RVRNMElzYVlmWmw0NHlYOTdj?=
 =?utf-8?B?V1dndnNFbnV6MnhCeU84Q3pGUEVlVUs2K1g0VDZocHVsMFo2ek9yQjlJUXFN?=
 =?utf-8?B?ZDAzYWh4bHZjdC9PLzZTUytLaTF4WFpLZWpURDRqNjJLSHBMVE5rNjJhOTdu?=
 =?utf-8?B?V21seXR3WWJOSHMxZjlBWEFMV2pIc3ZPSFUzVEZ6ZWo0TkxLSExzWDNtV0lT?=
 =?utf-8?B?SnhNNkZYWjVHMGpkYUR5dS9UVnRpTGsvc2dwSjhxdzVuM0JyN0hPTXlQL0Rh?=
 =?utf-8?B?elluOWJHR3gzMXZLc21YR3NTaitlbDJrZ0F6L1BTTWlmVFVqbWxhM3hjS0Fk?=
 =?utf-8?B?Mi9ucWtVb1Z5Vnh2bUN3T1Qzc3QwdXdRWTNWY3lpdXJHTmtwbUx4THowaDNX?=
 =?utf-8?B?S2tvMVhBeENENmJ5Q0JEV3hjeHZNN3l5dU9JVUhuTGN1WXkxcG00WDErRW1l?=
 =?utf-8?B?bnlQWWtKQWhldEgwMGxvcU90TytwZ2djT2RtS2tQMGpmMDlETXBSUW1pZmN2?=
 =?utf-8?B?Y0NBOC9Ha0pqRVhiOTBBNkxIMkF6MitTMEFwOEFJS2pFMkM2ZGJ1NUFSNkYx?=
 =?utf-8?B?Y2V0bUZzcWFRRHFoS1F1ZE5DUmFDZkNiancxVWhDUFRKcWVkUkZUbXk2Sncr?=
 =?utf-8?B?Ti95RGtCSU0rTlFMRnYwMW1ETmNnM2VJY2ROdk81QUxlM0xTT3BwWDJRaktT?=
 =?utf-8?B?Y0NQajViVytnOWp3a01lZFBKejFsMGdEaldObTcyMHc4VXRZRllMRFYwUEhm?=
 =?utf-8?B?NExsTnlqdmU1elJpZ2VHSXlRaWRkTWRiWjYza01QR1o1MVVTbGQyOUpwSllu?=
 =?utf-8?B?REZ5TzU3ZmdwTlRBb2dSbVhSdjJ0ZGhId1lJMFVMMEhTR0tjZHdUK3VwNnN6?=
 =?utf-8?B?M1ZjWWRyTXI3VFhCbkFrUTBJTmN6NnRZdGQycm5XMTV1WW5oUjV4L0VEbmJX?=
 =?utf-8?B?RVdhR0doYnVlWk9YLzhoZEV6elJFTW9DZzBDQXJvRkZlbVNXUlFERzIwQ0Rk?=
 =?utf-8?B?TXMwMUhYT0wwNVJmU2hDQU96VFh2WmsyekdhYytUUXJuY29aQzRtUFZOSTZy?=
 =?utf-8?B?ekpVN3hFMi80SFNqaEhzbHQ1STdGTlkzRFRuWUlVek8xNkFsSG5tVjVMNHo5?=
 =?utf-8?B?b3BqZ2RPejc1WGE4R0dVZENvdUMwbXFjd096OGhXTUFoNDJ1dHFtV3VhcHVI?=
 =?utf-8?B?Y1QzWDlvblI5YmsyeWsrQi9lSkptRHNCcVZBWjdVaUllQ3NOV1YwL29jT3dB?=
 =?utf-8?B?L2c9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 390eedca-b14d-4aa4-a87d-08daf41a62db
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2023 21:25:39.0767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KD+YsmoYPs3updEd26olL6HldGNkxrox64PbGq4NNBcBdVC3VThZUJSkr8FVt4h1StMtYP5oRgunRj4gmZRHOnuaMIIxwHFXzUddfHP3JPo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5444
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673472353; x=1705008353;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZUSeZ8ITTpRtLykMw14lVLz8cvLTUTA+vZDCfHxp9sU=;
 b=EFu+9syT1jfIqYAJ97HeETenSbSakHdfr9ZdorVy0zjAkgBF4kssnVp2
 Zl3s6ojYZsZGTx1Ozi21B9zo040fhRdA7cXtUXnWtRF/fYBQ3j8HgxYRW
 9j419Yjjvjl5Vmf3XJJfXu4mEndT96mg8FU/LtgExE9P5ZSDhARoA/Kcz
 nZa+I4SKIpkgmjdwfxNrplkynerIdBOWTaI5lJWyrc9F3QBz55lxwztlx
 uu/aGO1KSRjPn8/Wxm0yf4yBPdQV2mIph7an287nnJ8A1gDsXX+dEGS8z
 DhF7P9M/aUuSuY53VWuNhKcQRWlXWfjIxuLHhqYePUPwAbVuWYjDHYlUR
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EFu+9syT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4] ice: move devlink port
 creation/deletion
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFBhdWwgTWVuemVsIDxwbWVu
emVsQG1vbGdlbi5tcGcuZGU+DQo+IFNlbnQ6IEZyaWRheSwgSmFudWFyeSA2LCAyMDIzIDEyOjQ5
IEFNDQo+IFRvOiBTdGlsbHdlbGwgSnIsIFBhdWwgTSA8cGF1bC5tLnN0aWxsd2VsbC5qckBpbnRl
bC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBTdWJqZWN0
OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIG5ldCB2NF0gaWNlOiBtb3ZlIGRldmxpbmsg
cG9ydA0KPiBjcmVhdGlvbi9kZWxldGlvbg0KPiANCj4gRGVhciBQYXVsLA0KPiANCj4gDQo+IFRo
YW5rIHlvdSBmb3IgdGhlIHBhdGNoLg0KPiANCj4gDQo+IEFtIDA1LjAxLjIzIHVtIDIzOjE0IHNj
aHJpZWIgUGF1bCBNIFN0aWxsd2VsbCBKcjoNCj4gPiBDb21taXQgYTI4NmJhNzM4NzE0ICgiaWNl
OiByZW9yZGVyIFBGL3JlcHJlc2VudG9yIGRldmxpbmsgcG9ydA0KPiA+IHJlZ2lzdGVyL3VucmVn
aXN0ZXIgZmxvd3MiKSBtb3ZlZCB0aGUgY29kZSB0byBjcmVhdGUgYW5kIGRlc3Ryb3kgdGhlDQo+
ID4gZGV2bGluayBQRiBwb3J0LiBUaGlzIHdhcyBmaW5lLCBidXQgY3JlYXRlZCBhIGNvcm5lciBj
YXNlIGlzc3VlIGluIHRoZQ0KPiA+IGNhc2Ugb2YgaWNlX3JlZ2lzdGVyX25ldGRldigpIGZhaWxp
bmcuIEluIHRoYXQgY2FzZSwgdGhlIGRyaXZlciB3b3VsZA0KPiA+IGVuZCB1cCBjYWxsaW5nDQo+
ID4gaWNlX2RldmxpbmtfZGVzdHJveV9wZl9wb3J0KCkgdHdpY2UuDQo+IA0KPiBSZWFkaW5nIHRo
ZSBzdW1tYXJ5LCBJIHRob3VnaCBpdOKAmXMganVzdCBhIHJlZmFjdG9yaW5nLCBhbmQgbm90IGFs
c28gYSBmaXguIE1heWJlDQo+IHVzZQ0KPiANCj4gQXZvaWQgY2FsbGluZyBpY2VfZGV2bGlua19k
ZXN0cm95X3BmX3BvcnQoKSB0d2ljZQ0KPiANCj4gb3Igc29tZXRoaW5nIHNpbWlsYXIuDQo+IA0K
PiA+IEFkZGl0aW9uYWxseSwgaXQgbWFrZXMgbm8gc2Vuc2UgdG8gdGllIGNyZWF0aW9uIG9mIHRo
ZSBkZXZsaW5rIFBGIHBvcnQNCj4gPiB0byB0aGUgY3JlYXRpb24gb2YgdGhlIG5ldGRldiBzbyBz
ZXBhcmF0ZSBvdXQgdGhlIGNvZGUgdG8NCj4gPiBjcmVhdGUvZGVzdHJveSB0aGUgZGV2bGluayBQ
RiBwb3J0IGZyb20gdGhlIG5ldGRldiBjb2RlLiBUaGlzIG1ha2VzIGl0DQo+ID4gYSBjbGVhbmVy
IGludGVyZmFjZS4NCj4gDQo+IEl04oCZZCBiZSBncmVhdCBpZiB5b3UgcmUtZmxvd2VkIHRoZSBi
b2R5IGZvciA3MiBjaGFyYWN0ZXJzIHBlciBsaW5lLiBZb3Ugc2VlbSB0bw0KPiB1c2UgbGVzcy4N
Cj4gDQoNClRoYW5rcyBmb3IgeW91ciBmZWVkYmFjay4gSWYgdGhlcmUgYXJlIGNoYW5nZXMgdGhh
dCBuZWVkIHRvIGhhcHBlbiBpbiB0aGUgY29kZSB0aGF0IHJlcXVpcmVzIGEgcmVzcGluIG9mIHRo
ZSBwYXRjaCB0aGVuIEknbGwgbWFrZSBjaGFuZ2VzIHRvIHRoZSBjb21taXQgbWVzc2FnZS4gT3Ro
ZXJ3aXNlIEkgZG9uJ3Qgd2FudCB0byByZXNlbmQgdGhlIHBhdGNoIGZvciBjb3NtZXRpYyBjaGFu
Z2VzLg0KDQo+ID4gRml4ZXM6IGEyODZiYTczODcxNCAoImljZTogcmVvcmRlciBQRi9yZXByZXNl
bnRvciBkZXZsaW5rIHBvcnQNCj4gPiByZWdpc3Rlci91bnJlZ2lzdGVyIGZsb3dzIikNCj4gPiBT
aWduZWQtb2ZmLWJ5OiBQYXVsIE0gU3RpbGx3ZWxsIEpyIDxwYXVsLm0uc3RpbGx3ZWxsLmpyQGlu
dGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfbGliLmMgIHwgIDMgLS0tDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX21haW4uYyB8IDI1ICsrKysrKysrKysrKysrKy0tLS0tLS0tDQo+ID4gICAyIGZpbGVzIGNo
YW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQ0KPiANCj4gW+KApl0NCj4g
DQo+IA0KPiBLaW5kIHJlZ2FyZHMsDQo+IA0KPiBQYXVsDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
