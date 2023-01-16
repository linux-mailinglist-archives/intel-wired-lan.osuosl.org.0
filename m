Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B4566B761
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jan 2023 07:17:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C744405AD;
	Mon, 16 Jan 2023 06:17:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C744405AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673849859;
	bh=OQ7/osWRY4omwukQgi6tbih3HQKaAPjQMy9OvbVVZQk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UMTtUFeGrOQLHb/QI7tCdygqv8k1pYyz5vdpAJ01k0iq816drOUgcJKzpOyRltQil
	 z+YDH/nTInMzfCntAYUNLBXaCV89Fbu7NfqwXmhhJPOyRdeSMrdML6KKh4WqR0nRGp
	 64Ymxkqnr4feaynL+EgYjlcqDtf6dZGupD+6o8lKGd+bIJrglBR3OM0EcAo188cCP9
	 hTR1PgQAGQFBa+Ocn/FUi1Aed4mZQpL9ZZfnRt6+b9535sJMJIV5NuVikw6po1QuBX
	 emgUvfjudwgkFTrvrFTG7oTFHs1D8bx0608xbv/sNBXexs/+MHZ7u+TjBc4b+yaIFw
	 5kIpj3AiHxl2g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4ZBeR2MTwBjW; Mon, 16 Jan 2023 06:17:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F79F4053D;
	Mon, 16 Jan 2023 06:17:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F79F4053D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E3571BF426
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 06:17:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 244B84053D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 06:17:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 244B84053D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RIMRmplWozOk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jan 2023 06:17:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3891C40461
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3891C40461
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 06:17:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="388890324"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="388890324"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2023 22:17:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="747598126"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="747598126"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Jan 2023 22:17:30 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 15 Jan 2023 22:17:30 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 15 Jan 2023 22:17:29 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 15 Jan 2023 22:17:29 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 15 Jan 2023 22:17:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bxkJHpRzLmsu+kUP1YQqpjb5DPQhQETXbsp4MRCdvsLeVz5YXrZ2/lA+bZaGt4VGcMw0tAg4oNXW19EZJDTYtl0QGMAGssHeSisFtwyRG784f/rnb28GDdsyuwbXkkvrc7b0k9qcDtRbfFZ+qf86TIwOLzcOPfvI+ux4AjpROFu4O5bnmykbQvCNbjCm5vDuiaC+YY++LoJGfppC3+B0u1s8ca22hdQ9GW40I1UwE5JQkoLF4N8KkgXyIi7dcrDBL5tTE5bXYYnjV4o+55+xSIMf/Fy+pw1ciOseuOsYUXJG7KLtIvhDCW+vxW6ATeXX9aP49k95Wr5fOQVarq2VNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PSSKHgIUYAKkcaHV1S2wXx4dIhbeScDp3ekeIo8beEM=;
 b=i1LO0FfkT+0SETerPBHzYwCUBoCEK1am260rh45Qv7JQPkc7IPeRU4k7KXPGWHx8R2YwDWtW9SbNi/qrJZdi5eERJDNT54DyrQkNamxd5HteV5bTs4T0yaSOGZt+zj5w+jBo6TzflKqMMlovsiAt2ig4q9jT5zjSzwTKwrR/QHZ8v6cwO556Z63bUYqh53ZgnnIqegX6NAOZTQi/XLXhl5Y5FD1moHo8cXZPcAcb8AyhF91kvXRCDyPTO5S7a9OHlLSvT7cO+5d1dUlOSwmlx5QROAPht+wNRIXg0VueNyDTld+WmvT9jdLlI3JJT+Y3NnpGFND0+wNV/kBV7M3PeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BN0PR11MB5709.namprd11.prod.outlook.com (2603:10b6:408:148::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Mon, 16 Jan
 2023 06:17:27 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5986.019; Mon, 16 Jan 2023
 06:17:27 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v4] ice: move devlink port
 creation/deletion
Thread-Index: AQHZIVMlidcWHTouWkWDDRfiRsp5Za6goaAA
Date: Mon, 16 Jan 2023 06:17:27 +0000
Message-ID: <BYAPR11MB33679840D349441BD6E866C1FCC19@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230105221415.15394-1-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20230105221415.15394-1-paul.m.stillwell.jr@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|BN0PR11MB5709:EE_
x-ms-office365-filtering-correlation-id: 5903af28-01b6-41c9-3688-08daf7895785
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T0mQQp14oi4+L89YeVA40QpZyFbvAczck5t5PdA6WgJVGXvYz2+BJaXSYAp92xREXGugrsAfpibD7c27sQz3qOZesEj1Frpc0/ipD+WZqGZLbaoUAkeAIrnp3BkRTLS/yxT3d2VT1mKw6wz5kcjemCuNAs2vfcc4Xd20sXAdlLpMbPuNAFpJZApUC0WeQWel9C1LWbC8gAjfzW/v+/BnWrFYIUvC2wywhZcPAftryCrhHAQKFprZ/R3Sj51belV++PhWGL18IR7XsuQfIE8HghIYfuwG4ZXiWLbluB7WD5x8cB1Qc/GdTOFiIoJCZzQUVALQZorFNc/AL0IxSA0BcapX4kW25x70C5ngYK12yHQFc/PF5ka30J0FF6har1d7vOPPtDEAQUNmHlfC8HfcRzOS1FDf+YnqsVBkUXN0xhjpH0+WGFbcrbCK9YWu3A7rQoEtkrL33HfXQerwOSqg64DgTCoY5oBd/saPa4abN1spxXzJ892DdmUCehIR3P3whsFaMtNglFsl56JWK419A2ruV+fKWypSkhl7CQoZ99bynAA5F6Sd2z1N0dtyo9xaRRc1iEYzsB88jNuGJEytagpy6OP1a3cp0r7Um+zpLB+oHBu5wHWCYOirg+U64IONrvpIchDvkkdYNwI8PZyRMpkq3pvNdYD+QO6say44P4p/ImNymuZxnh3kD8i+F2oycoEzNRMW7TzdWL0xTD1ymg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(346002)(366004)(136003)(396003)(451199015)(26005)(8936002)(71200400001)(6506007)(55236004)(478600001)(55016003)(33656002)(186003)(76116006)(9686003)(66476007)(8676002)(64756008)(53546011)(41300700001)(66446008)(110136005)(316002)(82960400001)(86362001)(38070700005)(83380400001)(38100700002)(122000001)(7696005)(66946007)(66556008)(52536014)(5660300002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DGKKy496Htuak2BMPQUqyCZLb8fd+6A7UAIUAUkzEBdJS9vWf3oormtWl1Hh?=
 =?us-ascii?Q?B7+E9BUZaEdcnU2Dr979GTpNbBiLB1S3YNPU9IztFmtm3U2LdrBMWAzvSSf2?=
 =?us-ascii?Q?fMiiIfUYsSziLUTeaJ/EhOGkCrHPkcOatg3/8CkLgfZYWrS42lOrs8C1aGTp?=
 =?us-ascii?Q?rOMBrdp1Ol6SvJdFP7bzWoGMYrjlGUTbJLQ/VK7cqQwT8LIL9TBt1LH2Olkv?=
 =?us-ascii?Q?Wiv5NJKMjVhU7qdvsms0fa9uARrvwsa4auMXmSKFBdFsJwk/oF3EYLjQ0Vwe?=
 =?us-ascii?Q?7Oh226lncY5GI/6+Wy7U1U3FY6jGu9bx5xlhdQi2oZYuE0CqAKPRMX8fey7q?=
 =?us-ascii?Q?QetCf1nwYrqYQrGiKIlrnb/QC26dKfmerItKCpVi39TI8oatLzEMBSBN88k/?=
 =?us-ascii?Q?6aYVYrPtzz0VAgG2N7aZUUfvZsBFguBWC1v6c9HmZn8qfmCTiB1P14DLMbgX?=
 =?us-ascii?Q?MexFBZPk6KgrXmzT+0FZx2fnMAc29GepzB06UI1RvVEmgO1CsV42ugTbFwZC?=
 =?us-ascii?Q?CkuBWEpYWrbVmlrf/0suTVaiXgEbEl2vdCG+sNjMaKbarI9ZEBMVeZG8hQRd?=
 =?us-ascii?Q?UaszsyOzVyrvKekwZi+iLrkx7zeUfaE9ZKwlkBo8dTFrRAujEl7C+cImHXmp?=
 =?us-ascii?Q?4IC9yYMFJzmpRiKry+LojVrDlFTYkWuMl+I/6X+X9IKzOcqolC16Gv9B4OKz?=
 =?us-ascii?Q?T+fqoKG3FAz2iLvOlm5QcqtxnD84+gDnmwK6RXee4vJKCq3eCILxcnHAWKQv?=
 =?us-ascii?Q?bWQe6Rp5PXi3+4oOcfEtapQo2HvDRkkQvBNIQkzA8L/0aLglF1Y/tT20iNJ2?=
 =?us-ascii?Q?qbWH75hgc8WecqTqyRgLqHcSeWJdxtRLcpYgAGIJjvENuIMZBPuLcm2Y18/r?=
 =?us-ascii?Q?zTALnyz7/7kPchmjLpVq3PAwy6AMl/amQ1/ci3WRbEMKvI+OmYEsi0HT4cWi?=
 =?us-ascii?Q?0y9KJZOoagSP/7DwC0Rm8UWfOk1wxKDRPiT+AFOl+sVNuSaZHf55tt2CEMau?=
 =?us-ascii?Q?tsypB8UBD05bWwew54mE1UNits6oBa1RVqhz/Qh8lXi0UYyl2XAq6xn9fg53?=
 =?us-ascii?Q?Qr0v24KOy+KB2XhdjVNxXsmAdgE+n7+vgD08cHqEvPrsmZ+C3NZz2HDRLyev?=
 =?us-ascii?Q?+s7e0a/fM+NzJUPQcO3rppqI4AXvqSagwrMcWDpc5rV1NzFS5GcTn1XNLiRq?=
 =?us-ascii?Q?xiZqqf9Nx6M7AE+kte5hoAzOHFzmkKXcg9wbjJOMMIhhLiOO78OWVL8q5ySl?=
 =?us-ascii?Q?ptQQELD2XECXbeWjGgEZ8PtZhy7ZM8CqO0NVzvXf1ODjJ7zOj5kAOQwCXthX?=
 =?us-ascii?Q?1WqVstaxR42eOI7QSATxINIedG1YUx630ivBhS3EmhSEG6cTcgiGg2BzJ1fH?=
 =?us-ascii?Q?iEozTl/fQSetgs+4DPKd/uP70S1UpicWcxQlTuu7L6UMToMQ1mohFyrpF9Ct?=
 =?us-ascii?Q?Pedr+1oTOwx/rt3EwyVFH0E50vPZtCzU0fvxbc/lI/ruZKMY63PsxRvyeTJa?=
 =?us-ascii?Q?eR4Pqt6mRRsrgr0dcvbSfsURJNUJu7ZkLcf7BnEmam+JIAYH37iMHF0Ymi7a?=
 =?us-ascii?Q?bDGdqdLKi9zxeXx2AH53xQH2AuqsJfqz8Hz2cd7e?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5903af28-01b6-41c9-3688-08daf7895785
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2023 06:17:27.6962 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fSn2fVglCEqSRTisEtB55hte4ISuIRtGt+QQ7ehOyKLDM89AtLck8gPqr6LjJ8zueUFucdD01oQ7zU+D3lFUKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR11MB5709
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673849852; x=1705385852;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=fXaqW/6qojbdh8nfPTrJbK3cPUIjHMRojW/kys85N9g=;
 b=RULgQWb2e500SA7I7lZA9eTFYDY3qCgEU2TCeA+VuChlGx9JCIUByNAo
 5zDn9N0jMf8cb1jpOlWwY4ejHJbscbfN2BedB2hF5u8xG331oddI2ex9V
 hXrQ0xbZ4wgOJ2+9M1NqERuGBBxS2CbixcA7SY/LtkxWJ9h7hUigf4xT4
 8GQbf+SSfkgKDPIYlYaDYUsZWhB9Czv0NZOri4RxT3KGIF1plZLGudQWt
 0G2+OTdiyPwabI3wvbmx28UKvgkaTCj0Hq2C1OHXnzEhrN0Q5TFkntx+I
 I4I39P23NMuvtoXG1b9C8XFHoc6pZotEFBHgWKwspRRH9cvN4LGj45yMk
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RULgQWb2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Paul M Stillwell Jr
> Sent: Friday, January 6, 2023 3:44 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v4] ice: move devlink port
> creation/deletion
> 
> Commit a286ba738714 ("ice: reorder PF/representor devlink port
> register/unregister flows") moved the code to create and destroy the
> devlink PF port. This was fine, but created a corner case issue in the case of
> ice_register_netdev() failing. In that case, the driver would end up calling
> ice_devlink_destroy_pf_port() twice.
> 
> Additionally, it makes no sense to tie creation of the devlink PF port to the
> creation of the netdev so separate out the code to create/destroy the
> devlink PF port from the netdev code. This makes it a cleaner interface.
> 
> Fixes: a286ba738714 ("ice: reorder PF/representor devlink port
> register/unregister flows")
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  |  3 ---
> drivers/net/ethernet/intel/ice/ice_main.c | 25 +++++++++++++++--------
>  2 files changed, 17 insertions(+), 11 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
