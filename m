Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA9544394F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Nov 2021 00:04:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A8EC40350;
	Tue,  2 Nov 2021 23:04:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pu8M-IyEb4gB; Tue,  2 Nov 2021 23:04:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2FCEF400EF;
	Tue,  2 Nov 2021 23:04:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1F2E91BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:04:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0EF9E608AC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:04:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4rHEXD6BKRyv for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 23:04:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 06A2D608BD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:04:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="211441513"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="211441513"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 16:04:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="500795072"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 02 Nov 2021 16:04:05 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 16:04:04 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 16:04:04 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 2 Nov 2021 16:04:04 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 2 Nov 2021 16:04:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LymnNJSJMSUTMr7eYoAMzMkEtMXlBPXFsheCe0usEi/DdsHH1eS1YR3pTrC5TAvkwYEHtcP6Ime9clxgQPE/FxNgP4uyfoTI7Qs/HZ6BiSIMi2vULNPxS2+SoR8D5k368NJA0povPcarjhAp9B7LV9GkU3ddkY05wBp2hIFEY6OJQqnb6MslZe+2dHw0bDeAvC02vRSzq/GItRcBqPWCkGuXwv1JpTwFnfQ4/r/GBo2cCu5iQzEjodzNa/C1ikZdOPw8F376I5ZTF/A+rhUo14sirgr/Zzn5/xxlK/qIY1YIHhPIl1DIVuRlPDo44f2xxv3KCh6AAzHssZO6HUJJqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UQRVQdLDVqmylNN0DtWTEBET84B6dgyenAxq5egg5iY=;
 b=Na1Y2o2rpkZC8gz0IkHNvQPRrQ4g0H9I2K+u+6tqbBMV8JXtmyvnXVjWJL0BOj6Z4SDSed4ncUfq7q09gB/KWLOCFl4Z+1Uk0c4fUR+U0CpoqF/i7OOY3Y4UvrKcV/HXl17F+ddkmYqOWUI3IP8fYsy0iFZITNhFHqh4fsWCzpw78LAn2zMv/n9FMfL9HFBkyt3/YvIJH2iNMXw49XWeifMiAko7Aka2SfwDL8FlDrV9nxWR9htnAamgnqI3JrbI1VRADFS9NoLEd2K5Vwm6pEIke5zsdW+LIrYiTI3bGx2HMhvUNl+krIcRJATB2+zC9IayvPWFzQxlULtwJpN6lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UQRVQdLDVqmylNN0DtWTEBET84B6dgyenAxq5egg5iY=;
 b=SVPoECNY1aSqxGE0EGgoEmh8tN1IhH69PH2Z9qEbKl0UgYZ18bTUNzhX3LICsBMcHioXmjJG7krV1eH/uIhqZJsM9vMCchIBdDh6xJrbY3JmM9sy8KCW1Fh/9JzwZ942lmsAHgjorP1AeU7IdJ7sZQCtSZVGZS4finkbWsfMLg8=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by BL0PR11MB2946.namprd11.prod.outlook.com (2603:10b6:208:78::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Tue, 2 Nov
 2021 23:04:02 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Tue, 2 Nov 2021
 23:04:01 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 5/7] ice: Add package PTYPE
 enable information
Thread-Index: AQHXepIbRGpJsU+yo0eV1gj9S8XdB6vxhqMA
Date: Tue, 2 Nov 2021 23:04:01 +0000
Message-ID: <MN2PR11MB4224A40260DB75531B49EA43828B9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210716221644.45946-1-anthony.l.nguyen@intel.com>
 <20210716221644.45946-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20210716221644.45946-6-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 490ff236-c3cf-4adb-592a-08d99e550f0f
x-ms-traffictypediagnostic: BL0PR11MB2946:
x-microsoft-antispam-prvs: <BL0PR11MB2946926F2C9B515CD12CCB3F828B9@BL0PR11MB2946.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3ytndUN8yRxKhYgsDHvGqiM7NxlAqaVEsoEfkAi0FyRkUhTeIPbOTtSCJpLWVkVFfQGGq0R0vGq3OW2GWa26s8aufH7nVT2Lpv6VJg/RrqUtQoaQVqdj1bJKV+ELAS5bqZf4n6aFVQiOj4YxG1snc8t74ZebnrTxi+zgsjIuwpxAhH61zdanbVRQv2TaLNcGN0mwbcB3j4zT2sOIGVPlpn/bES+Lf9+16Zcgagopdi41399PF2m2eQmj7Q5gc3f+K2K8pp1diMdcYj1fxwfKkEVoU98xc04m6JmPTwjooWySkf20Augy7pW94ClK3mWBoRwl253HDQaabVs2in38tpjGrr8QhqXH2en/OJTt3Wo5On7RwqqonDtDj0a17wLB3ei+PNu92KU2Uv9FyEsHVU9wqcuollrjB6MJ99eyh8uE6JXDegmZS7OivPvROslci0rNyxq2mFs0MsaiWnLrwvUTAYVt0LkIr5+fIHhYrv3Bu/9EEh1Z3/wXbj3aB6MHKpjY818C3PZxpymsj/ZyKMIOPk9tuaoDHCA0uzXZ9ia6gXJ0xCJ27hSMr2wXxdMGBzGJLnyxVXe7DerJap5B68IM4+pfHSNB7XT34ZqqYhfka3vPkocRvU/O0CswEwp8iDDXHWhhfZ00s2z4TzDJrJO9m5+z9EKTj4cgCBjAN85YcjDvVIIXP80cUkLWaiGeanv7AbUT4a6yzTarkCr6zw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(26005)(316002)(66446008)(4744005)(7696005)(186003)(55016002)(66476007)(508600001)(64756008)(71200400001)(66556008)(122000001)(8936002)(76116006)(66946007)(83380400001)(6506007)(82960400001)(9686003)(52536014)(86362001)(2906002)(8676002)(33656002)(5660300002)(110136005)(53546011)(38070700005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TyhNgTb2pNbvlQ4MDmA+WbU8lQ1HlgZGxOPPMSMt3AOQSbliqKoV7LNb2TWJ?=
 =?us-ascii?Q?H8ueXNX+AjR+K2Fu6LocMioGg61DOCulB4FGafrFoOcfQbwDww5TKUIx6tdW?=
 =?us-ascii?Q?XVPPg3gSssvzT+B2mk/USCIK4txnlBy4MW/994dPUP7W246FpBDHOP8rPjda?=
 =?us-ascii?Q?4219sPB3CstygXZX3TK0lAcxqb1ymP8FF6F0Wx/aEjvFTcWLIdG25VWWlvCu?=
 =?us-ascii?Q?3EVw3+TCPNcsKgNxzJaZw51/LNHiKuDBtpVYA98doXI3TAXeFm96XFw7kqgV?=
 =?us-ascii?Q?KK38o86X4tPcfpYhxlrRirbb+DqIH1U2Q27G8zksYOrgadi3l/6RKTemrNll?=
 =?us-ascii?Q?TGl6fwc/T4ReBW7S2++0CVGjK+7VsctpiC3okDKTZ5we72yWbXzqLqEIwpoL?=
 =?us-ascii?Q?hPXEw9LBq7YtRuGiwPnSUeKJansc97HQPH7AGXR04HPKml3BzTSmDH+W8vlr?=
 =?us-ascii?Q?8kHXVDRwdfgG3MtUuQHMKwu+ko2OSjUkq513csQrbhvSM/mCfNneLy/FkoYE?=
 =?us-ascii?Q?3E0KrTiTNrFgEGnjD12F2+FQ7IoubPAd6YbxmJ7pbkIjXND64hU3OWOfg5tY?=
 =?us-ascii?Q?eIlBEVj/qcrGLlNw5W48TTFoZIgD2pqW0Jt0cco/5fYLisz/COeV5dyhbCES?=
 =?us-ascii?Q?qiVPp7SkeVuKbFhYBzkMujHKhf14RMX8bz8DyJ4BTfqkuPXLZOP4cevnTzwX?=
 =?us-ascii?Q?k4nJo7NT+UhnzN7fC3mIoH4w3HEg/guRlhNH3Hewq1F4Q0RqFKp7ayl15vUM?=
 =?us-ascii?Q?C96UoSQJSJOmKjvWXfzRFZeE7gYzR6XpovkXvPlyPjEZEkG3yeUJkuL4V+/X?=
 =?us-ascii?Q?djeEJJV/4386bpaH+B15E40QFxSBE7KuLxG4xnA/W7lUdvYWcY8nRivfK3U2?=
 =?us-ascii?Q?IzRV+u91LSH1TfSwftaSvSzYz0TZCzH1oyeaGya4swi5MHnU+OkLetHxiz6x?=
 =?us-ascii?Q?bs04H2S/iS49ILjLdap9rAcFwA/mzcA86+eN3poPuV6G88M5wGIZooNHugOy?=
 =?us-ascii?Q?26+U0xHTbE178NvyTbl2ivzeiNt616aS0ZA3FX/wgzr3IFDSqkZhVZCErZyd?=
 =?us-ascii?Q?9La8TBW439SmL8Bu/piB8fOeX1D1RNoGBh+QovR5UasW88zw1n1wFAjepU68?=
 =?us-ascii?Q?rSiToctWWe8BTXL1q4Oa2o49yr/T+EMEK+D9IfxmDuH3uwQXZUeRXh8dF6xa?=
 =?us-ascii?Q?Lrzaiu3d3rKKVnc1+qnZcmCRf87P87naZjQFpBviTa8ZUKxXLWqstbC9fj1k?=
 =?us-ascii?Q?JgJeJRgglI+bICQGVEp9OyiGk2qau3XfvuTWSgAtEKnDPMSFObxYcdxINz4b?=
 =?us-ascii?Q?lL47rCb8TJLM2IwzwipcoHtTgvGkfqyhzkn9eO4SwYXTHMxQl46+zkRI2cgH?=
 =?us-ascii?Q?WfiTRSXPq5jobHILIUkTp2rARGEYdrYhVKRdOvu4bT4kjeQ32Z5A7y4Vz6jZ?=
 =?us-ascii?Q?951SPT2hrlQGcyXF4E3MM7n960kOhYEUSOmY4jfVVAFTQOXoPGpY6N9j77WY?=
 =?us-ascii?Q?zFKYFbuHHS9BUkoSx/KRAaFQ67x3Mczcq/EMynkuTUBvPPUdKj42ELZziKBj?=
 =?us-ascii?Q?eLyPCF7mkp7GYCgEts9ZcjmY8CXS5ZRC1hVxXfWzvbHy/K5+ymEvSLmUiECe?=
 =?us-ascii?Q?2w8R3bu018BIe459lxZRZKB1GQEr26+tNWH9ZarXOkt6ipszwVjC30Mgz0mp?=
 =?us-ascii?Q?QxDngw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 490ff236-c3cf-4adb-592a-08d99e550f0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2021 23:04:01.0659 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HeZYsaPGrI5v1wn/zqpfvn8IuTfcdS6xg6GAop2DNHR2ICIwYJIqWwR9HZ1sexp3nmWx16rWAYMxjHmK0Vmk4AHRaQIdA5KcBRit5ffA8Jc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB2946
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/7] ice: Add package PTYPE
 enable information
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
> Nguyen, Anthony L
> Sent: Friday, July 16, 2021 3:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 5/7] ice: Add package PTYPE
> enable information
> 
> From: Haiyue Wang <haiyue.wang@intel.com>
> 
> Scan the 'Marker Ptype TCAM' section to retrieve the Rx parser PTYPE enable
> information from the current package.
> 
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 76 +++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_flex_pipe.h    |  4 +
>  .../net/ethernet/intel/ice/ice_flex_type.h    | 20 +++++
>  drivers/net/ethernet/intel/ice/ice_type.h     |  1 +
>  4 files changed, 101 insertions(+)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
