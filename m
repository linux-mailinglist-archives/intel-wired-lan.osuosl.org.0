Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E81C84FEDE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Feb 2024 22:29:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B65C54043E;
	Fri,  9 Feb 2024 21:29:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZJFqvXwsdzpG; Fri,  9 Feb 2024 21:29:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 871664048D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707514158;
	bh=3pDn/+O84hpM7F9VzqiEdmmq4Zj5n5C4nFhsK5/Q97o=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9KWkto5C46ay+qlrA5RpMrXFgR25kjZ4SJ5vQRk3AZH4IZq+6s2H66qXBcYD3Z1I5
	 H0Iu8v3c74xdHYCukTI5mxKaJRj+pI3j3Mv6gvl4PKSad64FRcoU1np1UgYxCRXH5s
	 oRCjvLdxJE+II1DuEQiWFO2v676ZwEEJ+vS838pdSD2OzzN5CAXVembeHjCLubNaLx
	 cbaXW2pyDeUf2/tu+Dq11NsGkId53TFovqhQBasjf0gpo2UfSBFDm06C1dpNRjPDTo
	 gZF6qYvWldnLGdMxe6RSAyPHInwga4zPuksN8jRZT5Fr1C/XB4SslZmKzkcg+bpvFi
	 0t096fbnmSUuw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 871664048D;
	Fri,  9 Feb 2024 21:29:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 689FC1BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 21:29:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 601BA4042A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 21:29:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4fE2L311j1Hn for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Feb 2024 21:29:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.88;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7389A400D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7389A400D0
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7389A400D0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 21:29:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="436644020"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; d="scan'208";a="436644020"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 13:29:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; d="scan'208";a="33121638"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Feb 2024 13:29:14 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 9 Feb 2024 13:29:13 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 9 Feb 2024 13:29:12 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 9 Feb 2024 13:29:12 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 9 Feb 2024 13:29:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a5QFOrPz2tuyJweP2o1fH7jAD92DUJ/JuYygexU13fOEYtLibHSXh/ipYA7szdALF8kzucfKyPSgN3S+TgeOwziPBv+wqbKexcD2h1LFzdLwTtpCLsmy7AYOv1oLQlTYulXsmtCY8M3kPMQh+zNI3wy1PZ9nOT2X5hADu+ZmpnyKHDr9HwU7fBgh+PZA86FtllOJbevF0wHuqh+DnCFWVOdrvweXeH4OEY2Y5ZTmzdLvMI3TjTZQ/6759Uf0k1BxO1h/M5wWXumbFmnrCMZGZvquoSaxefC9UnoC3KygnVfBdwDdBm4wJzupwnRwDhAo9SVAghGwr274lDaJyxSmpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3pDn/+O84hpM7F9VzqiEdmmq4Zj5n5C4nFhsK5/Q97o=;
 b=KkojrKISxh9ruKXedNklR7XqXljeybgZMan2x+dTCk2K8KvQjZ+KUapBISXndzS1IFPoQ1ZebBCFHGEKXpN+WH4NWwjgZW8f58S8Hj3OrsFnQ6h2zS5jhhsDeYrNS5mdcdb/pYmxc6ikLe+11q2/OhBO6WhXuCLtuAE+E6XXw/I1XeQ9qucrCSlonhJjJEXAn5SiKHRSOBtpC2VKI365gFOH2E+dEiaznH7IhtZcAgsFIfZ/c85Bu4kkibSdfm6H9OI1hn0d5GMQcDSoHX7rAc1xV9Unrocfr7Emy/qz1K7iOp5vUZ85t61wNtnCCpiaOVwu4CMH8PNlBFneCKOWIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 IA1PR11MB8248.namprd11.prod.outlook.com (2603:10b6:208:447::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.39; Fri, 9 Feb
 2024 21:29:00 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::69dd:6b79:a18b:3509]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::69dd:6b79:a18b:3509%6]) with mapi id 15.20.7270.025; Fri, 9 Feb 2024
 21:29:00 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/3] ice: fix dpll and dpll_pin
 data access on PF reset
Thread-Index: AQHaWeHo5Jju0b4wkUOWbqSu8g+/3LECXkGAgAAr0MA=
Date: Fri, 9 Feb 2024 21:28:59 +0000
Message-ID: <DM6PR11MB4657B59422DF9662C7C346E89B4B2@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20240207161923.710014-1-arkadiusz.kubalewski@intel.com>
 <20240207161923.710014-2-arkadiusz.kubalewski@intel.com>
 <f9137535-4210-2476-9d86-5425b5ec4f3e@intel.com>
In-Reply-To: <f9137535-4210-2476-9d86-5425b5ec4f3e@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|IA1PR11MB8248:EE_
x-ms-office365-filtering-correlation-id: c0929300-7e72-43cc-e3b0-08dc29b62164
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KOp4U/c+XESeVDFz9xyGpsNJ1v+LjBQ8rQTEhXJav+eRqaZtLzqRyj5E+stpuJPq3WYYNUtxIma8Ie+LjPxvTa5DTddyhPrrOgUgl5N6o2j6xrXQrhwSg0EpXTmlKsjkaidTnMA7hgiVVMewXa8tpzP5Rivxxd+Y7qppXkfhGIsi69b+ssatCfoQK2C6XiRP5qzRuc++XFpZR0tm9SHBZwONL9m7C6Xo0BY1nNEHeQ4pJb4FtL1voN5tbytQW3tyDM2yPUwd72T/zyFjIf0sjm3uyXcyv0nxTkR3fpDHfLH7fvFhckAQ2sWOMdetpHecfeQNG4rKtImlL4JQ+Ki8HIvIfvKS5I0g8KBbrrhH5oMyLpnB11DWxv+78pUB3xHbjo6RJ+PRy1zFhCyJ0TwXbN1Hb2RG7JGGD4UjaVxTpLDPqzQGpmIFnbCk9qOKJuk3suu8c9XY6F4nFAAPdqgm00MLACeLUIZZmo/5iSqs/UxrfLjm2nyYnnKMsmywC1SjptaCy+Z+bf85fjL3QQUPH5DlKtcV8dbJTVcdK3tLmYb0f2GoSJHtnHp0g9H5jhVX7eD0YDHEalbMypc9sYF/N3RrFHV9eRhI9N96PjZ36i/qrCPKxXH5khSy+Ji9frTR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(346002)(366004)(396003)(39860400002)(230273577357003)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(55016003)(41300700001)(4744005)(6506007)(83380400001)(7696005)(478600001)(26005)(71200400001)(9686003)(52536014)(2906002)(5660300002)(66556008)(110136005)(76116006)(107886003)(66946007)(66476007)(54906003)(33656002)(38070700009)(64756008)(8676002)(86362001)(66446008)(8936002)(316002)(4326008)(82960400001)(38100700002)(122000001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V1pyWUZzWjN1NnlmK2RDWklQMFh3NkdUd1VsUmJxTVFtK1JHMnRGVEJoQ0JT?=
 =?utf-8?B?eWdnUjE4aWwrWExCdVhyWVQxU2RBamloUTdLZ3hyVFRGZW1wY3NIU2xvUElr?=
 =?utf-8?B?QXZ4SXlLUGgwZmRrVzl6b2hYblNWbXpXSHFlMTV1d3Y4SXJ2ZlZtUVRESnk3?=
 =?utf-8?B?bVpNa3lXbElIVVV0b0xoQzhNZHVHR3ZEODJpYllLRWw3WDRFdGg2bEpRNVNB?=
 =?utf-8?B?dXBBVk5DVUhpd1ZJRjU2c0JnbHJnYXdCSndtUnF1TDdrUnNWckJhT1JFdXow?=
 =?utf-8?B?RUpsWGtIbDdVb3F2RkRPTk96WVhEY3NROFdlTmZLbFV5UmNvQ1NDMUZhUHUv?=
 =?utf-8?B?dy9ONFZML0tKOHBwTS9MUWR3ZDc0RVlwbURxWVlPWmRJSGlkZHM3eHgrenhz?=
 =?utf-8?B?cHhzRldneGF2eUl1Y3VVV3pjdjVqQm1pL3UvTGVFR2FDK2ZvdmJVNkdWeUlo?=
 =?utf-8?B?U2tVb1hUUjl2dGV0L1RJZVFtVmJqekVCVmFUNlhNWFpJMmJMN0krWk5ETW9O?=
 =?utf-8?B?MUlEQVhjY0ZqNEQ1eHBuT0RtWlMwY3A5U0x0SFlyWXU4Z05ZUFhGNVYweDQ4?=
 =?utf-8?B?Q3JuVEZxT1hiSTl0b2pGdnNHazNPWlBPbEZQWWZoK0w5eGQ3Rk11blhtSWE5?=
 =?utf-8?B?TncvM055a2xVbzdrdVphTCs2RUpBamtZU3FOVzM1amNwUy9yZEZURjJWMXFt?=
 =?utf-8?B?YmFJWWJYbmdVVHlUM3Freit4cTZLT2wyeEkrRW5iYWlqLzExSStOcFRNaHh5?=
 =?utf-8?B?T2tKdnozRUZOSk9mYnlWY0tPbVJlNnF0V0pzeTZjeWFlL2RhbnVVOEpEWGpi?=
 =?utf-8?B?bStMbURudlRNQzd1NTIwMXg2bmoyUjRnQm5QbExORWJyTm9sLzVEczJ0WXA1?=
 =?utf-8?B?bzU5SGt0SjV2VTJLY2JUTzBsMDg4dktYUHlDb1dXa2hja0t0SDcrU2lDWlAz?=
 =?utf-8?B?cXZobEE5SndvN3RqYUNxQU0yY01Wc1pHblk5aFpURmtJYnJwYjFDZWhCd2VX?=
 =?utf-8?B?Z014TC91VkRpZzF2dFBpd2VEYzNVZUdqR1lUb24vM0dsRjVPNXFIUjR4VHdI?=
 =?utf-8?B?dlNZeUdvSWZtQTFqYTh5dldEdDhMNWpLR2twQXBuVTdMNnpOQURhY2owT3dt?=
 =?utf-8?B?ZldTZ1BnNHdFeitKR1dURGlQRnpmZDg4YzdRMkNlb1h4LzB4OHYrbVkxSW1K?=
 =?utf-8?B?a2FiSkNRNmpIYTBSV3lieXZTcDdFcXJuTkpZN3pIQUw3bUFpYzBLSzBIRXZG?=
 =?utf-8?B?dnBYSE02MzF4NFlNUHdRN2ljWURvUFMxejBLbHE5SVNJMm5PR3RRdWthRjJh?=
 =?utf-8?B?YWJ2NUNFRFFUaVc2QStOKzdkQjFHLzJ4U3g0Vnp1TmhDTkxIZC9nalJ3U0Za?=
 =?utf-8?B?VWlIVTNmQTE3NGlCeS8yZk5SYjcxaUh5Tm5EdTQyb3BrQW5Xb0QrUG5EL3pp?=
 =?utf-8?B?TWpHdndFTkNLbjZuL2dIVU1WTnJHZFhvMVBtQWxpTi85SGgzamFWNXRjaUIy?=
 =?utf-8?B?cFNlRUx1czYvK3YvQkt4eVArNzczeCtWc1pxbGkxNlV2ckdGUW9GSkIzZmd5?=
 =?utf-8?B?OElRdDJqWlg4STdqaVladGVrdUFPemdPSzdQL1krRWR3SGJ4RXRPZ1RxdHZk?=
 =?utf-8?B?clhYQVM1TjR4QTVUNU5BUGt1VWdqVk9IRHEySVJrZEpESDNzL2NRVHJmS3FO?=
 =?utf-8?B?Qyt6M21sMW1KRGdRMnJvdkpqZ3FPeEpJd1hsNTdTeTIzNUIrWFBpRThiSHl6?=
 =?utf-8?B?WWZKa0RHdDU2eGJpYnQ3ckp5ZXlMV1ZjdndtVVI0blFjZGMxeXU2KzBRT09M?=
 =?utf-8?B?cFVBTHRVYlFva1ZnUXJBQzY2V0FsU0RoeVp3Z21Rb0s5alRJVktOeEJTMFU1?=
 =?utf-8?B?RkhFTnFJL1NUQVlVTmJzK3huUzRoak9UZ25PKytjc2xoYUs1T0g0UGNGZTdv?=
 =?utf-8?B?N21zQ0JvWGNKMEVES1ZTY0Jrbkt5TlRRM2IxSk5lemgrc3d2cFFiWmFCTFNY?=
 =?utf-8?B?MC85ckRaRnlPSU44aVNzSFFKMFdvb3BxWklYcW1hSG1GK2Zwb1F6Y1lyVGJl?=
 =?utf-8?B?Yml3R1dKOHNLUzlBYnU0Y0hwZEpkMVFGM2pnQTNXVno2enlrcDVHaE1JeGg5?=
 =?utf-8?B?ejh6Tyt0a1BheUt4VDFVVlJweG5rQVpHRlhSV0JkaDJTaXBOMzZ3ZkZxSVpM?=
 =?utf-8?B?M1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0929300-7e72-43cc-e3b0-08dc29b62164
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2024 21:29:00.0469 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l/x8HRANiSN+sGVzNyHWEZ2cJyvFyYN9O7qGialcFoPlFhIQlIkdL3k3IDHftuDs0W/Jo9l6mY1XcjMRjjq8McJyAlf2LD9LUjw4tjsLBhM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8248
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707514154; x=1739050154;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3pDn/+O84hpM7F9VzqiEdmmq4Zj5n5C4nFhsK5/Q97o=;
 b=nQmocwAwIL7nBnoGqP7SpKq9qwYR5pySv97Jwii7dw+bccBWjCX+6khh
 wheV6AMdIKXkhZRKBDPrzj6VNsNziBanVOK8JHzY705t4N29eAJlTslvb
 4E8H0kudc7JTLiLTElOrjrkCqkSncqCI32UGUaoJmNuFXWo42O7yR72V5
 W6w0grtmZWzvz2C3YI/y7tBc/v/Ol6LijWRnxOkJADviA9ipdOK8/CCYQ
 nEFaq3i/WksBif+WdYHVfb1G4ZDKfZU9Sz9TAWnc3b6+p8EaWX7nW9Fql
 hhvyR29OvrB4Kda8EAmKN3bn/0GrTMdN+vygkcGqZWzsjdK94i5UdQTHw
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nQmocwAw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/3] ice: fix dpll and
 dpll_pin data access on PF reset
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PkZyb206IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT4NCj5T
ZW50OiBGcmlkYXksIEZlYnJ1YXJ5IDksIDIwMjQgNzo1MiBQTQ0KPg0KPk9uIDIvNy8yMDI0IDg6
MTkgQU0sIEFya2FkaXVzeiBLdWJhbGV3c2tpIHdyb3RlOg0KPg0KPi4uLg0KPg0KPj4gK3N0YXRp
YyBib29sIGljZV9kcGxsX2lzX3Jlc2V0KHN0cnVjdCBpY2VfcGYgKnBmLCBzdHJ1Y3QgbmV0bGlu
a19leHRfYWNrDQo+KmV4dGFjaykNCj4+ICt7DQo+PiArCWlmIChpY2VfaXNfcmVzZXRfaW5fcHJv
Z3Jlc3MocGYtPnN0YXRlKSkgew0KPj4gKwkJTkxfU0VUX0VSUl9NU0coZXh0YWNrLCAicGYgcmVz
ZXQgaW4gcHJvZ3Jlc3NcbiIpOw0KPg0KPkFzIHBvaW50ZWQgb3V0IGJ5IGNvY2NpOg0KPmRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZHBsbC5jOjQ3OjI1LTQ5OiBXQVJOSU5HIGF2
b2lkDQo+bmV3bGluZSBhdCBlbmQgb2YgbWVzc2FnZSBpbiBOTF9TRVRfRVJSX01TRw0KPg0KPlNp
bmNlIHRoaXMgbmVlZHMgdG8gYmUgdXBkYXRlZDogcy9wZi9QRg0KPg0KDQpTdXJlLCBkaWQgaW4g
djIuDQoNClRoYW5rIHlvdSENCkFya2FkaXVzeg0KDQo+PiArCQlyZXR1cm4gdHJ1ZTsNCj4+ICsJ
fQ0KPj4gKwlyZXR1cm4gZmFsc2U7DQo+PiArfQ0KPg0KPlRoYW5rcywNCj5Ub255DQoNCg==
