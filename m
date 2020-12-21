Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B19DD2DFD47
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Dec 2020 16:12:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F2C186E33;
	Mon, 21 Dec 2020 15:12:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mAnqWqHvccmI; Mon, 21 Dec 2020 15:12:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 07F5286CEB;
	Mon, 21 Dec 2020 15:12:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0FE9D1BF391
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 15:12:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 08A21873FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 15:12:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jnBdynAK0Qas for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Dec 2020 15:12:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CD1A48740D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 15:12:25 +0000 (UTC)
IronPort-SDR: Wa5k5apZ2sZDpOvim2bBoS++z3FxoOqG81p9HkF4jgg4N5xMGIli0RCQDgQvrDOqxqSgDxnxf8
 QJji2mC/f2sg==
X-IronPort-AV: E=McAfee;i="6000,8403,9841"; a="154952569"
X-IronPort-AV: E=Sophos;i="5.78,436,1599548400"; d="scan'208";a="154952569"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 07:12:25 -0800
IronPort-SDR: 5rpH3qVuKUX6zl0H6LY4YrlUyKNDgZeAa0/lP5YRyA6MWpNCqMNmDpEpRnFcZuHtGwBhyPdey1
 WnRvv8WoAwDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,436,1599548400"; d="scan'208";a="372570184"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 21 Dec 2020 07:12:24 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 21 Dec 2020 07:12:24 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 21 Dec 2020 07:12:24 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 21 Dec 2020 07:12:24 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 21 Dec 2020 07:12:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fhe4JFrbklWBVxhsPvqv/Lq2x11wH/qhfQfMQpgdHSxi0APlP0MS+r6HA+GZxzf8vF5rO3OkjLYW3ThMWcTz6z/y9DdyndB/A2W7ijKtttCEvpXxtDVb6DEFgMjAW2nAic98mgtg7aiAhYF1ZCA8+JqMhEsHiat7GgKqoFykT01Awm9TSrEXBaHWMNyKdXNwXg8lKV0p7UqM7ou26zbnm+yvxYqgy8WhTcSlUmQdYb1Ht54EWvKWqk1KJubDpL08YqWutEaXnHrImw9YVKydB9VbPs8e66NpiOkHuf5TzB6Wh9m5J1g/r+5lThWjpAAT+XVef97pMjBcfLHFkxIixA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ER7gQrU99fM0BUHjKZSo4boz4DhouCKDH67Eb7xiMW4=;
 b=CvNHrpV4XG93fXano5FiX/T9H77ouyds1zlPLZ+PQkeokpZ8jaU5v3xR6ZIK2cJ3NPFmhk7tEi4WKp3uGIdI15eH9CnUquFWWthLdtekfxj4sv0lYJ4hfJcVEZuQlyJY/F4vkcXx1+ohEGN4APJ2Bf5NW4I82Bf7nsOSa6eVS8ejzsEb2eQBEQrOXrkXkf7iRFP7K95eqFrD/vTG7/YI3CNSRmWw8afyaIPWc0eqRz5/O+L6CEzPKuF+4Lqvow8niPGLEf7hxwUq1qNg2dCBpqLUkzZb1iv3xZ99rwxKsEXGZ7VJsteLNFgY+m2w/cEoMeNEH7afIXlFwKQ2AUcPNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ER7gQrU99fM0BUHjKZSo4boz4DhouCKDH67Eb7xiMW4=;
 b=XRvNiKgVKsrQBgDcUzPAgCMBbPY/BPwuo03s7esEADIPNvtHldQAoNsQjKjpoz7EJ024vtnrTpbcYKPwP0Twjoj2rFz1yKinsDz0UCyzpPwOE8bCTk7ZpXDwqMsqKOOZIkB4+Bbw8TSjwGk09wAgXPaEGCCoJ31mU6XIrLyf0Bk=
Received: from BYAPR11MB3606.namprd11.prod.outlook.com (2603:10b6:a03:b5::25)
 by BYAPR11MB2598.namprd11.prod.outlook.com (2603:10b6:a02:cb::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3676.29; Mon, 21 Dec
 2020 15:12:20 +0000
Received: from BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::d8c2:b311:7658:7911]) by BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::d8c2:b311:7658:7911%6]) with mapi id 15.20.3676.031; Mon, 21 Dec 2020
 15:12:20 +0000
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Thread-Topic: [Intel-wired-lan] ixgbe: 5.10.0 kernel regression for 2.5Gbps
 link negotiation?
Thread-Index: AQHW1dxMNbmdUNls8UiCEbNNvFykd6n+lcTwgABSJQCAAsNb0A==
Date: Mon, 21 Dec 2020 15:12:20 +0000
Message-ID: <BYAPR11MB360645D03BF65396B564FEA7EFC00@BYAPR11MB3606.namprd11.prod.outlook.com>
References: <7bb485c3-9556-d9f1-e70f-a4b3a05909c9@candelatech.com>
 <BYAPR11MB3606E48BA821185142354D67EFC30@BYAPR11MB3606.namprd11.prod.outlook.com>
 <3bcba0ca-8f3b-8428-861a-86aaff1688b6@molgen.mpg.de>
 <c54c8f2c-a295-c691-466e-07ae8f41b0ac@candelatech.com>
 <3c8510fb-af8c-b5f9-2af1-64584a667ac8@molgen.mpg.de>
 <BYAPR11MB36060F3889C66AE55092DA01EFC20@BYAPR11MB3606.namprd11.prod.outlook.com>
 <86fb482f-81b0-8a5f-1580-ed5b6f13c743@molgen.mpg.de>
 <MN2PR11MB361416A8BFB904EC0149C178EFC20@MN2PR11MB3614.namprd11.prod.outlook.com>
 <CAHk-=wiCOBCW-eKVuag6FOjarYnYAG8E2Rak2Qn2=qYJBjCTgA@mail.gmail.com>
In-Reply-To: <CAHk-=wiCOBCW-eKVuag6FOjarYnYAG8E2Rak2Qn2=qYJBjCTgA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: linux-foundation.org; dkim=none (message not signed)
 header.d=none;linux-foundation.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [97.115.69.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3bc6863e-9888-4826-6159-08d8a5c2d015
x-ms-traffictypediagnostic: BYAPR11MB2598:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB25989EF86AED2BD20F2990DFEFC00@BYAPR11MB2598.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BmX2XJa84rwcZo6MxIMKkOa54lV2AizD38cs7hpg4EvStO47w1OiXbKtSipEDc+sW/da9wrIY2xDqsDzKpOj2TsXBWgcc4wG+Rh5r9V1cG1btl6USvWGq3y6UwKgsWotwkwDH9g3J+/nURGdakJosj1NsWEMCvAjEA06j5D6p86HYXExTCFN4AmlrJYZpl2VMnz3ZnchPIEusKSkm9pXoQKbd8+XQ5O+uzY4HTMMhXZWevadNE+tJKJouuN+hpGB+WESwNA8gN5cH847Ktvjx3CYNLeHBTP5Hv/DyWRnlOLp2pZ+u759RjU4FQDG23CApBMFIxuV8F4wLUiQTBgcbA/pLknHSEH21ehaILiLjVXvZ37wOKjZfflpXj2Y/BtH1U6mXt+vyY3U/RhjhCTpygSQTQeUE1Yk171YD9GvgLnc4UfIDf0VCei+zWlzesED
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3606.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(39860400002)(136003)(346002)(396003)(71200400001)(316002)(2906002)(66476007)(8936002)(5660300002)(4326008)(66946007)(33656002)(7696005)(9686003)(186003)(66446008)(53546011)(66556008)(55016002)(6506007)(64756008)(478600001)(83380400001)(45080400002)(8676002)(86362001)(76116006)(26005)(107886003)(54906003)(6916009)(52536014)(52400400004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?ZFV4a1d5Mi84V2FkRm5aQjhWRGo2ZmNDaW1aK094Y01DUHcyUUFIZ2xCQ2VQ?=
 =?utf-8?B?ZDJvWldJY0J6UkM3aTh6eE5TZ3RGNzg3VlplUi9lekY5TThmdTlLYVZzWGFR?=
 =?utf-8?B?T3RYSnhTRW90MVIyQVhaV08zcnlUb2FxdTZvT25uU0xCNDVQanVSSWE5TExE?=
 =?utf-8?B?S0Njc2g3Vm9Ra1ZsK2lsKzFvUjVXSTdLMThmMHpQYTRZT2hlMmhrdHA0WHJr?=
 =?utf-8?B?Tk1iNVdabHY0THlMUVdqb3IrY3VGZ2RhNjJyS3NkSGZESXlCQlA3NEtQTmJn?=
 =?utf-8?B?dHRGaE16NzRBaFJrRG5YMnFUQURIVmFxeDFBUzBwblhLeHZRRm85eWdCcDdO?=
 =?utf-8?B?UTVvRXh6aFhrSXpyTG50MFMxYlM4STZFVFlZWjhYL2NHaTJmZGtMS2tYSDJs?=
 =?utf-8?B?aGVQY2gvNDhuZS9pVFhOajQ1c1F2T0dtaWJaemZibndFLy94ZlZWRVpLV2py?=
 =?utf-8?B?NHBWM2ZQb0ExT3MxblBnUENTb0tNUkJKL2NlY21laGJNUDVKV29UczV3c3cw?=
 =?utf-8?B?Y2tNZkM5TU1kdDVaeTRtTUEzNG1SMXFwdm1HOFNOYVBXQVpoMDdsUmxranFo?=
 =?utf-8?B?emlLSlJ4cEFlcldxTXN5bkVpYjJzallHbGhQaEpSNSs4ZGhiLyt5WW93YUI2?=
 =?utf-8?B?SHRuZ0lWV0xXMmZlWnhmeTFGdWpESER0MGlvY1d5cnYxU0pqS3BlSzFBdElw?=
 =?utf-8?B?cXhGelZTNCtORzlMckJ2Zy8vMEppWTY4THFXNXBTM1FoSG9uNDlVU3FzSWdl?=
 =?utf-8?B?cnV1Z1FlRXBrckFpNGJSd09BT2xRR2VnR2xKV2cybWFNa0xFbmRwTmIxbmgv?=
 =?utf-8?B?TGQ5U0NMWUw2cVlVMmI5NE9sMTFKZXJZQzEzdlE0RU1WNEg1czFtNFJqRzhT?=
 =?utf-8?B?MmFvaHdIWkRJMEIwZEJOK1hlL1c3MDFmOWJ1am1xS3FSYTBrTVk2Z0F5WmJx?=
 =?utf-8?B?MmNBdmY4dXJjM0RZb0RicXpCWDg2MHNLaHl2WmNUNnNUL3RVY1BUS04xVUw3?=
 =?utf-8?B?dFVRSndvOEdubEpOcWlwQ1NzMkdiUnpwbERzdDNqVE9nVWU3dGM5Yzl5L25y?=
 =?utf-8?B?REUydXUzZUV4UjQxaGRZN25uV29KNG5ETzBsY1QxamhCSEhkY2szbm5EN2lB?=
 =?utf-8?B?SE1uUFJKbWhZSDVxdjNKZzFsZUFZeHZyWldXRVdDOWV5V3g5T3VBYk44V1RS?=
 =?utf-8?B?a3hoWUh6OGY2ZVZNbjF3NEdWUmRZL1FCMDdBZWlYODlYbVlQbnlCcWV2ODJx?=
 =?utf-8?B?QUYyV2dkVUhDWkk0Rm5YOWJJbWhIcCtHTE16NlhjRzdOMjVXOUQxUVFXOUEr?=
 =?utf-8?Q?APJ23MxqFQp4w=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3606.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bc6863e-9888-4826-6159-08d8a5c2d015
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2020 15:12:20.5516 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EdqskvCsTpoquVyfrRs3gQZPCCDHbXzdTqiuZAEC28mD5lcWerv7BQgUmmENMDKcAzfulYFXy86eggW2rQcNnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2598
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] ixgbe: 5.10.0 kernel regression for 2.5Gbps
 link negotiation?
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, "Tyl,
 RadoslawX" <radoslawx.tyl@intel.com>, Greg KH <gregkh@linuxfoundation.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SSBhcG9sb2dpemUsIGl0J3MgT3V0bG9vayAzNjUgaGVyZSBhdCBJbnRlbCB0aG91Z2gsIHdoaWNo
IG1lYW5zIHRocmVhZGluZyBpcyBicm9rZW4gYW5kIEnigJltIGdvaW5nIHRvIGdldCBPT08gbWVz
c2FnZXMgZnJvbSBldmVyeW9uZSBidXQgbWUgYmVjYXVzZSBpdCdzIHRoZSBob2xpZGF5cy4NCg0K
VGhleSdyZSBhbGwgb24gdGhlIG1haWxpbmcgbGlzdCBhbmQgdGhleSBkb24ndCBmaXggYnVncyB1
bmxlc3MgdGhleSBnZXQgcGVzdGVyZWQgYW55d2F5LCBidXQgSSdsbCBmb2xsb3cgeW91ciBydWxl
cy4NCg0KVG9kZCBGdWppbmFrYQ0KU29mdHdhcmUgQXBwbGljYXRpb24gRW5naW5lZXINCkRhdGEg
Q2VudGVyIEdyb3VwDQpJbnRlbCBDb3Jwb3JhdGlvbg0KdG9kZC5mdWppbmFrYUBpbnRlbC5jb20N
Cg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IExpbnVzIFRvcnZhbGRzIDx0b3J2
YWxkc0BsaW51eC1mb3VuZGF0aW9uLm9yZz4gDQpTZW50OiBTYXR1cmRheSwgRGVjZW1iZXIgMTks
IDIwMjAgMTI6NTkgUE0NClRvOiBGdWppbmFrYSwgVG9kZCA8dG9kZC5mdWppbmFrYUBpbnRlbC5j
b20+DQpDYzogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT47IEJlbiBHcmVlYXIg
PGdyZWVhcmJAY2FuZGVsYXRlY2guY29tPjsgR3JlZyBLSCA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlv
bi5vcmc+OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgQnJhbmRlYnVyZywgSmVz
c2UgPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPjsgTmd1eWVuLCBBbnRob255IEwgPGFudGhv
bnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgRGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQu
bmV0PjsgVHlsLCBSYWRvc2xhd1ggPHJhZG9zbGF3eC50eWxAaW50ZWwuY29tPg0KU3ViamVjdDog
UmU6IFtJbnRlbC13aXJlZC1sYW5dIGl4Z2JlOiA1LjEwLjAga2VybmVsIHJlZ3Jlc3Npb24gZm9y
IDIuNUdicHMgbGluayBuZWdvdGlhdGlvbj8NCg0KT24gU2F0LCBEZWMgMTksIDIwMjAgYXQgODow
NyBBTSBGdWppbmFrYSwgVG9kZCA8dG9kZC5mdWppbmFrYUBpbnRlbC5jb20+IHdyb3RlOg0KPg0K
PiBJIGFtIHN0cmlwcGluZyB0aGUgbWFpbnRhaW5lcnMgYmVjYXVzZSB0aGV5J3JlIG9uIHRoZSBt
YWlsaW5nIGxpc3QgYWxyZWFkeSBhbmQgbXVsdGlwbGUgY29waWVzIG9mIHRoZSBzYW1lIGVtYWls
IG1lYW5zIHRoZXkgZ2V0IGFubm95ZWQgYW5kIGxpa2VseSBpZ25vcmUgdGhlIGVtYWlsLg0KDQpE
b24ndCBkbyB0aGF0LiBUaGlzIGlzIHdoYXQgIk1lc3NhZ2UtSUQiIGlzIGZvci4gUGVvcGxlIGRv
bid0IGdldCBtdWx0aXBsZSBjb3BpZXMgb2YgdGhlIGVtYWlsLCBiZWNhdXNlIGFueSBzYW5lIE1V
QSB3aWxsIHNlZSB0aGF0IHRoZXkgYXJlIHRoZSBzYW1lIG1lc3NhZ2UgZXZlbiB3aGVuIHRoZXkg
Y2FtZSBpbiB0aHJvdWdoIHR3byBkaWZmZXJlbnQgcGF0aHMuDQoNCk9mIGNvdXJzZSwgaWYgc29t
ZSBtYWludGFpbmVyIGhhcyBhIGJyb2tlbiBNVUEsIHRoYXQncyBvbmUgdGhpbmcsIGJ1dCBJIHdv
dWxkIGV4cGVjdCBrZXJuZWwgbWFpbnRhaW5lcnMgdGhhdCBkZWFsIHdpdGggYSBsb3Qgb2YgZW1h
aWwgdG8gbm90IGhhdmUgcXVpdGUgX3RoYXRfIGJyb2tlbiBhIHNldHVwLg0KDQogICAgICAgICAg
ICBMaW51cw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
