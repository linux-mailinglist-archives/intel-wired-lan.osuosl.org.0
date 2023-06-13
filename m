Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B65F72DDFB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 11:41:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1605C40A21;
	Tue, 13 Jun 2023 09:41:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1605C40A21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686649307;
	bh=d2GLhIBRHZC92py/ciqYbzWMsm7P+ZDa39x5pOMPcEA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EU5iIE48YmWYME5n+pZfTqzUq+GwU9CBLGSZUuTpztqs4QbY53r2hIbYH/TfHaU8E
	 7rEaVxMGa9O8QUgkSECMWxAvtT0uAmNkIxJbSnRhRVfcqcq/o30EZyw1PXCRGxwzJ6
	 IGcqFTm3D+0OP65CuPExKvVJjyYtenNwEN6ZKpNrHwkVktrQhp+sP3Yn7syNVezwXt
	 cmOIJBI+94v+lavhuBKgICckxDgcqBeFORlWignZVqUWQwFVue1b8PxHIshpCVwekL
	 k/yYEHneSDrcpigbNGlzoJ0PEVP+vx+o9zgZ8bOt4Vt+tyO5+RfFQ7hNtyHBXnssas
	 E/r9MbwzSZ2qA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wL7CXjq-lVbW; Tue, 13 Jun 2023 09:41:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CFAC7404DF;
	Tue, 13 Jun 2023 09:41:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFAC7404DF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 517F81BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 09:41:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 23F0560E48
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 09:41:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 23F0560E48
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B1cTlZlTm0KB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 09:41:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CAE3360C12
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CAE3360C12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 09:41:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="338641585"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="338641585"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 02:41:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="835816460"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="835816460"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 13 Jun 2023 02:41:36 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 02:41:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 02:41:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 13 Jun 2023 02:41:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 13 Jun 2023 02:41:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=au6M1NxYdlaF6PkLePRB0LA6IOPEMNG4XRadj780g0mIz5Yd1snZ6Z9KpDsvShMx4UDxBeIIcvLp+C2pxdqX9SVISDeTMgT5Edr8DsdzUzTtbVwg6VvzEGUYaoOWfFcDWCOM44HBEBj4Ha123GfwxU6xCRu/NetQmZSeuwu+C4QBm94n5kuDDighWXAvA/RUyex8pNEi38Cg6A/3rJu7SuhEhtgM9RsCmQyX4dkI01MfASq3KX2W9Oj9H401qNttlsJaIWlRq4xtLO3Y4eEH6vsjGJjsJ1z+k6lms07upUjLvPaj+R79viG2piBOBAvFNdKqoLoXGuVHbD9nelFg8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AP//KuWTb9c/OBJiqT5D6Le6F0+C14pJujyb3gUNu2w=;
 b=hGe2+aYSS+mo6BJQIOqtKWyIzA+jxKRhh6cvfBAuXTCnk121gH/Q41TlBz3NR6Fn//rVRTOyDA4aLK1Mfutfb6QelLgivBFRyFlg2W8kAMFNSpXP0bo9oGxqQeEVOVT1Rc9cVWW/WF91sk8gtXjEHTZL2qrPDsY/hmr0x5tHpBvzQ1JCh2nOupCBx7R0cWuiZTlxOUBwN5RT48H5x/6h2HJlvw+ydW7EkEKhAoEIh0j8ZxfMVdtEGobYZVriOfLBmitJWabK5t5bxStgHZg8Fza4h6iy93E5SJkPDiL545sSRA7NQF4dXVN2zaDwFWxqgzQKfcNVIRosp/nfgtX9Ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by DS0PR11MB6448.namprd11.prod.outlook.com (2603:10b6:8:c3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.38; Tue, 13 Jun
 2023 09:41:34 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::7b23:e512:60c9:ce08]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::7b23:e512:60c9:ce08%7]) with mapi id 15.20.6477.028; Tue, 13 Jun 2023
 09:41:34 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 02/13] ice: Prohibit rx
 mode change in switchdev mode
Thread-Index: AQHZjjqLPxPITmWV8k2XH/yxennTZK+G4u4AgAG07ZA=
Date: Tue, 13 Jun 2023 09:41:34 +0000
Message-ID: <MW4PR11MB57761B3E644FDDCF88AD3FF4FD55A@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-3-wojciech.drewek@intel.com>
 <PH0PR11MB50137097208278AE754EBECC9654A@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB50137097208278AE754EBECC9654A@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|DS0PR11MB6448:EE_
x-ms-office365-filtering-correlation-id: 3deb071d-6cc0-46d7-40d3-08db6bf26007
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nqqA8aLJ96bNxTCFmMiMtNDkynMn+BOkx+Mm80NKk6nCXbL8yXa4iqMXEO/8PSV+qyJ/9M4OTsf4g/HJu2SulFsL3UCcSjWED9Yh/Dm4gtgaQUcAhxblCGS746WZ4YsFCZjzzmCP+HS7NGKYwAy7nJKtcq/slaQY8z0k/3eFt0QdveY4V0pxppnG5RBzifdCbJmwrdfLU0CsUkW75ZtseIWE/Ild0fZ9B6YtanDv2ifKcvSAZ+WyC3o/tdT/VRPRzEetHiGhHjRUrSgtp99xfb6RnvINysMmH1UM++hKkuSAGFkNbCbhqcnkYBDFeXwEmETuqEp+sG42TgYFqN8S8XJxvxAfgdRDaSca+FHqcfSoIEIzAbNy5PXJxPxJHUoAQX5z9FWOozBsBJEBlMQ4lpo7JYcWwgmLyNJ4gALDILxND/SAkDqa+XQdAmuogFSVtGw1FuaNdHpO16NoRVC3l298RFr94A2taKyQaGSPSMfITBsoTz6kbXfAV5Tbav49pyPr7nDemSnbd+TGLmh10ltT+4ATJjifb+BMXYXEF5NRQifDywKj4ulw8NZSear/8Za/H3oDa5b0gZyRALseq7ChP4jVTHcSuUvL5QBcRS4x9lz02RqYJDaEIJkiiP2i
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(366004)(346002)(136003)(376002)(451199021)(66574015)(83380400001)(33656002)(55016003)(478600001)(82960400001)(8676002)(8936002)(66476007)(66946007)(64756008)(86362001)(316002)(41300700001)(66556008)(52536014)(66446008)(76116006)(5660300002)(122000001)(4326008)(38100700002)(38070700005)(7696005)(2906002)(71200400001)(110136005)(54906003)(186003)(26005)(6506007)(53546011)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?LW3gDqqrmteF5J81jltBvINqhg8d1MccWFuj0Zjoq47edJtGwXyqGsINCk?=
 =?iso-8859-2?Q?xDYtLvbQrjRxV4IhNoGdC84ynRoG+0SwI+hSiGX0cyJwPU39Csiwtcdw1I?=
 =?iso-8859-2?Q?zybIUKd/M2xm8mdB5o/OcSA407PqEDkK6ev6kppf4dmCtjM4GFeFs1W2mu?=
 =?iso-8859-2?Q?CKQHww8eAnBrr5R2gl2rD3fjvKUcduCT4Cyw771jxVieBr1oZcyncsv3ou?=
 =?iso-8859-2?Q?EtUSjnK+SSCB/uIgBT6WVoAsC1FJvgdl+VZNmXKeqYv6hCV5NqSicctpzr?=
 =?iso-8859-2?Q?pG7CeuHCHrZ6cg0H048+Fhit7an2sTqS2KUPrmLyrmptisT2o2kP3RNTSP?=
 =?iso-8859-2?Q?B4FlpoGRCX70GqhY/hI47/BFRgW1wM+Ijg8WjyO5UvZfeiVTSN385OzsAr?=
 =?iso-8859-2?Q?UibZ2d6KJXC1ti+pRZYLNKmnArmq3q2r93JIX+iIXSimpd8f4o+05C9cAy?=
 =?iso-8859-2?Q?qfziDaVQYO1F1dSBIn/jr/otoCaq70erhXJjj9efCX5CdAEnh4YpBqdV1C?=
 =?iso-8859-2?Q?cRpt/Yat0TnAVDPjgDwt6maOHMRgW5XnR3WCwRP6KtNgGtpIjdy+IJu82v?=
 =?iso-8859-2?Q?MW50dtE1gJMiqJsxKuNDo2F6pCtMEsoPeivtuZMeKn4wkKG73UjTpHT5HH?=
 =?iso-8859-2?Q?mKLmlqra2wzHZA+3u6gvcWHSKypYTXi6caqC7fkS7rXhGMdHY8/xcBvSzD?=
 =?iso-8859-2?Q?Ne4y7OI6phL1S0onV9obu4Cl2EBJ/2dyEn+K2gIrLsuby3bpOcmM32M4Km?=
 =?iso-8859-2?Q?AEXGYn0jeLA8+G5ALU2EVoJTkypfj25e8Pcg+FKD92QcmzAVDxOgSyjevC?=
 =?iso-8859-2?Q?KMfz9yfMEvYkmVVWdxxz9ImWmElzMpuFCivtJ1nk0JhBqiLwZdCgPlWpQr?=
 =?iso-8859-2?Q?6Bxub2bq3xbj8cRVr4geXDdhNEALm6NkB2u2HmLOGU9f7i+BbOvXRsuuuu?=
 =?iso-8859-2?Q?RG+i/8abAYk/hfQSJIYF0rQiDWBO3XwbA8Ti3YEQ/OpWhcLH9vD2Dh29em?=
 =?iso-8859-2?Q?hkgGwn62YJaGDRn+62ltNZXaL3zhcVEtnVFvnZ/xROoMyd9YgOMe21aZ84?=
 =?iso-8859-2?Q?kPBCv3fRvIMOlAeUE3NLOMfuwkA3nLbb34FLnxm1LGbg0kWPFgGh7/rKhe?=
 =?iso-8859-2?Q?ZOyXGwjn1rn9McIOcjMz/ZGN/Gpc7zOSKtppUsScagF9yHF+kA+kYdQ9W8?=
 =?iso-8859-2?Q?qAp+26kiBA7GHW9FSEqb4baCVPez4z8X3Y64mFVXK5vhHXLT40SsDrFD/F?=
 =?iso-8859-2?Q?Dxok8RpkyhBG3qphXNciWec2A6SWwU+5ciUdlaNkZD3VgiNJzJf76ZVjYc?=
 =?iso-8859-2?Q?PA9a5JxYKMYsbeD8Q90zJwgwCqSYezh1407eh66joSV6DLwADYorlA1qjv?=
 =?iso-8859-2?Q?WTEx6IMIsnHSlHZi0xAQP4yP8vR2cghObzkuTK5PhYHTrGKBty0SqcwqFs?=
 =?iso-8859-2?Q?xW3vSou3DQ0Sekt2s6AdwtqScAlbVRYXqzS+XvhIujGkrcUlYCSYfjaoyU?=
 =?iso-8859-2?Q?knkmdk6nav9fsboSddMTznG7HClWLZ2FKx2bgUUToYvQCgT2FdCNaGD3Z9?=
 =?iso-8859-2?Q?xnRVVb/KDXxjYjxk8F+U47TMx8CrDeUR9Yd9g0+qwGPk2whGDQmxBj5WHc?=
 =?iso-8859-2?Q?KBUKMpfOGbKJ8nJvASCLwinyNOlzFSl2vG?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3deb071d-6cc0-46d7-40d3-08db6bf26007
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2023 09:41:34.0394 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zz/7yeshMWIIKaW0PAzj7oX4/fiX3nkCIGXqvPdE3NpIfaUHUyX+0w4Zyc0mYnWP5UkuWA3xqQhjXo5pDn3bs3PCBiuvmpd18DqSlyfZOeE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6448
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686649298; x=1718185298;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NYCuJXmc2lsyV4N4LdRRHeHtgt+tasuugE6XUPjbe3Q=;
 b=e301aDM19/gz5ifaeO4FOw7E7gIStn7lSl5Cywun7sb5JST6NoGpXWiI
 y++jMMTD0qea22mJo6W0tCKzXaFigonTY6bAsFehQyS32TWf7NBvurGn6
 pe848Y+F90Gr0JvgjN9drpIgQL8e/WkT5NfRhO9FnASj+UsAqd8WnTfaK
 FF+gbVxFGOk+n7ih02mdmED40JRKfNtS3bDMabONKjkz17zDoZV8hhHZ9
 FSpruElEErQm+8lAnz5FbF3oTY8/1OhLnSDF7g7C6sRiBjR2zWtOOuHFv
 w01VRIbbUr2610DcPXH4kgPi9Ffd0sFjt318wjVUPnozgKpU05iqxo6A9
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e301aDM1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 02/13] ice: Prohibit rx
 mode change in switchdev mode
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Buvaneswaran, Sujai <sujai.buvaneswaran@intel.com>
> Sent: poniedzia=B3ek, 12 czerwca 2023 09:30
> To: Drewek, Wojciech <wojciech.drewek@intel.com>; intel-wired-lan@lists.o=
suosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org; simon.horman@corigine.=
com; dan.carpenter@linaro.org
> Subject: RE: [Intel-wired-lan] [PATCH iwl-next v4 02/13] ice: Prohibit rx=
 mode change in switchdev mode
> =

> > Don't allow to change promisc mode in switchdev mode.
> > When switchdev is configured, PF netdev is set to be a default VSI. Thi=
s is
> > needed for the slow-path to work correctly.
> > All the unmatched packets will be directed to PF netdev.
> >
> > It is possible that this setting might be overwritten by ndo_set_rx_mod=
e.
> > Prevent this by checking if switchdev is enabled in ice_set_rx_mode.
> >
> > Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> > Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> =

> During our testing, we found out that PF netdev promisc mode settings can=
 be changed in Switchdev mode.
> Is this expected as per the implementation of this patch?
> =

> [root@wolfpass-switchdev ~]# ip link show dev ens802f0np0
> 193: ens802f0np0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq mas=
ter br0 state UP mode DEFAULT group default
> qlen 1000
>     link/ether 6c:fe:54:5a:18:98 brd ff:ff:ff:ff:ff:ff
>     vf 0     link/ether 52:52:00:00:00:01 brd ff:ff:ff:ff:ff:ff, spoof ch=
ecking on, link-state enable, trust off
>     vf 1     link/ether 52:52:00:00:00:02 brd ff:ff:ff:ff:ff:ff, spoof ch=
ecking on, link-state enable, trust off
>     altname enp175s0f0np0
> [root@wolfpass-switchdev ~]# ip link set dev ens802f0np0 promisc on
> [root@wolfpass-switchdev ~]# ip link show dev ens802f0np0
> 193: ens802f0np0: <BROADCAST,MULTICAST,PROMISC,UP,LOWER_UP> mtu 1500 qdis=
c mq master br0 state UP mode DEFAULT group
> default qlen 1000
>     link/ether 6c:fe:54:5a:18:98 brd ff:ff:ff:ff:ff:ff
>     vf 0     link/ether 52:52:00:00:00:01 brd ff:ff:ff:ff:ff:ff, spoof ch=
ecking on, link-state enable, trust off
>     vf 1     link/ether 52:52:00:00:00:02 brd ff:ff:ff:ff:ff:ff, spoof ch=
ecking on, link-state enable, trust off
>     altname enp175s0f0np0
> [root@wolfpass-switchdev ~]# ip link set dev ens802f0np0 promisc off
> [root@wolfpass-switchdev ~]# ip link show dev ens802f0np0
> 193: ens802f0np0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq mas=
ter br0 state UP mode DEFAULT group default
> qlen 1000
>     link/ether 6c:fe:54:5a:18:98 brd ff:ff:ff:ff:ff:ff
>     vf 0     link/ether 52:52:00:00:00:01 brd ff:ff:ff:ff:ff:ff, spoof ch=
ecking on, link-state enable, trust off
>     vf 1     link/ether 52:52:00:00:00:02 brd ff:ff:ff:ff:ff:ff, spoof ch=
ecking on, link-state enable, trust off
>     altname enp175s0f0np0

I think everything is fine here, actual promisc mode can be checked using -=
d option, "promiscuity" is indicating if the mode is enabled.
Once the uplink is added to the bridge I couldn't turn it off as expected.



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
