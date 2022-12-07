Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D35A9645604
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Dec 2022 10:06:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15BE441741;
	Wed,  7 Dec 2022 09:06:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15BE441741
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670403961;
	bh=tm6ztz7eXdn4wq3wHVoEwN6kwQ2hq3ahCkfq7SmFJQQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jR4rHgnEkt+0kYh2mjZ4dvFm0FxPvJOgP0XXebBVuyeFG21l1SaNjPn6FJAlVI2u/
	 +GiSnr1ZKrM6m0kQUWCftjYzNIenFSbK1VYkraOMPrByHCOQC3knSPD7aUrQJCBXpG
	 hT3zhY3YkSlsuAtiFGNrgj/aVDqmSYIik2fI+WVHIyD7MWcALrPhT4cCJckIKLdfHd
	 El0OigQWt7EOO2dSX4kzfFtvTlrt1Rk850+p5n5pWqBxzxu34zT6L2rQwXjFBNiidf
	 7D4B5/+k8omSvIkT9fON85Qnrr30a4SqSqDPIhA1/Y86g39x1ywChoqj38gfq7luij
	 uAo25QE68x75A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MKAMiRYogwd5; Wed,  7 Dec 2022 09:06:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83596416CE;
	Wed,  7 Dec 2022 09:05:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83596416CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 86B1F1BF327
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 09:05:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5FD3D60F9F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 09:05:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FD3D60F9F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aKehLHKdc4yN for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Dec 2022 09:05:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9089260E5E
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9089260E5E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 09:05:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="316857753"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="316857753"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:05:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="820891854"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="820891854"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 07 Dec 2022 01:05:51 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 01:05:51 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 01:05:50 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 7 Dec 2022 01:05:50 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 7 Dec 2022 01:05:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GX8R+/hNI+IvduUGzUEAjY0jUfYRJFhYpeFIhn9H6tIeqsFeHBbq2WoewEwxZQcXGtLEzKqxx91L4+U0vC2souzHzUjwX9q1JiIPuuj2G6vuvsVRjG9Qn4GJKgqDD+Rz3B5bsnBuf307jfNcuc4aNKd5gmBbMjHnsOuWWi9Na5bCxa9+MByGbdbSRnJAZdpJ1fh/j/yYRisFwEQSjyMx86iSYtU6TPufBuCXwT5Ca1MRQZhrUXLBGnvU++APr23VbOfTbWnUGmuXI6KYHyxR9x3G6MnU4FBTF7tcmOSWVYfvSY+b+wcWEi0Igbi8ZZNnx4Sqe/sHLMmSNkrzPyPung==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nUeWa7mQFZuILUTMM1GaGi5FLZdjgu6TnLad4nSrdSo=;
 b=hJKm0b8iuk5yMAwfODr97QGqarBtB7QAm/dhC++j9jR1czCjQcYfD8/R33KH+8Gr4E+cCVcXJxJ99p+WPbRtPQ43rU3GvvkP8m4ghItAgME0Tf0EJNU7Iwna9+slRVOr7emr1JH/v/5vbhgZJbhfzJ6RI3jIaJ1V4Mt5lAgQD1Q2RVm45IAwZFN7TuInnne+BEVQqz9xAZkiRdYKeBJ+QipXyko63VXD629gwiN8cEcf36I4fBbAlvQ2CoSqguHjGTl2ahbjKU81CNjYphUt37Hsvhc9rsjwLY9Rli+v7zIetJKKPN5yY36PV1l1n/HHEq6Q9JIiqwjp9igpENqiLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by PH8PR11MB6902.namprd11.prod.outlook.com (2603:10b6:510:229::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Wed, 7 Dec
 2022 09:05:49 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%5]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 09:05:49 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 09/15] ice: protect init
 and calibrating check in ice_ptp_request_ts
Thread-Index: AQHZCONe15YT+3KAYEOLR8JFgFt8e65iJEYA
Date: Wed, 7 Dec 2022 09:05:49 +0000
Message-ID: <BYAPR11MB3367D2B2393FDAE16D6DC597FC1A9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221205195253.2475492-1-jacob.e.keller@intel.com>
 <20221205195253.2475492-10-jacob.e.keller@intel.com>
In-Reply-To: <20221205195253.2475492-10-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|PH8PR11MB6902:EE_
x-ms-office365-filtering-correlation-id: 43d7fa01-c23c-425c-9bc1-08dad8323bfe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HwieDLgwHb5lKd83P3WGgfRMaYcfBcQDgvkWVeuItzZNkVY4enetN28PsdWN8c+gfMbB1iH4/r3fPRJqVPvKiTblPqRd1UlbzHyxa/ZocKU1teReXeKvUO4ikcsi7hzy3TZHipiKZpV3ul2dOOml5E4nurrdmQCmbTe/1FcnaMKnfz8IOe0wNyVf59UQskHDnyXJarzlTkGxn0eKKfiSJr2fI7mO5OhcX2su2ym5fVjBGR6j8bU6Uc7z1MpnZovbNNkDUbbH+rlTWlEw5FdJ9vya6G5q88nuZJtaSOxsTLhbe4SCqI2/6yqlDIep/CGuf6ENEh3Ncf8Jwl9BLlpF7tvnk2DCyEQavAhWuqL05RmBN//wjaxKgFf1GLNVTnBBYnlUnFF8TXdDW/TWCyL8Q/9efTX+GAeFJv0YsnY7yvfvgmZOh97pWKlifalW2p6miuQLSFfq5rxAMBDJhCB/kH5kBvd1G2cmDYsAJhyd4YbKEm6sqoA3LG+X+3CYAVEX5JIPwIXev70Szg5JUzshDlNKVzgGAOfD6vAKYGvzg0Yo1Y+pw+j5yLgdRkDFR/hntondjPygfR14f+pRJRQ0cEVzTZ00S/sy91EiVXSxJaMekrtUNVZTRE9D3VuQV7Rdv6c3Qw2CTMjV/OSGCD6R6+3tluf0gQRBGDlwHx3o+D3HFH7R+mOltOqZxAZk58Ni
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(346002)(39860400002)(366004)(376002)(451199015)(186003)(110136005)(316002)(71200400001)(478600001)(82960400001)(33656002)(55016003)(38070700005)(86362001)(38100700002)(122000001)(7696005)(6506007)(83380400001)(9686003)(26005)(2906002)(53546011)(5660300002)(66556008)(41300700001)(66946007)(76116006)(52536014)(8936002)(64756008)(66446008)(66476007)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ANHeW5xI3tvx1WwBlXs3wK4L/6Un2f2P5e7aIe1yn+2TzQAoTcTLdprGyB5B?=
 =?us-ascii?Q?xmP1IqWHdwWLTkC9dKTGyCnicQtBrKswTDBLmhtvwDvDFrufB2rRvZHnCv9H?=
 =?us-ascii?Q?RbO2wz4TRlBh/R5SgdXjI252StYdYfIXp+X5SQ3YnIAj1NSl2tIizlzz/ToK?=
 =?us-ascii?Q?CNhDn4sZZUddfhbnlzkPLMAmCpqwE/IgCmmil0ZM/5x46q1ZYX25hBRcTM2S?=
 =?us-ascii?Q?pcVDlJRREhwFKad5nrDNOco3RDbnWD3sQwd3CzY5ga/j8n/oNmiSsoUDeIAC?=
 =?us-ascii?Q?oEqxBU7SSi0U2t5MfVDtvIxr5oOZh+zh8owmpCR16/OX6AHMg2BhQYJNIq1N?=
 =?us-ascii?Q?kFmbhHuTFRlQYi+nR5mmH2ZqUoR7WGTCo75QlaP5MdDoIiaTL8JHuhxB+MM3?=
 =?us-ascii?Q?7w1nyJT4+NbYpOaRkD5wtG4dkBpVH1xNNJbqaPyD+84imIzWf3TmqbrbQbB9?=
 =?us-ascii?Q?qeNNbKLF51g4BovtjcpNyHcELkwDAvoMV9GX+FRvZJnaOiq/88lMPOT/CWct?=
 =?us-ascii?Q?nI4ffPVm3Q4mO8VIuH8P4WvZcMQc2LZi1Oxg3Ha6Omdp1JZQowJfSCvw6rH4?=
 =?us-ascii?Q?pnhB+CeHHCl5hXvbkrIhLpwbL2C7simwAuFFVJnaGzmGGi9ZQOmkF+Lmtl6W?=
 =?us-ascii?Q?Ee8uWBokXIhOfXdw9BaCzMCP1t7y3ItHSzxoGYHrhzNVN8Woj7ob/0/mvN8U?=
 =?us-ascii?Q?EpFVSqimgRrJGLe5kCEjcb5de9yZYKItZ7BltOKvxdmZa4VOmWn4I0S9nNw1?=
 =?us-ascii?Q?CZLLkntlHYUdNEZApAjaAzcN4wlmA3roURsO5nLwh8w76uDI6sGjbZ1wO4Yh?=
 =?us-ascii?Q?j5T85LALHRy+/rTrbzwJgVai9a58ra9sbVvMvavTCA+09QtrNCAbG517SG2I?=
 =?us-ascii?Q?tVHrNt/et02uzSno+Rm9yDug5NccWbGkHj+F33Qr4iy7gboEDhaRcG4gU2cj?=
 =?us-ascii?Q?x2jK0IvvKI3kI0hLTka92K9MClrUe+g4zOeIIxj/oAblDRaGkpx8BjaZLVQe?=
 =?us-ascii?Q?R3VlQQObXigprxlroe0kU6l2DrYdGzqlDQy6Mx61pPdJnCbALKiIVaahb02U?=
 =?us-ascii?Q?YDaarGZ6dL52MJ5xvLdRs9sN3DAQumfxwJigGXx2Sml0jsQ7ZNkkM35uZ8w/?=
 =?us-ascii?Q?eig8hSmTImtkm/9Qg5rK6l6B1bJ/6T2AUH+kQXXLZXlTGHaJrGd/j9vYQLfP?=
 =?us-ascii?Q?jqe3uW6crGVMHS+1LBDZs6nzAar0oYw9oTYRRzpHQyIma8xICPwEMX6rSH7p?=
 =?us-ascii?Q?Db0fmSYOXBvyXOcxqr+lUBVtixbnu/+u7BXWMAvZWsir8dAywJjhmGkVI1RE?=
 =?us-ascii?Q?GoXu+j2ftqoWPyPT7o85TgtZ3aPXL5jfy0KTpOLuNBd9KWDwsRcdI3DW2vTc?=
 =?us-ascii?Q?IE3hO8fST1qMnhqaWgJwvVu2IJ4rNMPND/aDIRaPZ7andvvNHj6gaqMadE9k?=
 =?us-ascii?Q?+dujuWXJpTEilEGsZpm7lpVerRh1SwzKeZAg6XqjlWRxuNhahIe4qMxLUuL2?=
 =?us-ascii?Q?2GeCx+uQaBhU6qzvNOTuP5SnOUQ7RcKF9NsCAWGYt/XaEJT5vtjehw16sgtB?=
 =?us-ascii?Q?2u1TE6n/mWleORCORhUo35YCJy++qdUhxF3JhSvJ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43d7fa01-c23c-425c-9bc1-08dad8323bfe
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2022 09:05:49.2540 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q1t9w5vhswzlQP0m5KQkT5fyP49CIQ/DaQzd/oaRNoRWpFYs7HgydUe3za6AtVyXJgHetIvS451v4wfDEtpmuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6902
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670403953; x=1701939953;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=V6AMR7MCzXN3gh15DyRdGr2vfw/s3WlFlWq9m3Rdet8=;
 b=QvLwJYQW8M20RvuTDT/bXgK8tXkxVJTf3KaF5jJ0DfVzhTmlXFYsaVGm
 C6Xw8Z1P0POJD2wub8X7O+s/nyhG3RLKl2GNYe/C45v2h5MWv2zdTxdJx
 DS1PNM+v+et5xc6/xNQ1WfQ0OfWiN9FPcOD+gq1izZhu9z0r2w06ighZF
 GbKhZnVbmqeWbCkC/oeHwkqRTlUjzHX8CrWtmR0cADGQE9DHDyW7OOa8b
 mIer07vOuqTvDDga3mWQU7z9kXTu3ErPrSi1ueVb+OhivcaSUTetoQkVv
 5sld5fcdn6G9fHHgYOy/o1WCn3lsHYrShs1GZvBzsWYzcjrufdfioXpIr
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QvLwJYQW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 09/15] ice: protect init
 and calibrating check in ice_ptp_request_ts
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
> Jacob Keller
> Sent: Tuesday, December 6, 2022 1:23 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH net-next v3 09/15] ice: protect init and
> calibrating check in ice_ptp_request_ts
> 
> When requesting a new timestamp, the ice_ptp_request_ts function does
> not hold the Tx tracker lock while checking init and calibrating. This means
> that we might issue a new timestamp request just after the Tx timestamp
> tracker starts being deinitialized. This could lead to incorrect access of the
> timestamp structures. Correct this by moving the init and calibrating checks
> under the lock, and updating the flows which modify these fields to use the
> lock.
> 
> Note that we do not need to hold the lock while checking for tx->init in
> ice_ptp_tstamp_tx. This is because the teardown function will use
> synchronize_irq after clearing the flag to ensure that the threaded interrupt
> completes. Either a) the tx->init flag will be cleared before the
> ice_ptp_tx_tstamp function starts, thus it will exit immediately, or b) the
> threaded interrupt will be executing and the synchronize_irq will wait until
> the threaded interrupt has completed at which point we know the init field
> has definitely been set and new interrupts will not execute the Tx timestamp
> thread function.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes since v2:
> * Leon pointed out that checking init under lock in ice_ptp_tx_tstamp made
>   no sense. The helper function and change to the code there was removed.
>   Note that the protection for that function is synchronize_irq now added to
>   the series before this patch.
> * Removed unnecessary lock in ice_ptp_alloc_tx_tracker: we're already
>   initializing the spin lock here so its already expected that no thread
>   could be trying to grab the lock right now anyways.
> * Re-wrote commit message and tried to explain the reasoning better.
> 
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 38 ++++++++++++++++++++----
> drivers/net/ethernet/intel/ice/ice_ptp.h |  2 +-
>  2 files changed, 33 insertions(+), 7 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
