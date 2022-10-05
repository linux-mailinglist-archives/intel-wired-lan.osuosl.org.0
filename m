Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE8C5F5412
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Oct 2022 13:55:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 878C5402BC;
	Wed,  5 Oct 2022 11:55:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 878C5402BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664970915;
	bh=tqgBLpL7RdLj2tMYFret4xbgmkEmXQrTKbtQGvynerQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=chVuhN58XPhu0pu6RRcqmpu7PCPHzjQYPDP2ap+d+hNa9diXnnekNJMT/lz/V4tOZ
	 u1RS+u9trdtuqQKn6GVYpsfQm4whleWxHWJ94KK8738XA+jl0R+Zp6zWAbAEPXlRQ7
	 dLZHl2Z6k7xU7zPve8efcl45HDSVW2bqtugScamWrnC4bL+nVa8aFNW+m/+eo1rPeO
	 xO5I4DPPFVF7kHUPiTLg178IsM0JgTZpjUbY0VLQLyo3LJ3tMkwABvoEGgqohWku35
	 S4fRS4ehhR/gXkc9uhnSBSv54XfwILH11lGGOimy9aPx8nuDb7aVWPoYL1rxRvsqQE
	 nwmOK1DtrAnLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NnuZ9l1DtZBw; Wed,  5 Oct 2022 11:55:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6091940235;
	Wed,  5 Oct 2022 11:55:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6091940235
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9709A1BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 11:55:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 707D840104
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 11:55:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 707D840104
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wNWgrfAZHchn for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Oct 2022 11:55:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B745E402BC
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B745E402BC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 11:55:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="301859777"
X-IronPort-AV: E=Sophos;i="5.95,159,1661842800"; d="scan'208";a="301859777"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 04:55:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="657484962"
X-IronPort-AV: E=Sophos;i="5.95,159,1661842800"; d="scan'208";a="657484962"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 05 Oct 2022 04:55:07 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 5 Oct 2022 04:55:06 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 5 Oct 2022 04:55:06 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 5 Oct 2022 04:55:06 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 5 Oct 2022 04:55:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JQ7F5RLdmaeG6zmduqZOL80exhL2s1K3G1HivzhhLl4InIrz2K7u0rZQWUJZVuj74mFMul1TxPeFD565hUbHVyRl+4zKSjv2IwuoI+xEGqUjyN3QhhclBln7enBx428q7CnqiKFOTJ/w6LHj8mv501lJuVpGh0G9rd1nB9kF7Jzp5kfy+oiv3yeXabomZXn3jC/e6smoUuBlxFWOdJ2ZOqLrCl+UQ2ueUV5Y42EEtVP4BVMggcQvuiqx6nSqlzQzHrpTn5+KeGu1OtVz+ykM9L4I+ExFcnH0RUdnx5oQDR99UBDtZTDz8B4310slViUPV7GaOhUPGqZ/QOInHZFSyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t+Jq5abkty48DM7VGRa7KiL3YspmcIVfxTBzmdInlFo=;
 b=jWJkAXO21r49OBs7MdrSRRNxyqADgKd02Ccj7N3iim7DjydhwfBxmBLf5uoV89V+gjlfapLZgx1frdYK+5TurV7MfN+fzmq/SI97ktKlf1VC5nWqFCD29Mgd9V6dYeAtEH8jmVsSjvxy0F5ykU2GW8eoEWedmsEzm/TncdzJgWqVufrTfN2ymVL2kGysYRh1yAMVdBJSr2SkP8SKTXdhOiwHTUwgOjhyGqOPaWVeh/02PdDvIVR9jy2fEpTooPY0raZcZLKmDoIiRmIOZGwQ+fl0vAFGX8IAKohus03AN2okVoFUUKcMteSvgU4u/cYPJVswDvRi2/aKPULpzsfFEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5800.namprd11.prod.outlook.com (2603:10b6:303:186::21)
 by PH0PR11MB5208.namprd11.prod.outlook.com (2603:10b6:510:3b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.28; Wed, 5 Oct
 2022 11:55:04 +0000
Received: from MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::5438:a337:a0a6:9cfa]) by MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::5438:a337:a0a6:9cfa%3]) with mapi id 15.20.5676.030; Wed, 5 Oct 2022
 11:55:04 +0000
From: "Kolacinski, Karol" <karol.kolacinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Gomes, Vinicius" <vinicius.gomes@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/2] ice: Remove gettime HW
 semaphore
Thread-Index: AQHY1w5IZ4NsJlTCmUKqEWIBce/iga389t2AgAK7M5U=
Date: Wed, 5 Oct 2022 11:55:04 +0000
Message-ID: <MW4PR11MB5800C7EFFCA3CFE32A351EFB865D9@MW4PR11MB5800.namprd11.prod.outlook.com>
References: <20221003095519.539390-1-karol.kolacinski@intel.com>
 <20221003095519.539390-2-karol.kolacinski@intel.com>
 <7b4176bc-a5a8-467f-f2f2-a7defb37b89f@intel.com>
In-Reply-To: <7b4176bc-a5a8-467f-f2f2-a7defb37b89f@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: pl-PL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5800:EE_|PH0PR11MB5208:EE_
x-ms-office365-filtering-correlation-id: 7f7349c8-c4f0-4b75-dff3-08daa6c870c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dJcTZaDGfjpOfxLR/1lYASUlQ8pXHOWq40KcoCpJgXRln0galkOFDop4Ft2D9ExknslXIMoO+FAODBPUTAXRmW3k11qcQSVlEDaFLTU96Vj47IONeUZKHV/hBEo6rsnhKWV1W7GUndjWf8YyVkK6y/2C82UN+85QkNAzwFiGEVikB3SN6LOpYNUF8OkpnrtF0FvJbLGYedK7spjUOr7fRCOjHvs2fa+hoBWW7EDYKc5Vd8w1Q1GgGrcwqkeRX84K/NhioaIQ+Z3sVOZQwUeyQr6vnjQwy1huk7mX/9g80I7oLLPTRUC7X2tW/p4WRfPh6bwhTCrZQZfqnQU1AoPAQgLVYTBZBsSOSGTcrvUPBSMVLHNbLX5NYYKERzaa0MKdMD/nlcTJYKjegCjH6Ica2LIBMvQlNi3EFtVxeT8yqqRiHO+JvePwVUFiAQbHzk6b1NLYm9oIKOBUaJH2vCgMLI2hLDtyeuCHBOEyUaijGX3Cwpcg5hdV7HQ1FJzxTcOV0US7knc2py/XLBaVwCWeuu7YFzllqxM43Dn9j2t9p/GQX99a4SxSNcCVjQQrQIFBUsRnKBsIJkq62Z2AtC1RzgXE7BTxuUuNRXPQS6TC5CL//bg4Js/c4l5LjsibjnOSZQ8PXvnbNKU3K5y3FUaffV/TItPhOmAeBxRzvAFBndZwmTo4eV00z6D0/b4DmmS4bxJiX3DlH57UUnl/Dsi/pElkE3cGa4jTw/37c3Q05uI4gWiVIhSxqEchlOdPZIO2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5800.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(136003)(366004)(39860400002)(346002)(451199015)(33656002)(9686003)(2906002)(41300700001)(6506007)(26005)(7696005)(5660300002)(71200400001)(4744005)(478600001)(38100700002)(82960400001)(122000001)(86362001)(55016003)(52536014)(8936002)(38070700005)(186003)(83380400001)(316002)(91956017)(64756008)(110136005)(76116006)(66556008)(6636002)(66446008)(66476007)(66946007)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?abUYDRjRqeMCuYH/TYUvIEx3C002CIror/ZUV98wwah7mCKtyCZgW63ipG?=
 =?iso-8859-2?Q?WbyafZc38dhsskJnpmkU7MMJl7gUlCD/fzVLAoxaazGvClJBrA1yH51eTS?=
 =?iso-8859-2?Q?X2WsXQt8iiCrA4X50qDTXUprCtER0jRliv+6KO4jJTbR14RyVHIE+nEJzZ?=
 =?iso-8859-2?Q?RRLQH3e6Ks+UsATWPXcWsELpn1iwMqpRFt6He0HzkWrUoCqoiEveiTWh+H?=
 =?iso-8859-2?Q?H1xvI6OBZCci5LIdjIS3JVJLvkFm+aNJL8qD+4mwmvyHk0LppZyCHEaQMy?=
 =?iso-8859-2?Q?UbqkmjEkHjn14nG16ym09npvcBdCcfw+/cg+rWfdyVRY4kORsomfLRuLwi?=
 =?iso-8859-2?Q?2TptL6yHG3dOTNJ/bq9WRhA30nGCtcB2MtipTRDZWcXrFZqaJsTZj4CRUb?=
 =?iso-8859-2?Q?vLu3jTOIqYBjKDLkWuNxAMnwlguuAG7KTzH8jPYERZogBFaIx4um16z+gT?=
 =?iso-8859-2?Q?DapS2peFkjsKqeuZcrJ5Hnaf/PVjDXE5GhQCW+OrxrMV5bEHUMBzrTKKpa?=
 =?iso-8859-2?Q?MPzHwiyeFDdsi2mogF1/kQZFVVmKnMdVy/K4a8OXjDLBCu/0OfFp9WIq5C?=
 =?iso-8859-2?Q?1UvzpOIOyB4/4qHjHOZWq8B3ajnSw3wfTxrW9b4sv3AFUQ3JWYJjl8Vk8T?=
 =?iso-8859-2?Q?HIGZdECHa+rbtXl2RDlfaxUiOqbTlxqRpwgKrK4Zj+BOl/Wcb9XX9jA5+8?=
 =?iso-8859-2?Q?ZzOYWzQU529KPMiXKrcrvTwmp9z2vKQdqvUhIHdzUEEC3V0uU3sMOKGQ7w?=
 =?iso-8859-2?Q?UB3XZxs8s0KwDn9IuHaFm2sYXJY/jA8kG5PpJxPVpg71n/MXll2WR1ambK?=
 =?iso-8859-2?Q?Uwkfzgfs8sCJvhJcPmzYIcAukvQRrJcvcwp5iAkMRxnlcQUDeuFJKgA1El?=
 =?iso-8859-2?Q?oT/bVHvpt9SkElYqdYyrtxEwjEvjGqM1Z+Xg/nxZmK+PUM1byc+wmnLqiN?=
 =?iso-8859-2?Q?wbVqs9/vvHL7QHDMKJiOCX83QkOSXCa7fcak3QgAmD1Yt+OgNrrbakSCQp?=
 =?iso-8859-2?Q?DLjyp+w8leeCKqALSkWKnm1xCcsjDMcSv9iSSMSKc3oXCp8DADzoxaZbet?=
 =?iso-8859-2?Q?lnrXIRFa49i6uxda2ZaMzciOueRtjx3eD8Jwa+QgkH1ixTtavNqSmUyLaf?=
 =?iso-8859-2?Q?N70r0I8khS3XMBre0jhTwfouprLHMCXZSOc5rR+LDiWrn4g+CYM48NFk0D?=
 =?iso-8859-2?Q?b7K16HhoOXFAzoV2llSiPhb89A6or6YoF0TbSlQeljYySwg5g7JZ1w/Qs0?=
 =?iso-8859-2?Q?CEx8kdxeKiM0F39z6kVD/Zt2CKJ3rAHySDhBf/oYpLWISS0e9v611Sm1zd?=
 =?iso-8859-2?Q?YOdfWQN6vZae+j8rXOBg+noca6xyYsaF97mj76u+NNiPx9B4r4r5sur1Dt?=
 =?iso-8859-2?Q?gjUDcUAcgewwna6ClxPLg4floxjsqpYSta+gcw5j8fNatkHBUqV+iz7ubk?=
 =?iso-8859-2?Q?F6ZlqxrVUyCk9n3nyLp859t3HoZogFOK97mMtWwt1PkyaNZFNaLcPk1+88?=
 =?iso-8859-2?Q?9OdkzkYBBZMYR0qZ8GjVWmYwGdpP1l75Pil42xnpfv+useu2lCPqqER31F?=
 =?iso-8859-2?Q?Wj1DEWWo0RwQft/6sCoFxk33TUBiXxWY+BN+6uzTANDc+RzjUsG5OAYv/I?=
 =?iso-8859-2?Q?/u1LBDoHBYGcUxxKDU4HBwvnIaja3YTTclhSgZ88fZIMOX9DuFW5BVMQ?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5800.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f7349c8-c4f0-4b75-dff3-08daa6c870c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2022 11:55:04.1589 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CsBsZPE4Pp/tvpyNbyDsXlv0GF1quJqUnTniYZ1fOCrwcp5nSKStyCkeecZwqfYjvwsZlJp0sfQiOXL9pvqoVy0n/9qE/DozbHRojoet40k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5208
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664970908; x=1696506908;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=t+Jq5abkty48DM7VGRa7KiL3YspmcIVfxTBzmdInlFo=;
 b=kjuE35ohPUGEv/R3XrxMurp5nM1Cx5b47uZBQ9VXhoXLC/FhJD4iu0v4
 UMsWZ9nWtaGxcgyDM21tMG+4CfTs5GQDbxA4Xj0g+3x99e9vXZO4IRCsQ
 eHJKv1FvKkKYinpbB9eGn3tVXx6wn3h0iNw9DF007d0mdqlXXTdahtTlC
 siCGrjyFhNE2dnUSgW0rTOiF53i7hjJeEKKsnO+rRBZD0EALxpaQ+jsXu
 OEBkpq7Avt8cqKl0Qkp4sPTOlziJwtikW3v/zsLPc4p00Dtyp7XLDTDBw
 gfYLMw4qhNVpVkFSBhv7uIwd8TLGQotqDPEyoJDfqbBgUNQkMINYvocBG
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kjuE35oh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] [PATCH net-next 2/2] ice: Remove gettime HW
 semaphore
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

Hi Vinicius,

> I think the problem is less about concurrent writes/reads than
> concurrent reads: the fact that the registers are latched when the
> "lower" register is read, makes me worried that there's a (very narrow)
> window during rollover in which the "losing" read (of multiple threads
> doing reads) can return a wrong value.

The issue in this case is, it's either risk of reading slightly wrong
value or having multiple timeouts and errors.
We experienced a lot of simultaneous reads on multiple PFs (especially
on E822 HW with 8 ports) and even with increased timeout to acquire
the HW semaphore, it still failed.

Thanks,
Karol
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
