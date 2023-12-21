Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEC081C11A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Dec 2023 23:34:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43A8F42DFB;
	Thu, 21 Dec 2023 22:34:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43A8F42DFB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703198052;
	bh=mw54GQvJr7c05bXZSHVfmlD2zN4RhsfbvuyCWmRrMZY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JMuQ/Uf75CA9LmbHM2PmfORaSQ9RnUIxhF9eMg0jz4W/SCJCc+PHaZ0VH9siVgGqd
	 WuHtxRKF8TP4lKxKvdZ99CuQSIT52p54Kt/s+1lV2KaJ0+/MJq1WiGJbVhMqBLu99h
	 jUzVWG4oy82zxf+uaR1EABqlFY5Y25KO37cwHsGfcsbUEguY3jDUlG0gHMfbCOSiA5
	 YVux9N/gYGRoflJ1rlgKoA854YAiYsl0bZQHSw1S8S6iwZ0dtThMR6wmSKQ466baCR
	 Yt3jGdiQ1nQXfkb811rPxCm+N2H4aXmaVsPKFCWxEsOR2aT3PdcA+TZMaeAz4dP3cu
	 Ce0RSg8ylrFCQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PSEQIF4J1xHG; Thu, 21 Dec 2023 22:34:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6E77428D6;
	Thu, 21 Dec 2023 22:34:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6E77428D6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D124F1BF329
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 22:34:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B4A9060BAF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 22:34:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4A9060BAF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ouqewumrb_Th for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Dec 2023 22:34:04 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D12A96105A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 22:34:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D12A96105A
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="393210229"
X-IronPort-AV: E=Sophos;i="6.04,294,1695711600"; d="scan'208";a="393210229"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 14:33:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,294,1695711600"; d="scan'208";a="25124337"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Dec 2023 14:33:57 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 14:33:56 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 14:33:55 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Dec 2023 14:33:55 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Dec 2023 14:33:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JfRNsUebd8C9ZscLy0TKQ5O/w8wZ1Xfn4R17jQg8iyObNL57M/kDmbWMP1h432uAfHeqBjghFOb8K66nf8DinsxzKoejgNymF/uR8bGO3xso6V6Ms5ewECdaSlWJFxC9Gxxc6fquynriWkvR7sj3+PvVOk92jl7S7EheiirlgOlTPrCmOyR5YCu1XkSX2mqqKQ308X7hLy7nANfEwuFHKsg+rUu5BDZVaFIEk2O2ql1Au2X3rW5jVgZEMcYkvRrGkMRt1l9Rgh4/KzVO+MR1PPinxFG1SeCDsRFY/HRbK2X6yiMZ8e1FSotx56ACQOkGKpCDr4PSX2gUFBCiyVluNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AEpN2CM+lCzmfcvhS9Iv70A1onsCiKZZJLUs4sAJlQo=;
 b=ilZSBQWKg5azlaCdkMTYdFQZNatdCe6hmeRrNTGHFrwR1W5g5yCVp+qiEylcjc0lpJkzNGTDWf2Ohx8raZv3GEcLlTqT/FMo/yUWLNqa6m5YuokqhExbr6mX1Q9GidTB797YCkVk60e0kk+SxJr/1Sh7rEppk2hhz7lWsaNXbpZtSyJdV+Mvenn8cRHV8yAxB8Mag5y0er8IIU4lapx01t7vh1CcycrHVYd83nDRpM0hXH3HQZX8gq2J2BPmKjoLYbXdoCYnhy13Xai4LZn6s1PLVmMh+ygAzz+YFJRxaH9aq4vEZ58IS5wxIyGr9A2NjXlb51a/BYOlraxvfPRH2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB8058.namprd11.prod.outlook.com (2603:10b6:510:24d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.21; Thu, 21 Dec
 2023 22:33:52 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::dbee:4787:6eeb:57f5]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::dbee:4787:6eeb:57f5%4]) with mapi id 15.20.7113.019; Thu, 21 Dec 2023
 22:33:52 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Staikov, Andrii" <andrii.staikov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v4] i40e: Restore VF MSI-X state during PCI reset
Thread-Index: AQHaLg+1nFha3L2DwEqLnzO/OAbnhLCzz92AgACPV9A=
Date: Thu, 21 Dec 2023 22:33:50 +0000
Message-ID: <CO1PR11MB508912AE1CCD92D307ABAC85D695A@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20231212122452.3250691-1-andrii.staikov@intel.com>
 <714694aa-a6c3-4e89-ae12-a6a87bdf430a@intel.com>
 <PH0PR11MB5611D8F48DE4DEA4CA6F40C38595A@PH0PR11MB5611.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB5611D8F48DE4DEA4CA6F40C38595A@PH0PR11MB5611.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|PH7PR11MB8058:EE_
x-ms-office365-filtering-correlation-id: b30bd6db-ab79-499e-3f47-08dc0274e7ef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ot7xiRTnlezrij3qp6ZSBIgJlF9KUp1gRBZDmEDcRIY5eSfoO+ICkfctZPHoKWoFqvgebCyYTVNnx4xzeMLeEKyG/pbML3U8zodNO/HVnA+WOLxCS0ipaaYu9//io6g/4tEb/j5wI7qU1DifK8KtJwPWS/4EY11TfkG6gJWFr3pAVcBczMg3HaSsxPAs57WEtRPSGhhqbN5vUQ66UwIxVX4h7ZzbPBH+XDajSHIRCAc+grM6y07qu/cTkmkAObw2aZ4KGY31UTqnXDocwtYW40R/jxpy2Avgy/OUnSgNn0M4isdrEPlQtWn8LgVnkVp8xkZ8sCmRznNRpX9QaRxBoaizFxT1td1+GOKxMIKMARZ6+G6ogNBLKN0FtkqejLnh1W+qedXuDi3A68X/66MsgpoSonvI6mneEl2nKLZVf/RHrnqtj3tv6FkqGhFj43YeBBEPuDNqavb0Bbvk8K1OHvFlf7gAwBTAw5Pjm9yU9J07Q5KC09JgN4s4Lojdl26+6pn0JYyhYHeN40Opj75e8PXCpDAog7XR2cGFO0JPL9nUqZP9VHdBL5dCpI3tknqY58KcyY3GCEEuwWYWQZTOhKDhgAbwCFEYpl7PXObb0voHSmkpYxCGfL+FIQDq5XR7fhelp41F6WXTdjruFd/hJg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(376002)(39860400002)(136003)(396003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(41300700001)(2906002)(5660300002)(8676002)(8936002)(4326008)(52536014)(66899024)(122000001)(38100700002)(86362001)(33656002)(55016003)(83380400001)(38070700009)(66946007)(66476007)(66556008)(316002)(82960400001)(76116006)(64756008)(66446008)(53546011)(54906003)(9686003)(7696005)(6506007)(966005)(110136005)(107886003)(26005)(478600001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?czVPNGhlUGhCVUdCai8wQ0pkVC93WFRoRlBrSWZ1dHVmU3hOYk0zVzU3TkFs?=
 =?utf-8?B?VVhXa0ZPUXI3SE5JVnl2K2RaRWtHVUFkaER5K2NHd3dZZElxVzVXMU1PL3VT?=
 =?utf-8?B?ZnB6bEtxVGprSUoxckNFT1NUamxUTkZtTXkyeHhmVDI0eXQ4dGx1YktBQlVi?=
 =?utf-8?B?Z1VBcnVFNnFIOGgxck0wbkt6cEhKTmFMcmNjV3J4Y3E4TjRrSTdoczJ0SUFX?=
 =?utf-8?B?dmppR29VZG1EL2tMaDI3VE1jTEs5aThPZVE2clc2TkFKOGNTTDZPdHJtWGcy?=
 =?utf-8?B?OFNFT1EvdWlYdDRvZEh5TmlkY084VkpZZ0lyR29DS09tbllPTmJxa3VWMU14?=
 =?utf-8?B?U29IZk5Fb0lLMFEzYUg1b2x5VjF2YkxudTZ5dXFaK2xIYlAydFFLNGhHc01L?=
 =?utf-8?B?anQ0Nk51aXNIOGFqeTllemZsK1lDcXpxdzhFUHNaZzFxWXhxNStWUVhWdnZa?=
 =?utf-8?B?cVVJaDlsZUJpclgrWEEwRGZUVGxZejVhLzVOODg3eGx5Q1E5Zm1kV3VvbFFi?=
 =?utf-8?B?dTIvcU5GWG84RkFqcXU1OHBwSEVncEFGbnZaNWJiRVJjY2JpbHl6ZURjbnB4?=
 =?utf-8?B?enk3RUJtK2FyZlMvdWpINTlvaEFlaEVRaDVkRDZ0L0RMV0c2dXErcTB1aStp?=
 =?utf-8?B?ZitkQ3dlVTdJSUlkRExnNlhLem55ZUdwazNvTzBuNEFjSFFaUlJTc1JDUTBS?=
 =?utf-8?B?cEJLRjZRcWUyTEo0UUExWnJ3SElITllFaTRyUm1PekFtL2NvUENNL2lCOFFY?=
 =?utf-8?B?SGVobjd6ZjhxcnNtRlBTODBxVlQzSHFKVWNucmlXeXY3RFR0VUdieDZNZlpR?=
 =?utf-8?B?QjVBYUFTT25sRXhqR1ltanJoNUxWZTh3d0ZLbHRpeUpjb3MveEhqdjNDWDJx?=
 =?utf-8?B?OXhZcjZKekZ3MnF5YStVaEhjaU42cUZ6SDFyZWlTdnlpL3J4aXlmVyt1cHQ0?=
 =?utf-8?B?R1JkRnRSU29uSDE2eTB4NkVWWDZQQS9LKzJxSFpDNm1LQVJoZkFzd1p6SHFj?=
 =?utf-8?B?aG9JRGJuaFIwOURlNVJvWGVjeUFwQkJCa3EycWgxMzI1ay8reUxmWHRNRU4r?=
 =?utf-8?B?NnZqaGIySWRJZEZxeU1FTzJ2UmlEMmMyZmFSbnpMdWl0WWYycTAzUnVzWDFD?=
 =?utf-8?B?RFRRSHljbk5BSXo2MXdtUnVWdzBXTkJIdC9mYU5jU0dpSGErTS9ZY1dnc2o5?=
 =?utf-8?B?VEJucTB0WURRQy9OcTAvamtVNTN4dzRjNTU4RGlLNjdTSE52VkR6by82Y2Uy?=
 =?utf-8?B?bUkrZzFlV2lJZmF2Uy9iNmN6aFpYSkNIazloTGRPd255U05XSGM2TklXaHZH?=
 =?utf-8?B?QU9sTXJRV3RCOFNCbDl4cC9RN0Z5NVlIR3N3RndhREhvaGlYTUIzTXo3aE9r?=
 =?utf-8?B?SWtTZ1huUWxIWUFYYnJBc1FHSUJ1ckFqMU9IS3I5UXRqUjE4Y05MZ2VBQm54?=
 =?utf-8?B?YjNzZVhHRnhtUlNPaTdTcS9ZU2lHR1o3SlNvQzZOd1VpT1JqakhUNzFhWjJW?=
 =?utf-8?B?V0haM2MrWWF6a013dXZsaXRHdTFEMVNYeVU1QTJZbkdjSUxZazFSV0l1Y0tU?=
 =?utf-8?B?VzE1RkdIZkhMdFJQTFh5dkhtaG1aWGZyR0wra2NUSHp5T2tyZEp3enNxWFRR?=
 =?utf-8?B?WUx2WER4TU1nbGV4V1oveldrSjNqR3ZWdm5PQVRzcFF1d2ZTaENoUmYvNEcz?=
 =?utf-8?B?N1A3bGZ0emo2THB1UEJBeE1nd0dwUkNGTU9PQWdqZml6ckVPdkF3U01kczkv?=
 =?utf-8?B?eURXVnNjUkcraExCM2lKcjM3aW9yZW4zY0RIVU5jQ2R1UzBxbVl6TmIvazdh?=
 =?utf-8?B?NkU1MjFwWURyaVJSZWQyL2xmSmNXSSt5L0cxUlU3QytWeENwOXNONzdIVHlL?=
 =?utf-8?B?cmtxUXB6RWpORkpBWWRYZS9FMFRQSVJwcVpMSUpTZDNGb2haSFBMeTVVVkRV?=
 =?utf-8?B?Y3lXeTVKdjhKK0NxMmYyd0wrWFlibDRNcGVnZVp3UmhWN0ZwdHBsdCtuNldw?=
 =?utf-8?B?LzlGckNSTGZtRVR5Y0xJZldNUERjNGZEK29XL1VxR2NhbHF4WFRteTZwOE9h?=
 =?utf-8?B?RGpDbU5Uc1c0VTFpQ3h5N2pwRUJLQlJMdzRhcnk1TWlqZGZHek1hK2QwWmVt?=
 =?utf-8?Q?qTXecAnl4aCejsHJ7JPh5axh+?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b30bd6db-ab79-499e-3f47-08dc0274e7ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2023 22:33:51.0075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2yw5IMYeYQo1XtH9ZeUOJAce/vfl/wQUAVD55/gd/fHUUJ/K3qeBI2JWX2lYVD9GwdX1lD/bTz0OggvMhY/Q+z6GOtSuNdb0TYTSAIJ1RSI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8058
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703198044; x=1734734044;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AEpN2CM+lCzmfcvhS9Iv70A1onsCiKZZJLUs4sAJlQo=;
 b=gK30LscSqW65aKy18cSrbL/V8gq5eKEj6UBcl7alp4uC7oqhTEAh0Ui4
 eJrqqDHvp5mwLlkxjBmUqOVkAezQ0TjCj5zpt/YRofccbsW9A7R7Akf+E
 nkjWInZDSjoD4Z3Ud24bTBKBXRqY3FC+dl+DlJH6ojEwLC5pDIC/HIfgO
 gzut3i82sUPR7KGc6bcCVc7nbTthfejRMYXNxwYkRpK2GvwE8773mXFVi
 4yQ/hjiwzL9E0NIXhKTthBRwhhjK2XNEpOekGmmWte219uPuqI71cdSi6
 tnZg72rU5ea0yTsxfT5wUrRgxBOwYZrVjQxgIccevbwI1GVsOWiz6f7I+
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gK30LscS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] i40e: Restore VF MSI-X
 state during PCI reset
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Ostrowska,
 Karen" <karen.ostrowska@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU3RhaWtvdiwgQW5kcmlp
IDxhbmRyaWkuc3RhaWtvdkBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBEZWNlbWJlciAy
MSwgMjAyMyA2OjAwIEFNDQo+IFRvOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGlu
dGVsLmNvbT47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBuZXRkZXZA
dmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBPc3Ryb3dza2Es
IEthcmVuDQo+IDxrYXJlbi5vc3Ryb3dza2FAaW50ZWwuY29tPjsgTWF0ZXVzeiBQYWxjemV3c2tp
DQo+IDxtYXRldXN6LnBhbGN6ZXdza2lAaW50ZWwuY29tPjsgRHJld2VrLCBXb2pjaWVjaA0KPiA8
d29qY2llY2guZHJld2VrQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVt
eXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJFOiBbUEFUQ0ggaXdsLW5ldCB2
NF0gaTQwZTogUmVzdG9yZSBWRiBNU0ktWCBzdGF0ZSBkdXJpbmcgUENJIHJlc2V0DQo+IA0KPiAN
Cj4gPiBUaGUgaWNlIGRyaXZlciByZWNlbnRseSBzdGFydGVkIGNhY2hpbmcgdGhlIFBDSSBkZXZp
Y2Ugc3RydWN0dXJlDQo+ID4gcG9pbnRlcnMgaW4gdGhlaXIgVkYgc3RydWN0dXJlIGluc3RlYWQg
b2YgaGF2aW5nIHRvIGRvIHRoaXMgc29ydCBvZg0KPiA+IGxvb2t1cCBvbiB0aGUgZmx5Lg0KPiA+
DQo+ID4gU2VlIDMxNjQyZDI4NTRlMiAoImljZTogc3RvcmUgVkYncyBwY2lfZGV2IHB0ciBpbiBp
Y2VfdmYiKSBbMV1bMl0NCj4gPg0KPiA+IFsxXToNCj4gPiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9pbnRlbC13aXJlZC1sYW4vMjAyMzA5MTIxMTU2MjYuMTA1ODI4LTEtDQo+IG1hdGV1c3oucG9s
Y2hsb3Bla0BpbnRlbC5jb20vDQo+ID4gWzJdOg0KPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L25ldGRldi8yMDIzMTAxOTE3MzIyNy4zMTc1NTc1LTQtDQo+IGphY29iLmUua2VsbGVyQGludGVs
LmNvbS8NCj4gPg0KPiA+IENhbiB3ZSBkbyBzb21ldGhpbmcgc2ltaWxhciBmb3IgaTQwZT8NCj4g
DQo+IEZvciBub3cgd2UgZG9uJ3QgYW50aWNpcGF0ZSBtdWNoIGJlbmVmaXQgb2YgdGhpcyBhcHBy
b2FjaCwgYW5kIHdlIHdhbnQgcmVsYXRpdmVseQ0KPiBzbWFsbGVyIGNoYW5nZSBmb3IgYSBidWdm
aXguDQo+IA0KPiBSZWdhcmRzLA0KPiBTdGFpa292IEFuZHJpaQ0KDQpTdXJlLiBJZiB3ZSBldmVy
IG5lZWQgdGhlIFZGIFBDSSBkZXYgcG9pbnRlciBpbiB0aGUgZnV0dXJlIHdlIGNhbiBsb29rIGlu
dG8gdGhpcy4gTm90IGEgaHVnZSBkZWFsIGZvciB0aGlzIHNpbmNlIGl04oCZcyB0aGUgb25seSBw
bGFjZSB3ZSB1c2UgaXQgY3VycmVudGx5IGFueXdheXMuIFRoYW5rcyBmb3IgdGhlIHJlc3BvbnNl
IQ0KDQpUaGFua3MsDQpKYWtlDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
