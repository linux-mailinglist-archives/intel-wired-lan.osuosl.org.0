Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF075B30C7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Sep 2022 09:49:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4308740476;
	Fri,  9 Sep 2022 07:49:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4308740476
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662709776;
	bh=m9qtDVCNBBLkuG3OnkTHlYGc38decbZtELyshMMK3cQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nIpMak/YLipTYq6kUvxL2QBiBUWz41hXh7g9JRkMdxs5LYEyeQDRP4JMiZGPQTs5L
	 CDMR3dTo5PZF3+z14TQtpFDN+YpJ/Rx6nc4wrlccTeS893N0uZHD7XgN88JbnjjL2c
	 fZst2VWq1QiCk5zxqlAkmdU6OTKx8Psdbu96Tey46qL6a3IYO0bhY/lRE8RQ0nNCI6
	 VVKUbW/OnUZOw+4vT9CyTxnqDzDU4zO7Eh98DxVd8C37/tGz3vh8Zl30kUbBOFvOjZ
	 xUqx9cLleK+2EJNU7uL4Tl+lSz0DTFXN4o4qhsLsEzfb2BMhS3psJTCKo33DHfXmQt
	 FzQsroXLb2W+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mEbHp2W8ZmBe; Fri,  9 Sep 2022 07:49:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2BFDD4031F;
	Fri,  9 Sep 2022 07:49:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BFDD4031F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4F5E51BF345
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 07:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 28A2F60BD4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 07:49:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28A2F60BD4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nFjh8K5LBdSJ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Sep 2022 07:49:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4336660BCF
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4336660BCF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 07:49:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="297420320"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="297420320"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 00:49:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="566280113"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 09 Sep 2022 00:49:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 00:49:26 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 00:49:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 9 Sep 2022 00:49:26 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 9 Sep 2022 00:49:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oDy1K3ioD6uesd8fepFhlZ0lkODHEFTKlZcLli8iOOi0bZiT7cRsNTMcOaRlf9jbQAMvm8mLi6wIx18IQFCNplFPGj4dCUQX7LG46XgJoeebenYclra45REM8F2AL2UyenEqYkrs80ag1B7pSDeE4aSryFagDprgs5vmvMF35O9756pj8gLBFDDnpqrCozCjAGAlWmGBNE+Y3WSIufk8Z7gDFNcSLTRKIxFi23AD6dLYU4fl+NTRwv9RfkC+DMm0TVufDyYbaQVZfaw7wDfCHpgmoKp39eBZcC6JhEScoh3k3t9O2QOMT9J8qeg/+FwR8WN6SyesphWgpJeveEPSFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DpYXPeST+lnyfOmPkSMuAp4gn0JuWh/j4mAhUn97h7g=;
 b=TtFg1lNZvg1tN1ew5FReYg6ShmMOyAJG7VrZHyExvYgALbaRImqJVeEaFoEDzhSssqj50B4tMuc+PmtmOWBgZ4TA+PGxox8QHhE2JmnGI2EaCGrFIPw3EHvbUlkolNja5VCMyXL9C6Co6tz4adxnMLwxoZnoS0dgqhTu7SFbcq8hUxGmxDj/iLbTGLnXD7dvasKjMtNYOODlXI2lbKdRXEaGwV8qzxsORka8kBPTKgeSd/RbiEwbcte603ot3un7qchqraZcr2HZZYbSJovCjz4cK+9mMfajRZ1CooBdKjLRvzSM7VjT9qkVgs3nzurwnjF9MJVg4eVe5xl8f43nog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BN9PR11MB5451.namprd11.prod.outlook.com (2603:10b6:408:100::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.14; Fri, 9 Sep
 2022 07:49:24 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b80d:5e10:abd2:c709]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b80d:5e10:abd2:c709%7]) with mapi id 15.20.5588.017; Fri, 9 Sep 2022
 07:49:24 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v5] i40e: Fix ethtool rx-flow-hash
 setting for X722
Thread-Index: AQHYwdissdlDVT9KgkOX1U1VYG1ieK3WvYQg
Date: Fri, 9 Sep 2022 07:49:24 +0000
Message-ID: <BYAPR11MB3367078D4D72DC131671E910FC439@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220906100700.930860-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220906100700.930860-1-mateusz.palczewski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d857b706-f3b8-47d6-dd37-08da9237d05e
x-ms-traffictypediagnostic: BN9PR11MB5451:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a9/yFsm0O8BpQWWQNc6gAODN4HCAhjmh53M5rF9nbOSL+dxq7YiksxkMBCnKXWTMn14JRcHb/l1FzuqHW66lqo5M6ooobw+Ezl1GPiKOxp9Dtu1wB7c+q+kOXedEZJURGCl1E6ggbkagXhBcD9P7fGVppmg1ugR8poRJJDsyEaTnEA23dt44DBAUwVqnJBQlE/2BG6vCB3oeTEHWqiWSkmcMJL2nOP7lTYB+y9LJbTsoIEjCT4TeXWyf4YplGlN7M3iVQxdxZ/Om9erYnKiP6DLdt16gejgFkA8DMu7GMjY8uR5KPF1/zqmDXgjjtxtHhv9TO8BRto32Y3AF8ws+D1TKs8lM7Mp/YckO0td4iFw1lIrLaNjVaMaYaiKyaFcUMRu2WbvhEMXD7EnlGQiNQrL/WEcj6GDBFSXKbwigDIxQlHnv9l/dkWQfdOsVd7UhSTLxPg3Li1y9wPWq1rGntQ8QeXhzuR3CbToV82zXOw1wTiCYwB2oepsay5QTWU4nZv9WhHs2MRZTJ4gRPJaawQYsgRGxQpLnRuXevZ5th12xoniLsQVsq5iWVKZ6r16E13g0f+iUaOA/H3TxmCFfsTLQRtoqNr/tkJFyJd2wT8KSI8vV8+ypO3aXV+fMqY9VzSVLl+q2RvPxre+YSQbk/m9SP70HWjuldRSRhIo4WnWgNlAImTLPAws3+v16vhn7nSRuFpfrDTAfqFhcnsVl0MQZ0d7yQnU/UOyoakjYZB/dWqOo9vSost6wC2advRYnenNNRR34usaF4sO8JSCVPg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(376002)(366004)(39860400002)(346002)(136003)(186003)(26005)(9686003)(2906002)(7696005)(33656002)(53546011)(83380400001)(316002)(110136005)(5660300002)(6506007)(86362001)(38070700005)(82960400001)(122000001)(38100700002)(55016003)(478600001)(41300700001)(52536014)(107886003)(8936002)(71200400001)(66446008)(4326008)(64756008)(76116006)(8676002)(66946007)(66556008)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tTzlHJqnV23KbGE4I1BrKrhAMqmvcRl2JCwgxYUc7SPAOe8bQ9cc33vJvSak?=
 =?us-ascii?Q?lK33vJrWwVcWwoB1GQWcr1M5PkoVFteRHHl6FuRaHEChUqrscK2lBBU/TJlp?=
 =?us-ascii?Q?e2nsbLY03RHKrjC83ohEZiCMsd2Z5mvMNOP1Hzo75rRMiEpeefsYEgfH5p0c?=
 =?us-ascii?Q?yNA4029NkV90RTUnFbqzIrZym7gdSHtft/ttirrLvuqPlBX8LtU2nECaQf9w?=
 =?us-ascii?Q?ujtT9p7dBLxRZR24hMyeUVfhwQ7Sdy3BVDYCYhSDARYW7DqHZqANWIQKeqQw?=
 =?us-ascii?Q?a0F/4M6mMGs3I+dzIhgbCVV1c+1d/54ejaaV/ZgQr4F1FZteQS6bs6+FvFRm?=
 =?us-ascii?Q?kGgvaey8kxu+HqD/hDXHZInx2NZOiWDW5mpgWT/E0eALCnQ/z/Gm0v6bnY7t?=
 =?us-ascii?Q?JreTOZm438V3pWPEmRWf8EY53XwsKDcmPc0/okQE086PGXl8tVCYA7XcWvQ2?=
 =?us-ascii?Q?NAJM3lGzw1+XUrOtgllPHmBHmrKHbCD/NrdT2l/bClj9nENdpKnY2jP6tEN7?=
 =?us-ascii?Q?yBNYjvZZRWCpaRby7oPj43XbfoLSwcFi59uqbWPpM5uvCfq1z/jjVOTqom+l?=
 =?us-ascii?Q?a2DXIuuBstuSJ6XWKLc7mg9rtnEGuJckOHjRHFXSTpjM3Pfql1a6Co/CZM7r?=
 =?us-ascii?Q?AJvELG4DauDg3H0Hl0hlIoJEgXJWdmQGZiIWOUz70FCKgrtvcUKrRNzVKmPU?=
 =?us-ascii?Q?z5f+VcHYh1KM+OegVr4gUi9Ic/YyqdQKHCsTbhOZ/NdYmrryMajYPBPlCNuE?=
 =?us-ascii?Q?/Xdeg+O5Cwshn1LV7K5Dx9SbNccb8vq/j8W6JFD9ksbY5mjPoHDJUt2eT1HN?=
 =?us-ascii?Q?MHgCTl+caYtOWMTPb5Hy6R6Xej19JGhxV4/oGGq8mCJ5SnfvREhDq3fykD+C?=
 =?us-ascii?Q?8G9/hLSOit0yVLFlLtiwHOpd+7V8xo2QrFxizGFn9HDrbPeC4oPwaVhS5uL/?=
 =?us-ascii?Q?wgZf+r2hYQuReNjZPPdwNhnuawQlt81BEK3xGq2iviPcTZglS3GPddBCe/pZ?=
 =?us-ascii?Q?CP9zYx1bH0DEOBW4HPrs//KnmqU/avohWTyrk9CMhwTGGI0XFGRi10Gyna/R?=
 =?us-ascii?Q?awr6CHQsHVl8lg+hCH+tIkwNG7y7otAArNhk03OS7e3gvcUtu5pdMa6kBihO?=
 =?us-ascii?Q?LikSVOj5rXtI4UjQSZZllmhTsG5Lhcmrd6oEkZv5pjWp7gMTBiXA8y+Vxmrr?=
 =?us-ascii?Q?oP+V5yvxgIjNwPBIf0WmGbBWYCQkII8SzJtzpNL4sFxDoH6DTSkhn1tQfcZr?=
 =?us-ascii?Q?l4dYutQ3k6ArZ3QigoTzVsKbXR5y+cY5G1qPV7akSXy+5yNypi9415QZ0j/i?=
 =?us-ascii?Q?qlk1BpysSegrSfCTF1onHwQpUxS4utumkX6b+h0tiaKXyJSVOoA42fn86y5B?=
 =?us-ascii?Q?UTcnIy3M36WXH70QtgkyKHTkqyVLi0k9NF9Xi/3vcmkJlLNAVoDXyq85GiAY?=
 =?us-ascii?Q?pLdzuygHIwe5Tg+P41PQfZiG+bSWL+6CC2wYxeMcKL5Fy0WjK+VtgtGt80Q0?=
 =?us-ascii?Q?hUw76B+XiRJTgih5fXMTw83yI77HgOA3l39QTX/y0R8SivijnirxnVeTPsup?=
 =?us-ascii?Q?ep1t5mnsfzcptskqy8u+6FAJriujrFLwnGNtZF1X?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d857b706-f3b8-47d6-dd37-08da9237d05e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2022 07:49:24.2924 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gxnVQPArTZPUUT3j00traY4LnbfasgkQgT+AHonZwFBuAT9HHtwQ7DWAGl4QAwHtUPcWSKDrGksgUJtjfZSFJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5451
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662709769; x=1694245769;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ditcK/HZt04NLGlhTiYBSFWW6yq4wo3dfqaKOCjL71Q=;
 b=Pi6pE+ObCOCtZPV1oqdJAkU2QedZ4uAqcKS7T6bfjk6nbr8nD4XP9G3L
 wxH3dyOcxgjrEcomGVDChRFP0I0dfLVcuweglYQ3FMFOyJt6YogHrTK8Y
 ZAhbB8sZgRhFjS1MWahrEHZhMr4Zdw0CAcHfD7Ada1OPD7FjeRValtXRs
 GVkOLx7lLI+wf31Qei8Wk2EvfWM0qsHU8zcPGZKl8etLMqt2UceWyFqlP
 S3nj0rh0EyY3784hDp5/bQEGEQwderwm4Ir3lFFAuCnF7E52TjT5goFQp
 Lp7QHLYmo9TYkZiZ+LypQ8bDLDnzIkTJKA0BNHP0lg8jMR3RXvbskDJoB
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pi6pE+Ob
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v5] i40e: Fix ethtool rx-flow-hash
 setting for X722
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
Cc: "Jaron, MichalX" <michalx.jaron@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Tuesday, September 6, 2022 3:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jaron, MichalX <michalx.jaron@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v5] i40e: Fix ethtool rx-flow-hash
> setting for X722
> 
> From: Slawomir Laba <slawomirx.laba@intel.com>
> 
> When enabling flow type for RSS hash via ethtool:
> 
> ethtool -N $pf rx-flow-hash tcp4|tcp6|udp4|udp6 s|d
> 
> the driver would fail to setup this setting on X722 device since it was using
> the mask on the register dedicated for X710 devices.
> 
> Apply a different mask on the register when setting the RSS hash for the
> X722 device.
> 
> When displaying the flow types enabled via ethtool:
> 
> ethtool -n $pf rx-flow-hash tcp4|tcp6|udp4|udp6
> 
> the driver would print wrong values for X722 device.
> 
> Fix this issue by testing masks for X722 device in i40e_get_rss_hash_opts
> function.
> 
> Fixes: eb0dd6e4a3b3 ("i40e: Allow RSS Hash set with less than four
> parameters")
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v5: Changed author and order of signed-off-by tags
>  v4: Add missing fixes tag and updated kdoc
>  v3: Split the patch series and send only this to net and refactor  to next
> ---
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 31 ++++++++++++++-----
>  drivers/net/ethernet/intel/i40e/i40e_type.h   |  4 +++
>  2 files changed, 27 insertions(+), 8 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
