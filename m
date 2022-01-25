Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D94A849B2CA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jan 2022 12:20:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0394E40641;
	Tue, 25 Jan 2022 11:20:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P_9XihenjbDi; Tue, 25 Jan 2022 11:20:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A764940640;
	Tue, 25 Jan 2022 11:19:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B53171BF312
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jan 2022 11:19:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A249C409EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jan 2022 11:19:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q_jKEakkecKz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jan 2022 11:19:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BF017409B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jan 2022 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643109593; x=1674645593;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D/yfljWUKYvwactWaC+bt8rAaJjDbqWAj7x0JHlElbs=;
 b=ILkJyu2Rg/NeHNmI5yxeCj8j9mpX7/0TUr7Bg+PerdN4BCqwaMiVnwyy
 GPFhvfdBHsr7FtGR/30s9vP5jS6o2uitAY37Mh4cxvV+atZQ/sMpSRH7s
 fI/4xfaweC9wgsZvIXSN3vb+fu1zpwIqRpnBMVWfYvULfOsk9rFVDsRfj
 otHAzoJjtsdCkkAeD1D6Ekvzrv+/pv7ETiB8trQYRC6/wpOIIEcUssI/G
 PXOdJxbisPi2+Nz4OWxlzJwIp3o6mN4T6US2K+Id4gLVVH1DPHHeHCHy3
 5/2Hs8MYqS61imki0jiAKjji5VNuxYAzU18J+v78yuLKsTu2xaqMO9h0c A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="229853516"
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="229853516"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 03:19:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="597098169"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jan 2022 03:19:46 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 25 Jan 2022 03:19:45 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 25 Jan 2022 03:19:45 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 25 Jan 2022 03:19:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GIIwC4Jrhn6F9q8E0ChI8pLweSxnwfQg6XxSzsK3OLvoM7EOYxurgh67+MBm+3Jsmlg07Xrw14FFd8FTsn63+pBW1VOT4d+emnmHxDe2smRsLr3V5LaYzYR+i+RbijYVEbBIail5WraunGXHHhgiUxXqOCZ9lo2k3MMASuGD1N8mSL3QJyllHRyayPVtFTtGarIGKM+Gzq69BWQPuwr5eqqifsqTgFnQKQyA1qrWM/inkAA8EuOARDMrkfh0CrU+Dd4QHCpVTJw83GgKLRSGVAta1+imhIj46UOK87329BOe8xD3AHJXe6pPZ8m4kuHeUnKw2FiL2Ly0xc7pjKySdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D/yfljWUKYvwactWaC+bt8rAaJjDbqWAj7x0JHlElbs=;
 b=kD/JhO0TsfOKbyVIjPalxlG2rxMrHVaFGcpZWSdYwSUXPeKFapQdODG8QYEz+9my6h64uzW2l0Eb25ZdUKsqJL56nPSJVCIlpX4MuEuKj/wr2Mta75HWXKoclct2lQ6ZsYHKpxzK6EG3G3uWEfv+ztOlX1h8A3LD4XgzVSEit/P6Z3YibieIwk1FG7HXGrBdkvgOEnThvOXRx2QuTCe5P9xuLg8X74z5RNoXYDLLIPZ7c26XhKuX0bgWA3CZFXP6CyL47VsZePzQXo7updqOdXs8sy06LwZpni9ldNKkLNYaApMgQJc3VbqdODaFoSgQHTSv8k6Dw3Krkg4tt8GMdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BL1PR11MB5288.namprd11.prod.outlook.com (2603:10b6:208:316::22)
 by MWHPR11MB0079.namprd11.prod.outlook.com (2603:10b6:301:6b::38)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.17; Tue, 25 Jan
 2022 11:19:42 +0000
Received: from BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::21e4:5a0a:80c5:bb40]) by BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::21e4:5a0a:80c5:bb40%5]) with mapi id 15.20.4930.015; Tue, 25 Jan 2022
 11:19:42 +0000
From: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] iavf: Add waiting for
 response from PF in set mac
Thread-Index: AQHYETmed5YS38CS9UKaSdro+2w2dKxy6AiAgACwRDA=
Date: Tue, 25 Jan 2022 11:19:42 +0000
Message-ID: <BL1PR11MB5288FC5E9F7779E972A1A43A875F9@BL1PR11MB5288.namprd11.prod.outlook.com>
References: <20220124154553.29782-1-mateusz.palczewski@intel.com>
 <028c789af62a63fbb64d96706ca0e36a57cbec39.camel@intel.com>
In-Reply-To: <028c789af62a63fbb64d96706ca0e36a57cbec39.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 258d9431-e214-4e8a-d8f0-08d9dff495b3
x-ms-traffictypediagnostic: MWHPR11MB0079:EE_
x-microsoft-antispam-prvs: <MWHPR11MB007907E8212E5596D9D92751875F9@MWHPR11MB0079.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:316;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5XjKsJg/9vpuh1EkcIVdYJLrp3LhDlT/G9qFnyzGm85eQuSlwjEKTO3TlYhG9ICgibyPpjrwTcAEqYQs5/90xkBVMUibZpl+PHJIU1NtpSPmXa2BAjUd8BNnvW/vOGoafixzNQfnDl/plxzuWKxIFSvECYgqO78r817edWNNTLCyCMlLscrzrgmDsr6/Odhbx0oNFGkdyj6dhlrc2EjW5Vp6Fd9+4D60nbB+3pkV/Ms5RPlxHW0M3EeRNQvtyE+y/WBjwO128MyevNoWvGB9mkywITJkxhxJcF+IfrRk/mLMePVnhRUuVZZQ6yGtNLN8eTVXGXdAOcBTnZJYXnEGqLUKhf9B9/EGhfv6mSCH/MFF/SG4dQLCJTlRwu3vldkt9WhoovZ4nI+c2S0KCqtzpxp9m9WmXa2qzaSbMkvIcNAXISTsQ8bth788aB1QVz/GhUnDE6lY9nYsrn6wGkNEQZfA3LHH3FVlRFLoot2tGdGyIBSTKV6yM0UVbtfKx1nfj6vQSY++lYtiaFpB81guEpwht3vQLMIhC1aru5MsVep05Y+C5ki3bBFHZWh2FnW92m24qhyXlc8zrBGERS6mRq18FwKl9XqB64NE8q45e0FtC67pshKSlvdOPy1dXYGEH7BbM7S/66Cew6dcrrB3L7ajItQDNPvsPKU2+6cdrKpc3mMdQcbBpnP/KRpuM13gmziGseHaawYaG3H7bbMsxNxKZhWzyZ6TnV8NHUXdWH5sMkZWHYxv+BMNYHM6tGzkw919BO7c9MzULKSI2oZAeu6ufVQgd9vblpR3diY7+L9GPmDS3yDXpbEf4APj9n/rV4RldJ+Cb7LebCjHaY/pdNMJWIgf8JPpXtv+rLv1rjc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5288.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(86362001)(38070700005)(8936002)(38100700002)(6506007)(508600001)(7696005)(5660300002)(4326008)(55016003)(122000001)(2906002)(966005)(52536014)(9686003)(26005)(71200400001)(107886003)(110136005)(83380400001)(66946007)(82960400001)(186003)(66556008)(66476007)(316002)(66446008)(64756008)(8676002)(76116006)(33656002)(4744005)(69900200002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?czVHWU1tT1dOOVNKN1A2VnVTQ2tJRHdIRzhPeHY0M2gwNnVSOXl6R0QzRlE4?=
 =?utf-8?B?bE1qNGdSLyswRDdJdGMxNURZZjhjbEdJeFEzOWs3eCtkeDV3Z05CSnlWNERQ?=
 =?utf-8?B?ckZFYnA1Uk1MeVJ5U2ZvV3UrRW1ZeHNrTFBVS2loMjFTeXdrdW41TmRZMnhS?=
 =?utf-8?B?OFRFcW0wS2ZtaDdoSERwczZMWG1nd0NCOThKejJ0VWg3NDQzcno2RlhpYnBk?=
 =?utf-8?B?THN4OEliVy9YWHdTaUVZc0VneSsyWGI1WWg0MjNHQkE4djE1ZGxwbzl3N0VI?=
 =?utf-8?B?MUVKOWh6eTdrRFM2MUx4cDE1VE5mcWQwRkhlZDZYeTNzd3JHbmtPdzNtakc3?=
 =?utf-8?B?MXowWllUc1JseHZBSmwvTkdreEVPU2VTbjhjT1g2aUtHaFVwaGI2bEFzaHdQ?=
 =?utf-8?B?cUFKY2VIRVk5d0JUUUtKYzZwYVB2ZU0rT1N5cy9HMUZhWmxac2kyNkRXWG5V?=
 =?utf-8?B?ZzhvYjNPM29BWGk5cnVjSkhoS2kwa0RlQ1pCcSt0ZVliRENtVXorU0VUOHFa?=
 =?utf-8?B?WkZwYVpqbHE5Z2tCOTUvV1o3a2d4MU9Ccm5NNjdZVURoUHBnZ3hHYTdwQjRm?=
 =?utf-8?B?MExhZHhScWNiVTNuTnNpd3ppMktqL3dQa2IxUDhGV0RjeFNuNnQ2NnVVNkhs?=
 =?utf-8?B?QXJsS3BSS1h4dVdTYlRFRDllNDFDRElRbU5Eb2JrekloTWNkOFFOaURtQzRQ?=
 =?utf-8?B?UzkxTGQzb0tRRmRWNFhUa0FuN1RVdndGTFJUZHBYK2diT3B5dkNkdXp1TEUx?=
 =?utf-8?B?aUx5WmlhaVBIVFp3K2NYL3Zyc1JFWUdjeko2YXVWMU1yVHpPaW1kaUJQakZC?=
 =?utf-8?B?NW9ERWdLNkk5ek5ZY1NzNE5pcEpTTEdpc0NiZk4xVGlkSjZzaVUvU2hHVk9D?=
 =?utf-8?B?M1JyUUxqR0haMHFnS1Z6czRXZzhtNy9ocnI0RGlvZFlEV3loWHY5c1hrV1U1?=
 =?utf-8?B?akJuN1diaE5UTTBRRVdlaWc3SjZ2TXdzRUJjaVNiYlozUXlZMUNWbmlDMmxu?=
 =?utf-8?B?MlJmays3am9nejNScXpTWVZsY3MvTFhGNHJLL2VMMTNOYkgzNkt6ajlnam85?=
 =?utf-8?B?S0h4M2hRdVBmbWowaEUyMFpoOFV5SXYxNTl4dE50N29OZ1Y2emxsRnhQSk1y?=
 =?utf-8?B?WEVta0RKQVRVQ2h3TGNOTnc4TndYYndBZkFQZEIxYm9qSDQ3K3VmUGlVVDln?=
 =?utf-8?B?MllzZTZNM1hqT2ZPMURDTk5JVHBvMzhta1MxYnNmckZnd2NkaXUxVG0zL0dT?=
 =?utf-8?B?Q1ZNK25NQURhREhRT3BzUjduRTQrQXBIK2RwaXRWYjJKZ3ZxL0pyVXZMOFlH?=
 =?utf-8?B?ekVTdlNMaUpKRlZJUFNqeHdMaDJwQ05QcVhUS2p3cmtFa28yNzBNOVRRNHBB?=
 =?utf-8?B?T3dkNVFQdGtHTk9VMXl1eFlZQ3g5R2pZMnJ2ZXpsQnROZXIxb2hyVlR6VCtj?=
 =?utf-8?B?dWZTQ1ZjaW1tUElUWGZxZm1VUHpKSzIwZk5SSGJseDZISVBVeWJQNlJPcE81?=
 =?utf-8?B?TXBBL0FSV3VCbGk4V2hqT3NCcDR3R3IxUWd2N2RDUnBkbGRmWkVZa1ZGdnVv?=
 =?utf-8?B?T1pGeXF6WlZVTmZoYXFPcWtyQzVLMlVvNWNYbGdSOHliNzg3SUFWZ2JHY3VU?=
 =?utf-8?B?MjU2RVdvZm9FV2szd0VQY2JoRU1GbU12RlpwSHpINGIwcnhRWHMxSm5BcndP?=
 =?utf-8?B?YjRLOUNCWXhJbXNEMDIvQ1JybU9aVkpYMnBEb1RtOThQalBMU1UrNjN0aENR?=
 =?utf-8?B?VjVpZ1F2dVk1aXcrZ2lvTHFVUnJPb3k1d29za2Z3OEJrbEhYTFRKQjAzWnU1?=
 =?utf-8?B?Z1Baa3ErWFhRNDdTR2lLUUZCRFpmeWpBWU95QjlFOFd4Sk9kbjhDcklPQnJn?=
 =?utf-8?B?WXA2MUxlYXArTDYrcE9ZZ3hQbWszUGNTSEFNWnpXWFdNL1RnTHpGcGhTVVkr?=
 =?utf-8?B?V2FQVVFNZ2E3cmZuZmtOQjFLM2Y4alJqWDV5WU1kZWo5NGJ1N3Q2OGVYWUow?=
 =?utf-8?B?ajlOeEdUbGQ1eUpLakREM2RCRVQyNW1qVlZzSDRSR2RyTDI0SjFzb0NObTUr?=
 =?utf-8?B?SzFWWjlKblFPVk8xaytWUGpodm5aVERhZ2pVa0VsWW0vU21BRTI3MEtKSnJE?=
 =?utf-8?B?c1VnUm51T0JZRW54OXY2eXVkSGNNbVNTNjBoUUlmbG9ESUFwdUs1UjdHUUtH?=
 =?utf-8?B?VVZLUzY4TkZZTVlpYzdFNVp3S0ZqdG4xTnp5WHQxemhRZHFWM09QTTFiZmUx?=
 =?utf-8?B?L083b2dZR1RQNVVQVzFVb09GMkpnPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5288.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 258d9431-e214-4e8a-d8f0-08d9dff495b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2022 11:19:42.4977 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fHmyVzhDyPr2BXLnaNP2WWvJiK4RALSE2aGR9Z/j/RvkFKU9d3x0EoSpDVNbtTuXI0VBbgLfaQdVPL7p0IeItK9DuGF6pZ52X3imf7MIPFc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0079
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] iavf: Add waiting for
 response from PF in set mac
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
Cc: "sylwesterx.dziedziuch@intel.com" <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>On Mon, 2022-01-24 at 16:45 +0100, Mateusz Palczewski wrote:
>> Make iavf_set_mac synchronous by waiting for a response from a PF. 
>> Without this iavf_set_mac is always returning success even though 
>> set_mac can be rejected by a PF.
>> This ensures that when set_mac exits netdev MAC is updated.
>> This is needed for sending ARPs with correct MAC after changing VF's 
>> MAC. This is also needed by bonding module.
>
>This sounds very much like this patch [1] or is this resolving a different issue?
Hi, 
this is resolving a different issue that is being currently tracked on bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=1938635
>
>> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
>> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
>> ---
>
>[1]
>https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?
>id=c5c922b3e09b6e5eeb9cd2b1122f3e49c0bf2283

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
