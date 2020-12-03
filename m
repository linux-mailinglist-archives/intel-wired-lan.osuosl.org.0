Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 890462CDBB5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Dec 2020 18:04:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1DA96876E8;
	Thu,  3 Dec 2020 17:04:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lsSmyI5lqKNu; Thu,  3 Dec 2020 17:04:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 21835876FA;
	Thu,  3 Dec 2020 17:04:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 30E7C1BF2CA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 17:04:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 216E02E2C9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 17:04:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a523AYJAMvo9 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Dec 2020 17:04:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id D4831204B0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 17:04:23 +0000 (UTC)
IronPort-SDR: FYARCtXpU+9fhwVSc1S+k8eTAhk3Ehpe9zkAUHzF8S7NOjgfZwt8pfIzWI/vwXjBLlKbW68RDJ
 1mEsGrkqXXTw==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="237351720"
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; d="scan'208";a="237351720"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 09:04:19 -0800
IronPort-SDR: 8jxlRKYr8quj7l2xxERHOpE7VBv/xaAp8Mr9KVITzJJ/Y6MJm9rhrmUER/XYqSYXvSJ2iJRkSm
 rnVVRPbhl92A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; d="scan'208";a="550564922"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga005.jf.intel.com with ESMTP; 03 Dec 2020 09:04:19 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 3 Dec 2020 09:04:17 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 3 Dec 2020 09:04:16 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 3 Dec 2020 09:04:16 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 3 Dec 2020 09:04:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QZ/I7TlhGvnhpQQob/lD/I7Q4hZW5LNczoHahabo196BrLCdOm2/M4w3z7nD2kdEfzJFbU4rS4IdkmYBPQZbZkE82DV14pugplYUBUvGax8iAIkB9T17Oj+MLw3fN5eWv4urt/QTf/usIjMbPzfnRq06SMrfzOyXr+HqMl4+eu/jJHl4tUbxr0l/VFA7HyGSPMM1v7RPGiv4thF2qjEIXvGvMNseYtgzOpEYtwtRLLsAORKWlLoJbQs2xCv9e4sVKDlJUw/NctKLTUerK9OPqdnvaDY6I1haMu0KdjHy+QT1CrFrLrSutife2iXrIBuAXZVUADwjYVmptVW+jbtHFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=58svgOBijJhDKjMjYQq+/jMgRmV5DtYemdIHQakNAf4=;
 b=HECaHUoSzmUDnkIzV/J9zZW1sz+v4LONCx4fp/LINYD+aqUdOLNEkDhfOp0bhv/4FYBqhUDTZKzGd/I6oa+2lS1OlQWMLhiuyYPfSb2liE1xCzvJMr6BqMgAdD99lGEgaYdl3CcWCfxFmCp6SfRtpA0Y730VLKS7vH3cpkOumn6shQS1XW8HjnFY+L7aHq/IOQzZNX22P63Ed/UaEYsw9hyun1SKBlbmOc/qqBFfsRejrOOYPwPBqFqhKlFMjMyqe9YMVfZdhOj1ywdC82yajy0Kir2IJzghikcVa34Qk1U+zb4ylHX08EM4KcDa0BDZF3ZPONfceSxgT0RBiCKAlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=58svgOBijJhDKjMjYQq+/jMgRmV5DtYemdIHQakNAf4=;
 b=Haa2zptXrUU8T6kk2bPLqGWdoYIK8yxZ1AsoIY00D7D0VhjG/GWgFtGJZn6DTG0yEtg7Ks5jcU8AbW3EHLwpfr2hkyCSpnJ7bKjecVbnJSRtwcXa+8ujqFyELHsXr75yzI0Y6driBT7nzEd2zb5msRaVlCsljwRPQZYCc41vpuA=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2926.namprd11.prod.outlook.com (2603:10b6:805:ce::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20; Thu, 3 Dec
 2020 17:04:14 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c92:dd20:ec58:76da]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c92:dd20:ec58:76da%6]) with mapi id 15.20.3632.017; Thu, 3 Dec 2020
 17:04:14 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "kuba@kernel.org" <kuba@kernel.org>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>
Thread-Topic: [PATCH net] iavf: fix double-release of rtnl_lock
Thread-Index: AQHWyRqUkWjOVxyI50SOL4R1VMpywqnlmnCA
Date: Thu, 3 Dec 2020 17:04:14 +0000
Message-ID: <1867f98e7951f8d044a7dbf16fcf6a93996914f7.camel@intel.com>
References: <20201203021806.692194-1-kuba@kernel.org>
In-Reply-To: <20201203021806.692194-1-kuba@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20601500-358b-47f5-adb9-08d897ad7659
x-ms-traffictypediagnostic: SN6PR11MB2926:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB29269FAC1216790854F75221C6F20@SN6PR11MB2926.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5z1y4ceVfcXA836FqPQf1SCsAEvqxUtuTEs9YNZonVXIjnlyBV1bak2jEjfXrChhVYcS0nf8uIVXHv+GxKnYGDU8RHeXZB78RQZSUk2r1TunH5RM/jni4HKtlfIzJUJOPP0nW83JfXvlEK/MDfTWHuV3kEC+3tikb33F3CuvNVagpXc6oKLF+iCTqex226dsjKXRLZRVCTxe1BQBVEFM+iB+IYu5Svg1PqUjDukOGjtLYbBVse1SwHJMoxGQ92DeDeOsU9+hhmI4en3bcOrGvAyblZcdjNJQMY+Hi61SKvFUBrRRbZBSas2HcIWvzCh+B/TIOAJl5Zd6AZzwAa6aPf6vFr4Wg4WN0KxgYTX5o2eLL+wgTfk0566pT+ao1jmL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(346002)(396003)(39860400002)(376002)(4326008)(91956017)(83380400001)(316002)(6636002)(76116006)(478600001)(66556008)(66946007)(66476007)(6512007)(6506007)(64756008)(5660300002)(6486002)(66446008)(2616005)(8936002)(71200400001)(86362001)(8676002)(26005)(186003)(110136005)(54906003)(36756003)(4744005)(2906002)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?eE1LMWdJVmxpMTZ3TFpjUnZFcnJ0L0xKN0labk0wRzYyRFBBUU9wRWQwcGtv?=
 =?utf-8?B?NWF5Z2lSb1krMnI2MHpEK1NiQmxtaGRMcitRS0tHNjNwZHVNZ05RaUtvTzRh?=
 =?utf-8?B?b0ZHUy9XWC9FeHd0S3kvSzRUR0JCSVhvbzRwUnNiTWRqQWtyalBndjNOemta?=
 =?utf-8?B?VzdWcHU5MzJWOVpTa0IyY1g1bzdtSnZ2ZUlTMk9reHdOc2ZtVXV0K3JOTDIr?=
 =?utf-8?B?UmRwWGFXT3V0b2NsS3ZhckVZSi9KYUlmYWxvZGgxQUNLS0RUb0RaVDhoT3Yv?=
 =?utf-8?B?VERZeDVrSXJIWWl1bnhDamZJczRIaDFSQUg4VE8waWxVU0NWdDlpdW5sUE1K?=
 =?utf-8?B?N1k1enNWZmNSNmF3eHNNWmVFbGhwRjdMRmFOdmxVMzFtVGllRzAxTEozRzBK?=
 =?utf-8?B?N2wyZVQ4YmpFN1RTOXFsaGxDdVpmaXZpS2lKdHpicVFNY0NYN0cwbG1OOWw4?=
 =?utf-8?B?bUpLdEVHaDR0RGlMVDV2OGpVK1o1YTFOQ2ZBWVN4UEJIM2lnOUZiR1d1UjVo?=
 =?utf-8?B?dUpvR3AzbFprbUxFOGYySytNUjJFOWRja2F1eHQrMW5EVk9oWjZDWkQ3WWg2?=
 =?utf-8?B?UlIvNWJLaTFmeWp1QkNyVHlBb2hvSFdiRFFiYXpaRWJxZ2NmRktSSkgzdUVU?=
 =?utf-8?B?L0drbXdRME1rMnM5VEtBeFBTM1RqZlJVOE5QR0phOGNyMXRIdnlVS3lJTmY4?=
 =?utf-8?B?cTR1Ky9UMHJLaUVDQ3FRQTk0RTBnWkhXdFN2MG0wclpZUlNGUW5QUVpRVVZk?=
 =?utf-8?B?WVcweXVMR0RCTCswa3ZQMmlIUEg1Q0dLTEdQc1Z3YWlLeGhwVytJdjdoUHRq?=
 =?utf-8?B?WC80QnhsY1RocGxjbm1rUEJmYVd5dmlnYlRCRzg5N1BBcy9nckRMZHJMUzFV?=
 =?utf-8?B?UTBIVDVoL0FZZDN1ZzNPNGQxR0hsR20zcFVaSW9BYXBnUWw1UWN4RnBIOCtY?=
 =?utf-8?B?MGJrSXdMVmVuaVB3RG5rNUlhdTNCbytaS3ExL3RsTXNTSHRlT09xYldGb25q?=
 =?utf-8?B?YjY0OGtRdlJNMnVZaUxQUWxEeUN0cXkwbGI1R0ZHUWl5RGg1OWorSDAzL2ti?=
 =?utf-8?B?M1FOM2ZKM0xhajlZb3d3c3IwcUVUM0VidUs2dkY1SXF5YTRrWUlDUnM4VEVG?=
 =?utf-8?B?RVgvNHYwSElDbU5xUmM1NjFJMVNTbEJJMjdMTlZ3VTBZeWxWRWYrZi9JMFIz?=
 =?utf-8?B?T21RTkw2TkpJU3dUY2JMeVNQYkN2Q2pEL2R4bnc1YnRtWjFydFRLeFh1NDI4?=
 =?utf-8?B?MTVoZXR4blhJSThhU0VPZnJiVGtmVkZ0T2U1WFFiRmxITFFIL0R5Ym01VHJk?=
 =?utf-8?Q?1K5SinTJdra2JZltJiXZJVI2LlGZe1s6dj?=
Content-ID: <AC00C548A0787443B362BFC829AE9F84@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20601500-358b-47f5-adb9-08d897ad7659
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2020 17:04:14.2870 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OsyyCjZj61EJs0MwpuppGmHLUQmYh0+enuA/mL/HXPvFEtyfOcbgsQhMnpvrnu9EPBTIO0UvgwrIxY3e+ZLKtfVyVdIoA+7pAIcj91+Mb1I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2926
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix double-release of
 rtnl_lock
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Pawlak,
 Jakub" <jakub.pawlak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2020-12-02 at 18:18 -0800, Jakub Kicinski wrote:
> This code does not jump to exit on an error in iavf_lan_add_device(),
> so the rtnl_unlock() from the normal path will follow.
> 
> Fixes: b66c7bc1cd4d ("iavf: Refactor init state machine")
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>

Did you want to apply this or did you want me to take it?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
