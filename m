Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929463548F5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Apr 2021 00:48:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 09E394036E;
	Mon,  5 Apr 2021 22:48:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wnB5uD1lgZus; Mon,  5 Apr 2021 22:48:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0BF2240275;
	Mon,  5 Apr 2021 22:48:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BC6551BF964
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Apr 2021 22:48:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B697140EB9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Apr 2021 22:48:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5pRgwuR__xau for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Apr 2021 22:48:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8A0EF40686
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Apr 2021 22:48:28 +0000 (UTC)
IronPort-SDR: 9EGMI6VQG8hDQ6SRei3MyiuHxcwS9c3/TAIizDS9z/FlriF2YyzZa/Dn2dZaE3mzkltrRSrQai
 g6SdOGRb8jsQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9945"; a="256923279"
X-IronPort-AV: E=Sophos;i="5.81,307,1610438400"; d="scan'208";a="256923279"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2021 15:48:27 -0700
IronPort-SDR: YbF3zvi5QE87yNscQ/LKQwL3iEytT3Z4P8EgtvvP5ncWzdnJod+8ibJRvBWZZASWAOamA0V8hH
 ofiLTbmtxQ0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,307,1610438400"; d="scan'208";a="448254738"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 05 Apr 2021 15:48:26 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 5 Apr 2021 15:48:26 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 5 Apr 2021 15:48:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 5 Apr 2021 15:48:26 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 5 Apr 2021 15:48:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PJj3BkJYjVCSJsuTX/KS0Nvw1kckmqXOPOJECfgj8l2N8akjCGYFBjnMpi2idXQzR8e5g7s2pLT90r8AjokaHiZHEe8VA/D0eymE5MC1a/M/QAJSQvil+ZQe+lFT/hTbOLd7YwEYd1fM19dimkuUwMweKQ76WGp7mWtFPeT3COVeTjlwnByTjfpuXMJVY0C0BPh7Ym5YWlkS8Sg54b4d+9VLgaJkNiA18tbWRyOQXKrad5ZXphbvMue2l6hadKbGQ8nC89j0sjvNuZGJFBkeEIwAUeiq1XLlOEM7B1GwHu6REvw+L/RmoqoJDkk5SsoJaFrzkOY6jAmZM2J8fn4aFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UXwuxXykTSxcDVokNr/oXotZXFgyfrd8JqjS/prfLg4=;
 b=dCnFkdoGvR2onAoMYPB68gSRPBAxExOYixlmnAzqXCgJ8YQS+DMSN1ZvvL9xzt9VrFgRkgB/6VPpmUK8OnNrDxiwzdBxfKcI54cxDmbSd1EM7m21Fi1QHFH2/tHQQLpmB6RhYJJe6qTST3UXUuBn6fftrrbdhpB6pCwOeVeF3ZDqzLLOCIY0OTygblkLGoAmpzwhMX1kz4lsmiet95pFPMWZn0+fkQuwxICJezGltO1QFHPPguD6Y97Y+2j5PSAo8x1XY1oYAxDauR33FkmwFSD9mmq48WocoxB4QSsi4zCIws2tYnU17ca4I3ESFX5EpLD10pMaUAUK4KG8SycYQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UXwuxXykTSxcDVokNr/oXotZXFgyfrd8JqjS/prfLg4=;
 b=ZnwUfQ61sqye3SF0ZRoH4iyI5+gmffQ4WqRNmeJhtzv/kHXUHfY5durkEne52n2TjgNlUKU4Ult8xSdN9xIk1nLtgj8bTXOSihL0wqd9/KPO8EkcPlm4dzfoek3uMDLvV58q/gStkh8+DKqpLiYvN5N2M9uZBiyDSklzYaMGkJw=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by CO1PR11MB5203.namprd11.prod.outlook.com (2603:10b6:303:95::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.27; Mon, 5 Apr
 2021 22:48:25 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3999.032; Mon, 5 Apr 2021
 22:48:24 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S57 10/14] ice: Limit forced overrides
 based on FW version
Thread-Index: AQHXIciWCa/UesjgQ0OB/BPb/4J64aqml+PA
Date: Mon, 5 Apr 2021 22:48:24 +0000
Message-ID: <CO1PR11MB5105F2ADC8548FBC8498939CFA779@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
 <20210325223517.17722-10-anthony.l.nguyen@intel.com>
In-Reply-To: <20210325223517.17722-10-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 67694e76-1309-4a6a-d672-08d8f884ebb6
x-ms-traffictypediagnostic: CO1PR11MB5203:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB5203632D2D7FC3FB0EC0BF8BFA779@CO1PR11MB5203.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a3Xit4/oM/KqSlxwo3FCOi+lxx7f1E3xLcC3CEjGLuR8vac7h71s1brwaGisW3kkIdQI4CiqZzhpImCOwLENykmS2HFLk85qqEgQ/YqxYnrTLxO04zLEAxBzFBu47zAW4rCS8jGZKEzVrh4MiPI1XHEdpLef25maIKioHdIysE/VdfotsfzghAqWd+2Jba8u/5aV7eBbmNShPqYIHf/7c7UJDzO477z0MrSM/nQUVXeumdgNMKjtpGFQ6OrJAwusHMQgttg/HFXtrwE2SMnXOjyZUZEZmUePpwwuXSG1poOCKdH/Luh6LXIFdOmWPAH6WtxDvzcKBOOzT3JucZN2laMkFZc9jkq/3xmjUcXVJGvUkC9bbWHBvjTwywd+C9YtfUxp8FzAPh5FY4+I6DfCRUFvaQZ5W4NZBXOKpCG9Do7abXcbXigA3Mh/ekADFDGLxHMup+7/TY+5gaUEzvqjx4dcC7ERHIcCVDfYcvEWP5+5bcVAWijo6GZb/i8wmc17f0FNO7W+g7WlqdDdc/RJZ1aYEJRqUAdj9EFHmi+5pZDDKj31fCyePmiP2QtgoAQrqUvBRynaNKxeKYw2AqJnTBRL7nrMATCL8mURYRUDQoxRvfWRZuGOylgI9MMwYgfHj5x4gRVMtugB1xBq1SZl4JV7FamzbhkLgvOBZGDW3To=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(346002)(366004)(376002)(396003)(136003)(33656002)(8936002)(66446008)(38100700001)(478600001)(7696005)(52536014)(4744005)(2906002)(66476007)(55016002)(26005)(66556008)(64756008)(316002)(186003)(9686003)(5660300002)(83380400001)(71200400001)(8676002)(6506007)(76116006)(110136005)(53546011)(86362001)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?Ihj26SsgFDV+yjO2OrFU8nKiVtmu1MEfZALkDNSh1G5VdIrUICs4zEdyrLrV?=
 =?us-ascii?Q?PClcxI/kcVV9wgoQ6HQ8GODbAG3r0sbCFynsuNv7BI8Mc6mW48a4kEWh2Lar?=
 =?us-ascii?Q?fjRbMfRCbVRvRok6WGvhgF0mMOxIHF/HYZfjfe6L88L0wLugYlTPCRxlImM+?=
 =?us-ascii?Q?5zUSWM+aqqhQH+eFtaiIRFzk+Rx3zH4iRQF0m3StsqSXDA/dAcpreyz+BIDZ?=
 =?us-ascii?Q?KN+NKTtFR+tvYLZjPcV3FgqS3XW9CYv0rW72+wv9GoTl4B83e8jcjrf+OqVN?=
 =?us-ascii?Q?6JwItTDeliT4RjPvyWzwFZnLVaEtId0Xgebmq6HUjNbbw8+wSDvRnRfkSBt2?=
 =?us-ascii?Q?meHVMxF7GiVTxvoAO2Y9w2kNeOEAVicXlNnailemq4diVZrSmp+ay499Bnds?=
 =?us-ascii?Q?b8vo1dvDxAfOoLIRbEYmhShZdwBiihqv40mydpKTU4CL1+nLdda7ffQiIe5K?=
 =?us-ascii?Q?NVlX/fMSATFsqcwyDWj69OYsPqKehDbP39nLobQDYqbL0hImFcNsGcxgPP4q?=
 =?us-ascii?Q?uAk4JyPOLQuQxlzww2qdDiyhFdU2LPCEIamcOiah0CFGnlM+L8atpAxbQ2qL?=
 =?us-ascii?Q?rtPgESsOmSrGnwBlKYZkXx65+H4HRPQgIcYcX9dwn4zjIKkvBPvfxgxvMBqj?=
 =?us-ascii?Q?wLmnzEAJS3Wq7PvEPoi30EjYgZ4aZ7vwpKMdHD5N5fy0tIYWAbMFkpZ2Enyv?=
 =?us-ascii?Q?EGk4fXBDU6v5V+KQUPUwwNNT9NcTS9gZcvNJSP4L6EgU2mC2wP4a7xhGV8yT?=
 =?us-ascii?Q?eWTeBR8bMzLEjmUf9E/lALX+1cTZSKMJdRWyRU5elr5OtKyoEq9p7LMssy70?=
 =?us-ascii?Q?GJRndoJcYdEuvjTBOJYsawvU8IKrHxPj+JutZj84lyVcVweSYR1pIRzotpt/?=
 =?us-ascii?Q?LwltSUHgeYDj0RxI2UZjUpakbN2c4th8wp98i7YLKWOY6lrx/F7YcVBzlt6n?=
 =?us-ascii?Q?9dZd16yGkzO9We0w6pRiw/Qk4hwpVksyO+O9ZhrxRbzbPAoaVWd5c/JaB+zY?=
 =?us-ascii?Q?2ujprhpNsMcey6XswFRXFPTbyz0KUwyok7avlPQqnwiu0LLtk1sRlmgye0+H?=
 =?us-ascii?Q?7teVDbTq7GEb2AKpZv1DLZwiittCsxj5P27lDYNlPsBZFgffcA8y2pMzFphx?=
 =?us-ascii?Q?cyO0aa4YN9doMkgVMpdC5tnWKnQx5tqqtCOqCYfBbL66KitmM3oTkYBBvYJz?=
 =?us-ascii?Q?12Ffi+vzsEsz8BVMwGLOUOV0b1VXHzyrYDv05+OMMFdmF8wYvw2s7EOY0m13?=
 =?us-ascii?Q?9Gq85AcsREKJMvXsQM0hy6vDJQI0N2YQDsihnoJL5ieCugfdHuP4e8mRXmm5?=
 =?us-ascii?Q?fDsXlmbari4dlWRuIq+ucX8C?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67694e76-1309-4a6a-d672-08d8f884ebb6
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2021 22:48:24.5829 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FD+S+fcCu5i7dx/EsAIOBMPTk2ezFsj10zBTy8midOndD24rD9C1sDqauEW8n66MZJGLUL213O+/RisIqd4xbaJsDxAAdkhnl2WJ5JYgFl0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5203
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S57 10/14] ice: Limit forced overrides
 based on FW version
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
> Tony Nguyen
> Sent: Thursday, March 25, 2021 3:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S57 10/14] ice: Limit forced overrides based
> on FW version
> 
> From: Jeb Cramer <jeb.j.cramer@intel.com>
> 
> Beyond a specific version of firmware, there is no need to provide override
> values to the firmware when setting PHY capabilities.  In this case, we do not
> need to indicate whether we're in Strict or Lenient Link Mode.
> 
> In the case of translating capabilities to the configuration structure, the
> module compliance enforcement is already correctly set by firmware, so the
> extra code block is redundant.
> 
> Signed-off-by: Jeb Cramer <jeb.j.cramer@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 14 ++------------
>  1 file changed, 2 insertions(+), 12 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
