Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4362A739594
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jun 2023 04:45:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EF08613A9;
	Thu, 22 Jun 2023 02:45:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EF08613A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687401954;
	bh=24XEiQ1/k6dIZpRGb1fSt/fR3UBspG7gBI5k+2/4m44=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tXPV7v+u6vYICx97QYES1dY3uAGN3jCsZJMsx5HcHKsWXltBgDKsXptogzPQmmj7v
	 mCGsUqI+tj3L3x65ZeksSYagyYdHONUZxCc9FXBx0QTbytOEXEWf4DbfkH5KDTHxIV
	 rhnm1tU68qPyHSNxk0Rbj/T+lnHmENZ/LuIImPCzWRacgL/dG8b7/56ciyiMJbJQTD
	 lREnVFPnO1KRJGbc21eNeAwJin1rze6I1hg/GQ5RbkiiYEnuxaLyBrtJS/QyZYf/wS
	 k1TuVgi4GMnS+BgHdiO+LCGJLjq9uwYzYDakbw69e/sdHFu+XVoxm5TnEpkSwq2PIP
	 QkrVYU+AyuefA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QTkmpl3g9s2L; Thu, 22 Jun 2023 02:45:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A6E060AEE;
	Thu, 22 Jun 2023 02:45:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A6E060AEE
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D61A51BF969
 for <intel-wired-lan@osuosl.org>; Thu, 22 Jun 2023 02:45:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AAA9D61139
 for <intel-wired-lan@osuosl.org>; Thu, 22 Jun 2023 02:45:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AAA9D61139
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SFAU4sHMDhFr for <intel-wired-lan@osuosl.org>;
 Thu, 22 Jun 2023 02:45:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE2CE60AEE
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AE2CE60AEE
 for <intel-wired-lan@osuosl.org>; Thu, 22 Jun 2023 02:45:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="360384403"
X-IronPort-AV: E=Sophos;i="6.00,262,1681196400"; d="scan'208";a="360384403"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 19:45:20 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="749010167"
X-IronPort-AV: E=Sophos;i="6.00,262,1681196400"; d="scan'208";a="749010167"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 21 Jun 2023 19:45:19 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 19:45:19 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 19:45:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 19:45:18 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 21 Jun 2023 19:45:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rsf4ORQyJArgGk6cFTPKCRfk0hhE943Qfxge8RPb6zb7t8bB5M3C186WHdi/zoF0X7N8b4qIrruK5Ud3D8lJ1LsKgt3xJjbiD21UmCLyU8NMd2EKDyM2ZTsxBVJavg43fo1LpWen9C+e3VpR0bUde1OSFhcutL/+JCLESJmc1TjAa8qpoTEKOLMyvu2PRQL4N5t/B4nbSWLNbrAyMg7VjBNpBBsyHujV73FQlo9IUUfAd6WtzKgry0JHap4fI5xRYCfElfZNQXzhu4wKRcu3WKkI9ggA0r+/4zslrMS7o2tJZvuxzp/sFB7coSdlZTOUr6haidEFWAgkV7sWZnAP5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=37NJUyRvI2PC41+/uSYnUrgoBnO1HFDgLhMY4nHA/ZA=;
 b=jSpOwyrTLHxAh7XoMv8lBQ2nrkz8x8Sv2jIJ97YemwKYHtXYrMtOA2kxlvHOGJFh0XF+odpJIZddk2mg9TYUtMa9CrmTibQIHMpQLIr369nioSfsvtKk+bEMFiP/dsNOT1HjVHVUrrSSFRi9R99ML5nKzthrOLBACEbvGDsska3evmPCCoZGb9f2KAM/dl5KBZs/VlRHC6RCYhYAUFavLYEsy+seMzFmyW5J3/NwcD55vFmCHcrKSSBJfAXbanSYim91Mw0DUh/dRipXZeZhJq9hq32cT+l+h38ExDMA8qNk+QAI8Y7OBcYqig2+Y1yrJVRNPiEcHzEYyhqOw+TmeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by DS7PR11MB7950.namprd11.prod.outlook.com (2603:10b6:8:e0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21; Thu, 22 Jun
 2023 02:45:16 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e%4]) with mapi id 15.20.6521.023; Thu, 22 Jun 2023
 02:45:15 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] igc: Fix Kernel Panic
 during ndo_tx_timeout callback
Thread-Index: AQHZo+haiQedA83OZUyRTEx0kUJvk6+V2cgAgABFSVA=
Date: Thu, 22 Jun 2023 02:45:15 +0000
Message-ID: <SJ1PR11MB6180BF0C22157972716011B6B822A@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230621022833.12322-1-muhammad.husaini.zulkifli@intel.com>
 <877crwsasb.fsf@intel.com>
In-Reply-To: <877crwsasb.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|DS7PR11MB7950:EE_
x-ms-office365-filtering-correlation-id: d3526bb7-adce-4cc7-e6b8-08db72cab5a2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DUesVbjtEs259Ybr2xq2Fp2XMcqaFc9sfnnpPn3v0Q/pxsUYnr0uzDydOAvivonUT4ePbh6K0rP8LyaHsnUZhijOXLTQ1JNNmVOJYCv6EG1jHSuVfJHZNrV5ThFWdN10gBlSCJAt57HyF0sCZEvSbRtBqQpKDsi8vQnfOHBROn0d81vms8W3+oHhwoH1Jq1+hz+yuUDTTw9CvC3KocfRXLuoX2PdVQwwTsKyuL3IJAeZtZ0oMqyJ2Mu0OsYWl9ufGlZEV7eMGzTArCw/GrUq0ZVE0jYFtcZ7i8RUNEDu4LFJ1t2dxcENuV+9eSPGXx/wv39bCJ68eljfeV33pLkQC4rEblL04TcQvVphgoM9PsMnXv+6BM4UUaD6hd7epgMeolPbdr4meBRHE9S1m8zg5JPnFvQpXxa5jZ6Zv0+iGLZE1hwbgZM0BHPtuabSyifYlOYDQSYV+QEJb3fsRuYqSb2vGIrkL+4WyLDESlEKncCqYVaU3GyaumfY9+0UWUbj9x9n4+uof3mXSsrsmZzGluntD7xvOV/NctSosuRfBDLQGD2NYW3yPoqQJ8YLzYl8NTBA/AX+xAJWAD6AB4/FeqUS9yLLwR58vychv6PmukQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(39860400002)(366004)(376002)(396003)(451199021)(33656002)(86362001)(38070700005)(82960400001)(122000001)(38100700002)(8676002)(83380400001)(66476007)(66556008)(26005)(186003)(41300700001)(6506007)(53546011)(107886003)(316002)(76116006)(9686003)(66946007)(64756008)(66446008)(7696005)(71200400001)(4326008)(966005)(8936002)(478600001)(45080400002)(110136005)(30864003)(2906002)(5660300002)(52536014)(55016003)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GGJEDg7w1PkvZ5IUfYVpH6HAhUIq41qylpAH1jYAgAyw1rJWx2hZExIMwuiK?=
 =?us-ascii?Q?CcJmsES1njz4cHthoZHTw7to5SUe6hyqYcuAxYraeuZ/aOsWxxkR+7OckaGe?=
 =?us-ascii?Q?+GYVrgUUq6BNipsfk0St4e0QvIreltu8v1Y2wAF98BPa5FSCzL673AR6Ryfk?=
 =?us-ascii?Q?yZhzLJRPAzVllIRdjoA24SeW0SLjZUkOIpIF6rPQjrcp7yWI7nnqT/XB/jes?=
 =?us-ascii?Q?MlChI7pPuWsj7A5o1lN+yuY3Ukm1vAfIn2KT5xXtHBi0/oP45MUPgLnaWp5a?=
 =?us-ascii?Q?ToNuYp6bmeHNvZzlbeCGLZDUfiJc8JKj5I0CTpYVztZsmHjnWda4mkuZst8O?=
 =?us-ascii?Q?ZoA8XvmE62Myqco/8Ok3fu3/OThBNZT2IC9ZtU30xp+Yng7edXbGgxmYypwC?=
 =?us-ascii?Q?x4hywBoPEsnFESFySjdBmnCUiXasMFZUul/bhzhmLclo/1WMeJh3tnCmXxix?=
 =?us-ascii?Q?bF6KoS1G28/L7XSXZxs3yrQNOq/pO63eY2cCL2eZAaehsDsRy+356wvr2/8j?=
 =?us-ascii?Q?zYw+1XbxBjaAsg9DU6j0XOZNgE65ZC71jHv9+RAoF4mYnh3hLUNCZZvXVIN+?=
 =?us-ascii?Q?XhlaiAMUKLg6hV1STRsODV4UpeJze18Z1kBj2rrCgajkJ7EzJX3zyg0Krl8D?=
 =?us-ascii?Q?RFg9BUD+iq8Vmd0HJJGUW53vZzC9F+SGdYYRbQV+ptsLDpKf0r0pOQZKOSKY?=
 =?us-ascii?Q?JsxjBR2oBGAfZ89fQwacovGia8ZaXyIE2z0GXjtdxh5VKnH5B8OeS0v1TPLI?=
 =?us-ascii?Q?R77LcxASUTy+Bp2i8Ocf1Dka1hdu5pC9/aUl1mS8JQK1H6CruGneaIaq7Swg?=
 =?us-ascii?Q?Vz08PIcsjP737n3jQ/vCzozLsVLwlocedC8Dsky8M1qCdQ7dfiwiXe80frLx?=
 =?us-ascii?Q?uLaQEYLNAalmft6e2UV+5Jy36TtSmNH7gltRfeqgC7i/2ph9R1C+uK1Lpb5v?=
 =?us-ascii?Q?HTYUT02XglFlrlvjJ/3o5ZrEZMrgzwxXrTjM3yG9UMJoHO3hJQMeFtYqFXa3?=
 =?us-ascii?Q?362sFIHw5Di0qq6Q4QwSiJHoIAyU/uBMpvd5ISGuIXomxATlQL3IInc6h2/T?=
 =?us-ascii?Q?MHtO6tGlrCbz+cwYs8XApNb6/dAXjr5UaDyoK7C31304r5NKdhz9B/wn3Y49?=
 =?us-ascii?Q?4tqo48SsX2HQHh9c0wbejqkrvEAB4uZGdEVedCc683o8CMY+cCXbcmRC/CPB?=
 =?us-ascii?Q?NCijNOaROHCS9NScSm4ZjrpwW9ouDFU2MUXEujiuNNPD0fM3ymBtLJSoqq0v?=
 =?us-ascii?Q?JBcQ09qvzgyyibocP39V9Yzc05xdFYTxXwgYYoSOSE5PBnS1vF+QchI4NZv7?=
 =?us-ascii?Q?7jeHlcDmZ7nwkO/oGqikmdI9vyWmkqZpRUVkCO+cL3AthndlZwwVCpjoTq+v?=
 =?us-ascii?Q?nQvvCaGshCq4BKS3FM3EciassrXag6Sh417yQmtwYE+KvtJflDlXxz74+TkD?=
 =?us-ascii?Q?/A93WNPTAsI/w72+Wqz+SDbGqkCDmzPmfMcB7E0F6R8cvjHNxwpLnDk6AIOI?=
 =?us-ascii?Q?bWhO+JuvLXGdXftag94mBygxD0DkM/V+1f0vHZBBgWgZerlhBof4rW8BNvfF?=
 =?us-ascii?Q?tmYxKlfKQsKqC2LwbMzG0SeIcvZdIT0Go3ed9//H4AfDm5l5y1+xckzXwRj5?=
 =?us-ascii?Q?2vtFOaG7lGDkAEXjXKawgZM=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3526bb7-adce-4cc7-e6b8-08db72cab5a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2023 02:45:15.8791 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rS+0SadWT2Tc129CM7tLDGe5OKphvNIAgJJObmrPaUyNVwEsITWzh0RJhCMH0/jWxsgjCBu4VAHGBrE3cvqqiBptgH1orbIOXiC/iT2tz/XJycTGqSF5+S+szPXT5tBV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7950
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687401944; x=1718937944;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HJ952uwEgZuZtdmzd0D8s/UUD6pV4UbbUbPRCclCiU0=;
 b=OHR6KYceypSWGn5ulAlSjhG7ZjpsE/1GfFCNE8nQoVrVHkTh7e+25YDx
 LJNSDpjwIJ+/jgmLLYtyl2ymbOPLouS6lPoGnd3GAOKI8bb/R37yasbe9
 sDF8p2z7MEr3563E7IJV/IiDbRiFQ5uGO0q9fqY2e7I6QLdIfmZkvtF8M
 6whxS6J/8hknLczKyEiz7iQYEMtt8fcKeIzOsDY0seunVB1aibI3Dcz+i
 qIuyNg0kEwjEMx3YFv7b45xxAi4R7trdWlHoIZVRxSQcVs3NW2ff5r8R0
 49h9r8vNY8eZnI6lECIRjEn1YOnZXwNlG9tm81IuO+5yX4vDMy+wKsSbq
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OHR6KYce
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: Fix Kernel Panic
 during ndo_tx_timeout callback
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Vinicius,

> -----Original Message-----
> From: Gomes, Vinicius <vinicius.gomes@intel.com>
> Sent: Thursday, 22 June, 2023 6:36 AM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> intel-wired-lan@osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: Fix Kernel Panic during
> ndo_tx_timeout callback
> 
> Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com> writes:
> 
> > The Xeon validation group has been carrying out some loaded tests with
> > various HW configurations, and they have seen some transmit queue time
> > out happening during the test. This will cause the reset adapter
> > function to be called by igc_tx_timeout().
> > Similar race conditions may arise when the interface is being brought
> > down and up in igc_reinit_locked(), an interrupt being generated, and
> > igc_clean_tx_irq() being called to complete the TX.
> >
> > When the igc_tx_timeout() function is invoked, this patch will turn
> > off all TX ring HW queues during igc_down() process. TX ring HW queues
> > will be activated again during the igc_configure_tx_ring() process
> > when performing the igc_up() procedure later.
> >
> > Kernel trace:
> > [ 7678.747813] ------------[ cut here ]------------ [ 7678.757914]
> > NETDEV WATCHDOG: enp1s0 (igc): transmit queue 2 timed out [
> > 7678.770117] WARNING: CPU: 0 PID: 13 at net/sched/sch_generic.c:525
> > dev_watchdog+0x1ae/0x1f0 [ 7678.784459] Modules linked in:
> > xt_conntrack nft_chain_nat xt_MASQUERADE xt_addrtype nft_compat
> > nf_tables nfnetlink br_netfilter bridge stp llc overlay dm_mod
> > emrcha(PO) emriio(PO) rktpm(PO)
> > cegbuf_mod(PO) patch_update(PO) se(PO) sgx_tgts(PO) mktme(PO)
> > keylocker(PO) svtdx(PO) svfs_pci_hotplug(PO)
> > vtd_mod(PO) davemem(PO) svmabort(PO) svindexio(PO) usbx2(PO)
> > ehci_sched(PO) svheartbeat(PO) ioapic(PO)
> > sv8259(PO) svintr(PO) lt(PO) pcierootport(PO) enginefw_mod(PO) ata(PO)
> > smbus(PO) spiflash_cdf(PO) arden(PO)
> > dsa_iax(PO) oobmsm_punit(PO) cpm(PO) svkdb(PO) ebg_pch(PO)
> pch(PO)
> > sviotargets(PO) svbdf(PO) svmem(PO)
> > svbios(PO) dram(PO) svtsc(PO) targets(PO) superio(PO) svkernel(PO)
> > cswitch(PO) mcf(PO) pentiumIII_mod(PO)
> > fs_svfs(PO) mdevdefdb(PO) svfs_os_services(O) ixgbe mdio mdio_devres
> > libphy emeraldrapids_svdefs(PO)
> > regsupport(O) libnvdimm nls_cp437 snd_hda_codec_realtek
> > snd_hda_codec_generic ledtrig_audio snd_hda_intel snd_intel_dspcfg
> > snd_hda_codec snd_hwdep x86_pkg_temp_thermal snd_hda_core
> snd_pcm
> > snd_timer isst_if_mbox_pci [ 7678.784496]  input_leds isst_if_mmio sg
> > snd isst_if_common soundcore wmi button sad9(O) drm fuse backlight
> > configfs efivarfs ip_tables x_tables vmd sdhci led_class rtl8150 r8152
> > hid_generic pegasus mmc_block usbhid mmc_core hid megaraid_sas ixgb
> igb i2c_algo_bit ice i40e hpsa scsi_transport_sas e1000e e1000 e100
> ax88179_178a usbnet xhci_pci sd_mod xhci_hcd t10_pi crc32c_intel
> crc64_rocksoft igc crc64 crc_t10dif usbcore crct10dif_generic ptp
> crct10dif_common usb_common pps_core
> > [ 7679.141822] CPU: 0 PID: 13 Comm: ksoftirqd/0 Tainted: P S         O
> > 6.3.0.svos-next-tickless-x86-64 #1
> > [ 7679.172570] Hardware name: Intel Corporation ArcherCity/ArcherCity,
> > BIOS EGSDCRB1.E9I.0103.D13.2305291029 05/29/2023 [ 7679.200403] RIP:
> > 0010:dev_watchdog+0x1ae/0x1f0 [ 7679.210201] Code: 28 e9 53 ff ff ff
> > 4c 89 e7 c6 05 06 42 b9 00 01 e8 17 d1 fb ff 44 89 e9 4c
> > 89 e6 48 c7 c7 40 ad fb 81 48 89 c2 e8 52 62 82 ff <0f> 0b e9 72 ff ff
> > ff 65 8b 05 80 7d 7c 7e
> > 89 c0 48 0f a3 05 0a c1
> > [ 7679.245438] RSP: 0018:ffa00000001f7d90 EFLAGS: 00010282 [
> > 7679.256021] RAX: 0000000000000000 RBX: ff11000109938440 RCX:
> > 0000000000000000 [ 7679.268710] RDX: ff11000361e26cd8 RSI:
> > ff11000361e1b880 RDI: ff11000361e1b880 [ 7679.281314] RBP:
> > ffa00000001f7da8 R08: ff1100035f8fffe8 R09: 0000000000027ffb [
> > 7679.293840] R10: 0000000000001f0a R11: ff1100035f840000 R12:
> > ff11000109938000 [ 7679.306276] R13: 0000000000000002 R14:
> > dead000000000122 R15: ffa00000001f7e18 [ 7679.318648] FS:
> > 0000000000000000(0000) GS:ff11000361e00000(0000)
> > knlGS:0000000000000000 [ 7679.332064] CS:  0010 DS: 0000 ES: 0000 CR0:
> > 0000000080050033 [ 7679.342757] CR2: 00007ffff7fca168 CR3:
> > 000000013b08a006 CR4: 0000000000471ef8 [ 7679.354984] DR0:
> > 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000 [
> 7679.367207] DR3: 0000000000000000 DR6: 00000000fffe07f0 DR7:
> 0000000000000400 [ 7679.379370] PKRU: 55555554 [ 7679.386446] Call Trace:
> > [ 7679.393152]  <TASK>
> > [ 7679.399363]  ? __pfx_dev_watchdog+0x10/0x10 [ 7679.407870]
> > call_timer_fn+0x31/0x110 [ 7679.415698]  expire_timers+0xb2/0x120 [
> > 7679.423403]  run_timer_softirq+0x179/0x1e0 [ 7679.431532]  ?
> > __schedule+0x2b1/0x820 [ 7679.439078]  __do_softirq+0xd1/0x295 [
> > 7679.446426]  ? __pfx_smpboot_thread_fn+0x10/0x10 [ 7679.454867]
> > run_ksoftirqd+0x22/0x30 [ 7679.462058]  smpboot_thread_fn+0xb7/0x160
> [
> > 7679.469670]  kthread+0xcd/0xf0 [ 7679.476097]  ?
> > __pfx_kthread+0x10/0x10 [ 7679.483211]  ret_from_fork+0x29/0x50 [
> > 7679.490047]  </TASK> [ 7679.495204] ---[ end trace 0000000000000000
> > ]--- [ 7679.503179] igc 0000:01:00.0 enp1s0: Register Dump
> > [ 7679.511230] igc 0000:01:00.0 enp1s0: Register Name   Value
> > [ 7679.519892] igc 0000:01:00.0 enp1s0: CTRL            181c0641
> > [ 7679.528782] igc 0000:01:00.0 enp1s0: STATUS          40280683
> > [ 7679.537551] igc 0000:01:00.0 enp1s0: CTRL_EXT        10000040
> > [ 7679.546284] igc 0000:01:00.0 enp1s0: MDIC            180a3800
> > [ 7679.554942] igc 0000:01:00.0 enp1s0: ICR             00000081
> > [ 7679.563503] igc 0000:01:00.0 enp1s0: RCTL            04408022
> > [ 7679.571963] igc 0000:01:00.0 enp1s0: RDLEN[0-3]      00001000 00001000
> 00001000 00001000
> > [ 7679.583075] igc 0000:01:00.0 enp1s0: RDH[0-3]        00000068 000000b6
> 0000000f 00000031
> > [ 7679.594162] igc 0000:01:00.0 enp1s0: RDT[0-3]        00000066 000000b2
> 0000000e 00000030
> > [ 7679.605174] igc 0000:01:00.0 enp1s0: RXDCTL[0-3]     02040808 02040808
> 02040808 02040808
> > [ 7679.616196] igc 0000:01:00.0 enp1s0: RDBAL[0-3]      1bb7c000 1bb7f000
> 1bb82000 0ef33000
> > [ 7679.627242] igc 0000:01:00.0 enp1s0: RDBAH[0-3]      00000001 00000001
> 00000001 00000001
> > [ 7679.638256] igc 0000:01:00.0 enp1s0: TCTL            a503f0fa
> > [ 7679.646607] igc 0000:01:00.0 enp1s0: TDBAL[0-3]      2ba4a000 1bb6f000
> 1bb74000 1bb79000
> > [ 7679.657609] igc 0000:01:00.0 enp1s0: TDBAH[0-3]      00000001 00000001
> 00000001 00000001
> > [ 7679.668551] igc 0000:01:00.0 enp1s0: TDLEN[0-3]      00001000 00001000
> 00001000 00001000
> > [ 7679.679470] igc 0000:01:00.0 enp1s0: TDH[0-3]        000000a7 0000002d
> 000000bf 000000d9
> > [ 7679.690406] igc 0000:01:00.0 enp1s0: TDT[0-3]        000000a7 0000002d
> 000000bf 000000d9
> > [ 7679.701264] igc 0000:01:00.0 enp1s0: TXDCTL[0-3]     02100108 02100108
> 02100108 02100108
> > [ 7679.712123] igc 0000:01:00.0 enp1s0: Reset adapter [ 7683.085967]
> > igc 0000:01:00.0 enp1s0: NIC Link is Up 1000 Mbps Full Duplex, Flow
> > Control: RX/TX [ 8086.945561] ------------[ cut here ]------------
> > Entering kdb (current=0xffffffff8220b200, pid 0) on processor 0
> > Oops: (null) due to oops @ 0xffffffff81573888
> > CPU: 0 PID: 0 Comm: swapper/0 Tainted: P S WO
> > 6.3.0.svos-next-tickless-x86-64 #1 Hardware name: Intel Corporation
> > ArcherCity/ArcherCity, BIOS EGSDCRB1.E9I.0103.D13.2305291029
> > 05/29/2023
> > RIP: 0010:dql_completed+0x148/0x160
> > Code: c9 00 48 89 57 58 e9 46 ff ff ff 45 85 e4 41 0f 95 c4 41 39 db
> > 0f 95
> > c1 41 84 cc 74 05 45 85 ed 78 0a 44 89 c1 e9 27 ff ff ff <0f> 0b 01 f6
> > 44 89
> > c1 29 f1 0f 48 ca eb 8c cc cc cc cc cc cc cc cc
> > RSP: 0018:ffa0000000003e00 EFLAGS: 00010287
> > RAX: 000000000000006c RBX: ffa0000003eb0f78 RCX: ff11000109938000
> > RDX: 0000000000000003 RSI: 0000000000000160 RDI: ff110001002e9480
> > RBP: ffa0000000003ed8 R08: ff110001002e93c0 R09: ffa0000000003d28
> > R10: 0000000000007cc0 R11: 0000000000007c54 R12: 00000000ffffffd9
> > R13: ff1100037039cb00 R14: 00000000ffffffd9 R15: ff1100037039c048
> > FS:  0000000000000000(0000) GS:ff11000361e00000(0000)
> > knlGS:0000000000000000
> > CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > CR2: 00007ffff7fca168 CR3: 000000013b08a003 CR4: 0000000000471ef8
> > DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> > DR3: 0000000000000000 DR6: 00000000fffe07f0 DR7: 0000000000000400
> > PKRU: 55555554
> > Call Trace:
> >  <IRQ>
> >  ? igc_poll+0x1a9/0x14d0 [igc]
> >  __napi_poll+0x2e/0x1b0
> >  net_rx_action+0x126/0x250
> >  __do_softirq+0xd1/0x295
> >  irq_exit_rcu+0xc5/0xf0
> >  common_interrupt+0x86/0xa0
> >  </IRQ>
> >  <TASK>
> >  asm_common_interrupt+0x27/0x40
> > RIP: 0010:cpuidle_enter_state+0xd3/0x3e0
> > Code: 73 f1 ff ff 49 89 c6 8b 05 e2 ca a7 00 85 c0 0f 8f b3 02 00 00
> > 31 ff e8 1b de 75 ff 80 7d d7 00 0f 85 cd 01 00 00 fb 45 85 ff <0f> 88
> > fd 00 00 00 49 63 cf 4c 2b 75 c8 48 8d 04 49 48 89 ca 48 8d
> > RSP: 0018:ffffffff82203df0 EFLAGS: 00000202
> > RAX: ff11000361e2a200 RBX: 0000000000000002 RCX: 000000000000001f
> > RDX: 0000000000000000 RSI: 000000003cf3cf3d RDI: 0000000000000000
> > RBP: ffffffff82203e28 R08: 0000075ae38471c8 R09: 0000000000000018
> > R10: 000000000000031a R11: ffffffff8238dca0 R12: ffd1ffffff200000
> > R13: ffffffff8238dca0 R14: 0000075ae38471c8 R15: 0000000000000002
> >  cpuidle_enter+0x2e/0x50
> >  call_cpuidle+0x23/0x40
> >  do_idle+0x1be/0x220
> >  cpu_startup_entry+0x20/0x30
> >  rest_init+0xb5/0xc0
> >  arch_call_rest_init+0xe/0x30
> >  start_kernel+0x448/0x760
> >  x86_64_start_kernel+0x109/0x150
> >  secondary_startup_64_no_verify+0xe0/0xeb
> >  </TASK>
> > more>
> > [0]kdb>
> >
> > [0]kdb>
> > [0]kdb> go
> > Catastrophic error detected
> > kdb_continue_catastrophic=0, type go a second time if you really want
> > to continue [0]kdb> go Catastrophic error detected
> > kdb_continue_catastrophic=0, attempting to continue [ 8086.955689]
> > refcount_t: underflow; use-after-free.
> > [ 8086.955697] WARNING: CPU: 0 PID: 0 at lib/refcount.c:28
> > refcount_warn_saturate+0xc2/0x110 [ 8086.955706] Modules linked in:
> > xt_conntrack nft_chain_nat xt_MASQUERADE xt_addrtype nft_compat
> > nf_tables nfnetlink br_netfilter bridge stp llc overlay dm_mod
> > emrcha(PO) emriio(PO) rktpm(PO)
> > cegbuf_mod(PO) patch_update(PO) se(PO) sgx_tgts(PO) mktme(PO)
> > keylocker(PO) svtdx(PO)
> > svfs_pci_hotplug(PO) vtd_mod(PO) davemem(PO) svmabort(PO)
> > svindexio(PO) usbx2(PO) ehci_sched(PO)
> > svheartbeat(PO) ioapic(PO) sv8259(PO) svintr(PO) lt(PO)
> > pcierootport(PO) enginefw_mod(PO) ata(PO)
> > smbus(PO) spiflash_cdf(PO) arden(PO) dsa_iax(PO) oobmsm_punit(PO)
> > cpm(PO) svkdb(PO) ebg_pch(PO)
> > pch(PO) sviotargets(PO) svbdf(PO) svmem(PO) svbios(PO) dram(PO)
> > svtsc(PO) targets(PO) superio(PO)
> > svkernel(PO) cswitch(PO) mcf(PO) pentiumIII_mod(PO) fs_svfs(PO)
> > mdevdefdb(PO) svfs_os_services(O) ixgbe mdio mdio_devres libphy
> > emeraldrapids_svdefs(PO) regsupport(O) libnvdimm nls_cp437
> > snd_hda_codec_realtek snd_hda_codec_generic ledtrig_audio
> > snd_hda_intel snd_intel_dspcfg snd_hda_codec snd_hwdep
> > x86_pkg_temp_thermal snd_hda_core snd_pcm snd_timer
> isst_if_mbox_pci [
> > 8086.955751]  input_leds isst_if_mmio sg snd isst_if_common soundcore
> > wmi button sad9(O) drm fuse backlight configfs efivarfs ip_tables
> > x_tables vmd sdhci led_class rtl8150 r8152 hid_generic pegasus
> > mmc_block usbhid mmc_core hid megaraid_sas ixgb igb i2c_algo_bit ice
> > i40e hpsa scsi_transport_sas e1000e e1000 e100 ax88179_178a usbnet
> > xhci_pci sd_mod xhci_hcd t10_pi crc32c_intel crc64_rocksoft igc crc64
> > crc_t10dif usbcore crct10dif_generic ptp crct10dif_common usb_common
> > pps_core [ 8086.955780] CPU: 0 PID: 0 Comm: swapper/0 Tainted: P S W
> > O 6.3.0.svos-next-tickless-x86-64 #1 [ 8086.955783] Hardware name:
> > Intel Corporation ArcherCity/ArcherCity, BIOS
> > EGSDCRB1.E9I.0103.D13.2305291029 05/29/2023 [ 8086.955784] RIP:
> > 0010:refcount_warn_saturate+0xc2/0x110
> > [ 8086.955788] Code: 01 e8 82 e7 b4 ff 0f 0b 5d c3 cc cc cc cc 80 3d
> > 68 c6 eb 00 00 75 81
> > 48 c7 c7 a0 87 f6 81 c6 05 58 c6 eb 00 01 e8 5e e7 b4 ff <0f> 0b 5d c3
> > cc cc cc cc 80 3d
> > 42 c6 eb 00 00 0f 85 59 ff ff ff 48
> > [ 8086.955790] RSP: 0018:ffa0000000003da0 EFLAGS: 00010286 [
> > 8086.955793] RAX: 0000000000000000 RBX: ff1100011da40ee0 RCX:
> > ff11000361e1b888 [ 8086.955794] RDX: 00000000ffffffd8 RSI:
> > 0000000000000027 RDI: ff11000361e1b880 [ 8086.955795] RBP:
> > ffa0000000003da0 R08: 80000000ffff9f45 R09: ffa0000000003d28 [
> > 8086.955796] R10: ff1100035f840000 R11: 0000000000000028 R12:
> > ff11000319ff8000 [ 8086.955797] R13: ff1100011bb79d60 R14:
> > 00000000ffffffd6 R15: ff1100037039cb00 [ 8086.955798] FS:
> > 0000000000000000(0000) GS:ff11000361e00000(0000)
> > knlGS:0000000000000000 [ 8086.955800] CS:  0010 DS: 0000 ES: 0000 CR0:
> > 0000000080050033 [ 8086.955801] CR2: 00007ffff7fca168 CR3:
> > 000000013b08a003 CR4: 0000000000471ef8 [ 8086.955803] DR0:
> > 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000 [
> 8086.955803] DR3: 0000000000000000 DR6: 00000000fffe07f0 DR7:
> 0000000000000400 [ 8086.955804] PKRU: 55555554 [ 8086.955805] Call Trace:
> > [ 8086.955806]  <IRQ>
> > [ 8086.955808]  tcp_wfree+0x112/0x130
> > [ 8086.955814]  skb_release_head_state+0x24/0xa0 [ 8086.955818]
> > napi_consume_skb+0x9c/0x160 [ 8086.955821]  igc_poll+0x5d8/0x14d0
> > [igc] [ 8086.955835]  __napi_poll+0x2e/0x1b0 [ 8086.955839]
> > net_rx_action+0x126/0x250 [ 8086.955843]  __do_softirq+0xd1/0x295 [
> > 8086.955846]  irq_exit_rcu+0xc5/0xf0 [ 8086.955851]
> > common_interrupt+0x86/0xa0 [ 8086.955857]  </IRQ> [ 8086.955857]
> > <TASK> [ 8086.955858]  asm_common_interrupt+0x27/0x40 [ 8086.955862]
> > RIP: 0010:cpuidle_enter_state+0xd3/0x3e0
> > [ 8086.955866] Code: 73 f1 ff ff 49 89 c6 8b 05 e2 ca a7 00 85 c0 0f
> > 8f b3 02 00 00 31 ff e8 1b de 75 ff 80 7d d7 00 0f 85 cd 01 00 00 fb
> > 45 85 ff <0f> 88 fd 00 00 00 49 63 cf 4c 2b 75
> > c8 48 8d 04 49 48 89 ca 48 8d
> > [ 8086.955867] RSP: 0018:ffffffff82203df0 EFLAGS: 00000202 [
> > 8086.955869] RAX: ff11000361e2a200 RBX: 0000000000000002 RCX:
> > 000000000000001f [ 8086.955870] RDX: 0000000000000000 RSI:
> > 000000003cf3cf3d RDI: 0000000000000000 [ 8086.955871] RBP:
> > ffffffff82203e28 R08: 0000075ae38471c8 R09: 0000000000000018 [
> > 8086.955872] R10: 000000000000031a R11: ffffffff8238dca0 R12:
> > ffd1ffffff200000 [ 8086.955873] R13: ffffffff8238dca0 R14:
> > 0000075ae38471c8 R15: 0000000000000002 [ 8086.955875]
> > cpuidle_enter+0x2e/0x50 [ 8086.955880]  call_cpuidle+0x23/0x40 [
> > 8086.955884]  do_idle+0x1be/0x220 [ 8086.955887]
> > cpu_startup_entry+0x20/0x30 [ 8086.955889]  rest_init+0xb5/0xc0 [
> > 8086.955892]  arch_call_rest_init+0xe/0x30 [ 8086.955895]
> > start_kernel+0x448/0x760 [ 8086.955898]
> > x86_64_start_kernel+0x109/0x150 [ 8086.955900]
> > secondary_startup_64_no_verify+0xe0/0xeb
> > [ 8086.955904]  </TASK>
> > [ 8086.955904] ---[ end trace 0000000000000000 ]--- [ 8086.955912]
> > ------------[ cut here ]------------ [ 8086.955913] kernel BUG at
> > lib/dynamic_queue_limits.c:27!
> > [ 8086.955918] invalid opcode: 0000 [#1] SMP [ 8086.955920] CPU: 0
> > PID: 0 Comm: swapper/0 Tainted: P S W  O
> > 6.3.0.svos-next-tickless-x86-64 #1 [ 8086.955921] Hardware name: Intel
> > Corporation ArcherCity/ArcherCity, BIOS
> > EGSDCRB1.E9I.0103.D13.2305291029 05/29/2023 [ 8086.955922] RIP:
> > 0010:dql_completed+0x148/0x160 [ 8086.955925] Code: c9 00 48 89 57 58
> > e9 46 ff ff ff 45 85 e4 41 0f 95 c4 41 39 db 0f 95 c1 41 84 cc 74 05
> > 45 85 ed 78 0a 44 89 c1 e9 27 ff ff ff <0f> 0b 01 f6 44 89
> > c1 29 f1 0f 48 ca eb 8c cc cc cc cc cc cc cc cc [ 8086.955927] RSP:
> > 0018:ffa0000000003e00 EFLAGS: 00010287 [ 8086.955928] RAX:
> > 000000000000006c RBX: ffa0000003eb0f78 RCX: ff11000109938000 [
> > 8086.955929] RDX: 0000000000000003 RSI: 0000000000000160 RDI:
> > ff110001002e9480 [ 8086.955930] RBP: ffa0000000003ed8 R08:
> > ff110001002e93c0 R09: ffa0000000003d28 [ 8086.955931] R10:
> > 0000000000007cc0 R11: 0000000000007c54 R12: 00000000ffffffd9 [
> > 8086.955932] R13: ff1100037039cb00 R14: 00000000ffffffd9 R15:
> > ff1100037039c048 [ 8086.955933] FS:  0000000000000000(0000)
> > GS:ff11000361e00000(0000) knlGS:0000000000000000 [ 8086.955934] CS:
> > 0010 DS: 0000 ES: 0000 CR0: 0000000080050033 [ 8086.955935] CR2:
> > 00007ffff7fca168 CR3: 000000013b08a003 CR4: 0000000000471ef8 [
> > 8086.955936] DR0: 0000000000000000 DR1: 0000000000000000 DR2:
> > 0000000000000000 [ 8086.955937] DR3: 0000000000000000 DR6:
> 00000000fffe07f0 DR7: 0000000000000400 [ 8086.955938] PKRU: 55555554 [
> 8086.955939] Call Trace:
> > [ 8086.955939]  <IRQ>
> > [ 8086.955940]  ? igc_poll+0x1a9/0x14d0 [igc] [ 8086.955949]
> > __napi_poll+0x2e/0x1b0 [ 8086.955952]  net_rx_action+0x126/0x250 [
> > 8086.955956]  __do_softirq+0xd1/0x295 [ 8086.955958]
> > irq_exit_rcu+0xc5/0xf0 [ 8086.955961]  common_interrupt+0x86/0xa0 [
> > 8086.955964]  </IRQ> [ 8086.955965]  <TASK> [ 8086.955965]
> > asm_common_interrupt+0x27/0x40 [ 8086.955968] RIP:
> > 0010:cpuidle_enter_state+0xd3/0x3e0
> > [ 8086.955971] Code: 73 f1 ff ff 49 89 c6 8b 05 e2 ca a7 00 85 c0 0f
> > 8f b3 02 00 00
> > 31 ff e8 1b de 75 ff 80 7d d7 00 0f 85 cd 01 00 00 fb 45 85 ff <0f> 88
> > fd 00 00 00
> > 49 63 cf 4c 2b 75 c8 48 8d 04 49 48 89 ca 48 8d [ 8086.955972] RSP:
> > 0018:ffffffff82203df0 EFLAGS: 00000202 [ 8086.955973] RAX:
> > ff11000361e2a200 RBX: 0000000000000002 RCX: 000000000000001f [
> > 8086.955974] RDX: 0000000000000000 RSI: 000000003cf3cf3d RDI:
> > 0000000000000000 [ 8086.955974] RBP: ffffffff82203e28 R08:
> > 0000075ae38471c8 R09: 0000000000000018 [ 8086.955975] R10:
> > 000000000000031a R11: ffffffff8238dca0 R12: ffd1ffffff200000 [
> > 8086.955976] R13: ffffffff8238dca0 R14: 0000075ae38471c8 R15:
> > 0000000000000002 [ 8086.955978]  cpuidle_enter+0x2e/0x50 [
> > 8086.955981]  call_cpuidle+0x23/0x40 [ 8086.955984]
> > do_idle+0x1be/0x220 [ 8086.955985]  cpu_startup_entry+0x20/0x30 [
> > 8086.955987]  rest_init+0xb5/0xc0 [ 8086.955990]
> > arch_call_rest_init+0xe/0x30 [ 8086.955992]  start_kernel+0x448/0x760
> > [ 8086.955994]  x86_64_start_kernel+0x109/0x150 [ 8086.955996]
> > secondary_startup_64_no_verify+0xe0/0xeb
> > [ 8086.955998]  </TASK>
> > [ 8086.955999] Modules linked in: xt_conntrack nft_chain_nat
> > xt_MASQUERADE xt_addrtype nft_compat nf_tables nfnetlink br_netfilter
> > bridge stp llc overlay dm_mod emrcha(PO) emriio(PO)
> > rktpm(PO) cegbuf_mod(PO) patch_update(PO) se(PO) sgx_tgts(PO)
> > mktme(PO) keylocker(PO) svtdx(PO)
> > svfs_pci_hotplug(PO) vtd_mod(PO) davemem(PO) svmabort(PO)
> > svindexio(PO) usbx2(PO) ehci_sched(PO)
> > svheartbeat(PO) ioapic(PO) sv8259(PO) svintr(PO) lt(PO)
> > pcierootport(PO) enginefw_mod(PO) ata(PO)
> > smbus(PO) spiflash_cdf(PO) arden(PO) dsa_iax(PO) oobmsm_punit(PO)
> > cpm(PO) svkdb(PO) ebg_pch(PO)
> > pch(PO) sviotargets(PO) svbdf(PO) svmem(PO) svbios(PO) dram(PO)
> > svtsc(PO) targets(PO) superio(PO)
> > svkernel(PO) cswitch(PO) mcf(PO) pentiumIII_mod(PO) fs_svfs(PO)
> > mdevdefdb(PO) svfs_os_services(O) ixgbe mdio mdio_devres libphy
> > emeraldrapids_svdefs(PO) regsupport(O) libnvdimm nls_cp437
> > snd_hda_codec_realtek snd_hda_codec_generic ledtrig_audio
> > snd_hda_intel snd_intel_dspcfg snd_hda_codec snd_hwdep
> > x86_pkg_temp_thermal snd_hda_core snd_pcm snd_timer
> isst_if_mbox_pci [
> > 8086.956029]  input_leds isst_if_mmio sg snd isst_if_common soundcore
> > wmi button sad9(O) drm fuse backlight configfs efivarfs ip_tables
> > x_tables vmd sdhci led_class rtl8150 r8152 hid_generic pegasus
> > mmc_block usbhid mmc_core hid megaraid_sas ixgb igb i2c_algo_bit ice
> > i40e hpsa scsi_transport_sas e1000e e1000 e100 ax88179_178a usbnet
> > xhci_pci sd_mod xhci_hcd t10_pi crc32c_intel crc64_rocksoft igc crc64
> > crc_t10dif usbcore crct10dif_generic ptp crct10dif_common usb_common
> > pps_core [16762.543675] INFO: NMI handler (kgdb_nmi_handler) took too
> > long to run: 8675587.593 msecs [16762.543678] INFO: NMI handler
> > (kgdb_nmi_handler) took too long to run: 8675587.595 msecs
> > [16762.543673] INFO: NMI handler (kgdb_nmi_handler) took too long to
> > run: 8675587.495 msecs [16762.543679] INFO: NMI handler
> > (kgdb_nmi_handler) took too long to run: 8675587.599 msecs
> > [16762.543678] INFO: NMI handler (kgdb_nmi_handler) took too long to
> > run: 8675587.598 msecs [16762.543690] INFO: NMI handler
> > (kgdb_nmi_handler) took too long to run: 8675587.605 msecs
> > [16762.543684] INFO: NMI handler (kgdb_nmi_handler) took too long to
> > run: 8675587.599 msecs [16762.543693] INFO: NMI handler
> > (kgdb_nmi_handler) took too long to run: 8675587.613 msecs
> > [16762.543784] ---[ end trace 0000000000000000 ]--- [16762.849099]
> > RIP: 0010:dql_completed+0x148/0x160
> > PANIC: Fatal exception in interrupt
> >
> > Fixes: 9b275176270e ("igc: Add ndo_tx_timeout support")
> > Tested-by: Alejandra Victoria Alcaraz
> > <alejandra.victoria.alcaraz@intel.com>
> > Signed-off-by: Muhammad Husaini Zulkifli
> > <muhammad.husaini.zulkifli@intel.com>
> > ---
> >  drivers/net/ethernet/intel/igc/igc.h      |  1 +
> >  drivers/net/ethernet/intel/igc/igc_main.c | 18 +++++++++++++++++-
> >  2 files changed, 18 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igc/igc.h
> > b/drivers/net/ethernet/intel/igc/igc.h
> > index 211d74170d37..d24530ce84d6 100644
> > --- a/drivers/net/ethernet/intel/igc/igc.h
> > +++ b/drivers/net/ethernet/intel/igc/igc.h
> > @@ -285,6 +285,7 @@ void igc_enable_rx_ring(struct igc_ring *ring);
> > void igc_disable_tx_ring(struct igc_ring *ring);  void
> > igc_enable_tx_ring(struct igc_ring *ring);  int igc_xsk_wakeup(struct
> > net_device *dev, u32 queue_id, u32 flags);
> > +void igc_disable_tx_ring_hw(struct igc_ring *ring);
> >
> 
> Minor comment. I think it's better to move the function around (please
> document that it was moved in the commit message) than to forward
> declare it.

Sure, let me try to move it around.

Thanks,
Husaini

> 
> >  /* igc_dump declarations */
> >  void igc_rings_dump(struct igc_adapter *adapter); diff --git
> > a/drivers/net/ethernet/intel/igc/igc_main.c
> > b/drivers/net/ethernet/intel/igc/igc_main.c
> > index 1e6350c44380..a454f8291b39 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -316,6 +316,21 @@ static void igc_clean_all_tx_rings(struct
> igc_adapter *adapter)
> >  			igc_clean_tx_ring(adapter->tx_ring[i]);
> >  }
> >
> > +/**
> > + * igc_disable_all_tx_rings_hw - Disable all transmit queue operation
> > + * @adapter: board private structure
> > + */
> > +static void igc_disable_all_tx_rings_hw(struct igc_adapter *adapter)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < adapter->num_tx_queues; i++) {
> > +		struct igc_ring *tx_ring = adapter->tx_ring[i];
> > +
> > +		igc_disable_tx_ring_hw(tx_ring);
> > +	}
> > +}
> > +
> >  /**
> >   * igc_setup_tx_resources - allocate Tx resources (Descriptors)
> >   * @tx_ring: tx descriptor ring (for a specific queue) to setup @@
> > -5014,6 +5029,7 @@ void igc_down(struct igc_adapter *adapter)
> >  	/* clear VLAN promisc flag so VFTA will be updated if necessary */
> >  	adapter->flags &= ~IGC_FLAG_VLAN_PROMISC;
> >
> > +	igc_disable_all_tx_rings_hw(adapter);
> >  	igc_clean_all_tx_rings(adapter);
> >  	igc_clean_all_rx_rings(adapter);
> >  }
> > @@ -7187,7 +7203,7 @@ void igc_enable_rx_ring(struct igc_ring *ring)
> >  		igc_alloc_rx_buffers(ring, igc_desc_unused(ring));  }
> >
> > -static void igc_disable_tx_ring_hw(struct igc_ring *ring)
> > +void igc_disable_tx_ring_hw(struct igc_ring *ring)
> >  {
> >  	struct igc_hw *hw = &ring->q_vector->adapter->hw;
> >  	u8 idx = ring->reg_idx;
> > --
> > 2.17.1
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> 
> --
> Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
