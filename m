Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B29B4679CD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Dec 2021 15:55:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF5DB60A9D;
	Fri,  3 Dec 2021 14:55:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OkGILPWoAEyW; Fri,  3 Dec 2021 14:55:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92FF060A6E;
	Fri,  3 Dec 2021 14:55:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DB9231BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Dec 2021 14:55:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C761C4018E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Dec 2021 14:55:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E7dS0sURx5tV for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Dec 2021 14:55:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3D90740106
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Dec 2021 14:55:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="236923504"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="236923504"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 06:55:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="478345754"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 03 Dec 2021 06:55:08 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 3 Dec 2021 06:55:08 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 3 Dec 2021 06:55:08 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 3 Dec 2021 06:55:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aS0bz92hGL+mWAwVpdILiinbb7f4qbwD8BkQIisshr/7zggt/A26UKasP5GIWFs1i/dgY3XIeV2zyp3LYR9cyX14DtU6Ma0F1hmYqnszZ5Ojj7hmftoAU0nyjgbSPim6USli5ygyAlnCqiFcZhpk00Ddf8RTI2xBfp2K16r/5AMVpVIF9jPY0PD4tu9QcXp2GeOdJJTAMoVQa9e3LllpixOuc79xSJEl3YDhFbHAClMrAU+aqqs7Xg/6nhJD4ijU1NA0uikn9z9inpOQC0jMXXIIT1fg7dLfUZC/vW+eP6yfLWt74y/pZ0lDEV97/Zksh42ebEJM9UbaB8UuZ6hj9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o+O2gCc23BES3MOPXTG2/oomqzcNihwHQZJ/7jYwxLM=;
 b=KsZ3TOatCm984PlYxJgtEoKouLMALyKMsTnwQdc7we0lYmAGKKQTGiuXc6eTeCzXN/bmx6cqwvXB5we6XDxcZz6w3KidOCeb/jCOJU03VL5YD2SXc4NuWYx5lMs8ZkSFBTj09ZHbby4JUy7/hfp4GnRnipjU9B21DbmNU7o4w2CQ+wvIPFG7iEWIb/UZ7t2MPEap/MPeJdzgB41KjqVI+LL2sj6H+51on21UZ6TpnBvu1AADps+Lel2R1Fku2j9GCWqDzEiaBzcp8ahoLuH8OFD0j+ngcVQp5u4qw2e8CnqbFayRECMY+DgJEARc8eLd3L158T+8+atcqWIU6SBUtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o+O2gCc23BES3MOPXTG2/oomqzcNihwHQZJ/7jYwxLM=;
 b=fnYYqH5v+BeH33rblxFBTYLyU+qp+zL5SPzooeFn6DmWwS3Wtxohps2+RdVdW+gt1ESESuo6VLYYngZUMKnfVeD3fOu7qH0f8yloIWzbnkaUwfB7hnLpUQkERMMFG7YVo4gn4TOcJRwhXqoT+GTwBnU04m/xuoRwB8MUDT9e25g=
Received: from MW5PR11MB5812.namprd11.prod.outlook.com (2603:10b6:303:193::14)
 by MW5PR11MB5907.namprd11.prod.outlook.com (2603:10b6:303:1a1::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Fri, 3 Dec
 2021 14:55:05 +0000
Received: from MW5PR11MB5812.namprd11.prod.outlook.com
 ([fe80::1127:5635:26df:eca9]) by MW5PR11MB5812.namprd11.prod.outlook.com
 ([fe80::1127:5635:26df:eca9%8]) with mapi id 15.20.4755.016; Fri, 3 Dec 2021
 14:55:05 +0000
From: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
To: Petr Machata <petrm@nvidia.com>
Thread-Topic: [PATCH v4 net-next 2/4] ethtool: Add ability to configure
 recovered clock for SyncE feature
Thread-Index: AQHX5t+zHNhA4eAQzEyd+4hcIqumb6wfJraAgAAesICAACIlAIAACV/ggAFk6oCAAARAAA==
Date: Fri, 3 Dec 2021 14:55:05 +0000
Message-ID: <MW5PR11MB581202E2A601D34E30F1E5AEEA6A9@MW5PR11MB5812.namprd11.prod.outlook.com>
References: <20211201180208.640179-1-maciej.machnikowski@intel.com>
 <20211201180208.640179-3-maciej.machnikowski@intel.com>
 <Yai/e5jz3NZAg0pm@shredder>
 <MW5PR11MB5812455176BC656BABCFF1B0EA699@MW5PR11MB5812.namprd11.prod.outlook.com>
 <Yaj13pwDKrG78W5Y@shredder>
 <PH0PR11MB583105F8678665253A362797EA699@PH0PR11MB5831.namprd11.prod.outlook.com>
 <87pmqdojby.fsf@nvidia.com>
In-Reply-To: <87pmqdojby.fsf@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f76dc36c-afe9-440a-1d55-08d9b66ce44b
x-ms-traffictypediagnostic: MW5PR11MB5907:
x-microsoft-antispam-prvs: <MW5PR11MB5907A4D359AFC9490F5F7D64EA6A9@MW5PR11MB5907.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1VaBRK0gmoNWXcyvyO0GhTwvTCCMO3CO5M1R7NcwtBg8XniQs+NApja0p71TCKwytCqLpbSlY/HWyvY9YAP7Zi0LtouT2iNA1igZ3Azj7T6crbZZoAPsG2YQEQ9S7nEqLF0Nxv9oyvUtzirmgs5DaGkGrcrZLRAMh2WeiSTgMeV6fTzduxWMeyFLMb1m4YF/XaeFCUVP0Ykg1kikyEsOhpFoTTDcD+Hr+27AOwucmdFxfXRn/kZ8LzDrXBatnuObzBBYvmMXvLIbaVw19vs85a41kBWxOiHKKPKsDpeseg7Nge0JUxWZ3xw09SmSEe9g5HRMd0Jjf3Y1mBlbBErgUoFpmjFPNUsMYU1BtATTLuiuEFmI1/a1Vp1ddJK6cPG5l0ndGyEAmgQb0ZUQRN1Wm5HxmpPREUk3goNUZVwa7PCh5wNINPxCn5yZ0z4zn13l9FWurauttWpid+IEHJml7QM1TAFYN3BP1awB3VHwkotb8aPY1JZq8bqosn3pxt/+l66oTYPESUy+qOAbn5g+sLLDfT7Fb2TiO8mjXzWOfyJlhqHlv12ARojLZRo96PPHD3awK1+e3i2jz7apYlur8tSM9myLABse5U3NCkSBDF0QX638HqGIX/+FmvqqHzhR94bOoxS8M10PZSUY3Cp+4Kp1E08tXSlcE/uAUsyKEifr4esCbqHEqWbQ1aCQRVE+PIQf7Xz9qEmIwFGyyPL62g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5812.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(33656002)(82960400001)(83380400001)(7416002)(186003)(9686003)(26005)(52536014)(76116006)(6916009)(122000001)(8936002)(66446008)(316002)(4326008)(86362001)(38070700005)(8676002)(66946007)(66476007)(55016003)(53546011)(71200400001)(7696005)(64756008)(5660300002)(2906002)(54906003)(38100700002)(508600001)(6506007)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Mnh3cGRWTXAwZ0w3M2ZSVngyZXQvbG9ObjhXcElGdHZHbXdLdHlEOUt0WEIr?=
 =?utf-8?B?cjFQOUlsOVVodW5wUUJzblhBV0JPeFdoMzBrUEVRZWZxKzBRcEhBV1ZOK2Mv?=
 =?utf-8?B?YTZBVVNtQkRPSXN4U1RYSTNrWnhXUUpIUUhiNUh2eUNHMlBvQWJUeWgvTk5M?=
 =?utf-8?B?aXkxdVMxWUhxV3VzV0pVNHJFcWU2bldWOVZqV3NUa2gzQVBSVjY3UjdhSHBl?=
 =?utf-8?B?WFJLS3NqV0x2RWlwYmJjODhaUDltK2lyYWZzaFBTVXpleGpUaWJMNVgyVTY1?=
 =?utf-8?B?ek9JSmZ5cTJHL25LVXF3WFZmNkp4dDdtaVQ5ZWwwbi9MbDVrWkZXWm1PMFJ0?=
 =?utf-8?B?Uk9MWFhSSGNTRElicWttazd0MSszcGhSbEQ1RG41TVAyNzhiKzY1Q1JEdHRR?=
 =?utf-8?B?OXAzL2haMVBHSHhBY3BBYU9ETEM4M0NqLzk0bkR5MXpZTldZaU9wSnhUSFN4?=
 =?utf-8?B?bHg4bjFIWG1tZjhpa0tOT3dCazJSdFp3bzV3eDZaMU1MaExrcVBYZDR3Z0Vo?=
 =?utf-8?B?QXFsN2M2U0tuc3o5aHpGaDMvU1B5UEFXWkFRYVI3Q2kyUmFXOFJiVnNkcVhK?=
 =?utf-8?B?bk1wMllqMlVrYWdES1dMT2x0YzJrRVdGYTl3TFMySmRPUDFWMmQ3MTMwMkpK?=
 =?utf-8?B?V3dtVG8rcUZ0eURPUFA4WDRrREdTRHMvdzNHSXlFSVhnN3l4TUZZVDBiTGJ6?=
 =?utf-8?B?SG9tZSszNDRGa1VMZnFxOFBvZlJlUjFwTE1PbHVvYStTMUFxdE9kZEhlT29N?=
 =?utf-8?B?NVQxNUlNMUVYUXBpb2JWVGJ0SUFuTHJUNU1iaEJVbkVQOFZwY2s0cWNrdXJl?=
 =?utf-8?B?UTc2UkFWa2I5eDZlaktNU1hpZ0NPNDVWYUNMUFZCYnBmN3UvTFZzNUNDRUho?=
 =?utf-8?B?R2JqcU4vSlFTZU9BdjcrMDI5VXMwYkxnRm83aS9SOTZvRzFVUGZJL05ucHdX?=
 =?utf-8?B?dlF5TGJWZzI2RzBxM1dEY0sxVm44TUJpRlU3bnNhUjBZcGFPR1Raa3B0SlZE?=
 =?utf-8?B?OXRHQ2dBMUl3R1JxVXdDREZhMUh2VmltanlwZ1RxNG1PdHpURjlYVGdZYVgx?=
 =?utf-8?B?R2p6R3lRWmVlVFBRc29KdCtJM2RobmsyaEx6K1BhWk1OQkgwcTdiRmh4MG03?=
 =?utf-8?B?U2tkZ1pxR0dQMU9XVnpiclFXLzBKbTNLNGlneU1PNjVEWDdPVjloby9KRmE0?=
 =?utf-8?B?TkRVZWgvTVBNSDJQTGNpeWswMWVqU1NrcjkwWGd2N3FkUW02dGVhWFFJSC9C?=
 =?utf-8?B?Q0ZWZ3pIUkFVWnFNNngyek1pVnMvdDJ2Q0k1UlpmeitEOThzOWJsS0YrNmZN?=
 =?utf-8?B?ZWhyQkFydWtoOWFheUE5Y3VvMU1QN0VUYlAwMit5SlBFUVpEWlZvanpqVzd3?=
 =?utf-8?B?VmU2VjcxQ25oeHFIK05hcG1XelpMbmhCUGs4bUhseXlaMlRiTXZaY1crd0NN?=
 =?utf-8?B?OHdWRkpXVEZmUFFoNG1lSHd5dWtPckNidTE4UHdyaUJhZkN0YnRjNG1rQ05q?=
 =?utf-8?B?RllyNDd2czVXQ3hyUDJjVmoxeGlZMDVJVTFsTXBLK3NiRUpXV1R1VnZaMWVx?=
 =?utf-8?B?akcyQjgxVWNVTWRaVFpTU2kzQWhFcXpxZlo2YytqWm9taExPMit6dm9wZVg4?=
 =?utf-8?B?WGQ3MHorY0tEOTEyMGkxUWxkSU50T2diNmt2bnVyWnc5Q1lhYjNhYklZVFFR?=
 =?utf-8?B?dGRvRmlKVkJ1bUlGUlZ0RFltNFdpSGcyYWlJOXlJelpkS0dnY3drTjFOTnlu?=
 =?utf-8?B?Z1ZqbXJpTmwxTEh3UnJ0TzRKbTd1Y2NjUVIxMmFwRzBlNFJ2czNUTjE2M3Jh?=
 =?utf-8?B?bTBWbHNlamtidVVlOGszZnl1K3NCV0VCUTRkSnZJR3R4Qmp0Z1NwZlpXcFhr?=
 =?utf-8?B?Z3AwYTJCQ3hCcHdzYUk0VnNQTkR1dU5OT1pzK1FoT3dkSVpXNis2V1FVZU5J?=
 =?utf-8?B?eXZ4Ti9xM3IvYVh5Kzg5NjJocXM3a3krUUxnYUhqR0c1STN6Vm1Oc3Bnc3FE?=
 =?utf-8?B?NitiQ2NyOVBiQVgzSFZQckZQaFozYTB1SnRpV2hIOXZsejJuYmltcitIRStq?=
 =?utf-8?B?aWEvN0JETENVTlFrYzdIRWIvd2p4VHlHS3F0ZHZyNDMySUxJbHhOSXh4K3E5?=
 =?utf-8?B?TWVyK3c5R25tNHBLRjVQTFpZZkc0VWI3V0RhZUhFbW1KSFlBa2JEUVVkWGM2?=
 =?utf-8?B?MkhPWDdDanlwOW43cmRWTXlKU0tOTVhqZjNUcVRIa3JQT1Jwc3dGVG1MMDRK?=
 =?utf-8?B?YU5UV0laQWc1ZzdLMUY0c3I3NS9BPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5812.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f76dc36c-afe9-440a-1d55-08d9b66ce44b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2021 14:55:05.1441 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Iq+vq78hmNFJHQamELeF/mC04o4GgJiP5TVWEjaF+F8D4K4O3s8imp5ViqkvipAy6varz6YkmHzm9iiWOMDTgClJgzNo1q7QyWmmpVzBT88=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5907
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 2/4] ethtool: Add ability
 to configure recovered clock for SyncE feature
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>, "abyagowi@fb.com" <abyagowi@fb.com>,
 "saeed@kernel.org" <saeed@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Ido Schimmel <idosch@idosch.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBQZXRyIE1hY2hhdGEgPHBldHJt
QG52aWRpYS5jb20+DQo+IFNlbnQ6IEZyaWRheSwgRGVjZW1iZXIgMywgMjAyMSAzOjI3IFBNDQo+
IFRvOiBNYWNobmlrb3dza2ksIE1hY2llaiA8bWFjaWVqLm1hY2huaWtvd3NraUBpbnRlbC5jb20+
DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjQgbmV0LW5leHQgMi80XSBldGh0b29sOiBBZGQgYWJp
bGl0eSB0byBjb25maWd1cmUNCj4gcmVjb3ZlcmVkIGNsb2NrIGZvciBTeW5jRSBmZWF0dXJlDQo+
IA0KPiANCj4gTWFjaG5pa293c2tpLCBNYWNpZWogPG1hY2llai5tYWNobmlrb3dza2lAaW50ZWwu
Y29tPiB3cml0ZXM6DQo+IA0KPiA+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+PiBG
cm9tOiBJZG8gU2NoaW1tZWwgPGlkb3NjaEBpZG9zY2gub3JnPg0KPiA+Pg0KPiA+PiBPbiBUaHUs
IERlYyAwMiwgMjAyMSBhdCAwMzoxNzowNlBNICswMDAwLCBNYWNobmlrb3dza2ksIE1hY2llaiB3
cm90ZToNCj4gPj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+ID4gPiBGcm9t
OiBJZG8gU2NoaW1tZWwgPGlkb3NjaEBpZG9zY2gub3JnPg0KPiA+PiA+ID4NCj4gPj4gPiA+IE9u
IFdlZCwgRGVjIDAxLCAyMDIxIGF0IDA3OjAyOjA2UE0gKzAxMDAsIE1hY2llaiBNYWNobmlrb3dz
a2kNCj4gd3JvdGU6DQo+ID4+ID4gPiBMb29raW5nIGF0IHRoZSBkaWFncmFtIGZyb20gdGhlIHBy
ZXZpb3VzIHN1Ym1pc3Npb24gWzFdOg0KPiA+PiA+ID4NCj4gPj4gPiA+ICAgICAgIOKUjOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUrOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUkA0KPiA+PiA+ID4gICAgICAg4pSCIFJYICAgICAgIOKUgiBUWCAgICAgICDilIINCj4gPj4g
PiA+ICAgMSAgIOKUgiBwb3J0cyAgICDilIIgcG9ydHMgICAg4pSCIDENCj4gPj4gPiA+ICAg4pSA
4pSA4pSA4pa64pSc4pSA4pSA4pSA4pSA4pSA4pSQICAgIOKUgiAgICAgICAgICDilJzilIDilIDi
lIDilIDilIDilroNCj4gPj4gPiA+ICAgMiAgIOKUgiAgICAg4pSCICAgIOKUgiAgICAgICAgICDi
lIIgMg0KPiA+PiA+ID4gICDilIDilIDilIDilrrilJzilIDilIDilIDilJAg4pSCICAgIOKUgiAg
ICAgICAgICDilJzilIDilIDilIDilIDilIDilroNCj4gPj4gPiA+ICAgMyAgIOKUgiAgIOKUgiDi
lIIgICAg4pSCICAgICAgICAgIOKUgiAzDQo+ID4+ID4gPiAgIOKUgOKUgOKUgOKWuuKUnOKUgOKU
kCDilIIg4pSCICAgIOKUgiAgICAgICAgICDilJzilIDilIDilIDilIDilIDilroNCj4gPj4gPiA+
ICAgICAgIOKUgiDilrwg4pa8IOKWvCAgICDilIIgICAgICAgICAg4pSCDQo+ID4+ID4gPiAgICAg
ICDilIIg4pSA4pSA4pSA4pSA4pSA4pSAICAg4pSCICAgICAgICAgIOKUgg0KPiA+PiA+ID4gICAg
ICAg4pSCIFxfX19fLyAgIOKUgiAgICAgICAgICDilIINCj4gPj4gPiA+ICAgICAgIOKUlOKUgOKU
gOKUvOKUgOKUgOKUvOKUgOKUgOKUgOKUgOKUtOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUmA0KPiA+PiA+ID4gICAgICAgICAx4pSCIDLilIIgICAgICAgIOKWsg0KPiA+PiA+ID4gIFJD
TEsgb3V04pSCICDilIIgICAgICAgIOKUgiBUWCBDTEsgaW4NCj4gPj4gPiA+ICAgICAgICAgIOKW
vCAg4pa8ICAgICAgICDilIINCj4gPj4gPiA+ICAgICAgICDilIzilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilLTilIDilIDilIDilJANCj4gPj4gPiA+ICAgICAgICDilIIg
ICAgICAgICAgICAgICAgIOKUgg0KPiA+PiA+ID4gICAgICAgIOKUgiAgICAgICBTRUMgICAgICAg
4pSCDQo+ID4+ID4gPiAgICAgICAg4pSCICAgICAgICAgICAgICAgICDilIINCj4gPj4gPiA+ICAg
ICAgICDilJTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilJgNCj4gPj4gPiA+DQo+ID4+ID4gPiBHaXZlbiBhIG5ldGRldiAoMSwgMiBvciAzIGluIHRo
ZSBkaWFncmFtKSwgdGhlIFJDTEtfU0VUIG1lc3NhZ2UNCj4gYWxsb3dzDQo+ID4+ID4gPiBtZSB0
byByZWRpcmVjdCB0aGUgZnJlcXVlbmN5IHJlY292ZXJlZCBmcm9tIHRoaXMgbmV0ZGV2IHRvIHRo
ZSBFRUMNCj4gdmlhDQo+ID4+ID4gPiBlaXRoZXIgcGluIDEsIHBpbiAyIG9yIGJvdGguDQo+ID4+
ID4gPg0KPiA+PiA+ID4gR2l2ZW4gYSBuZXRkZXYsIHRoZSBSQ0xLX0dFVCBtZXNzYWdlIGFsbG93
cyBtZSB0byBxdWVyeSB0aGUgcmFuZ2UNCj4gb2YNCj4gPj4gPiA+IHBpbnMgKFJDTEsgb3V0IDEt
MiBpbiB0aGUgZGlhZ3JhbSkgdGhyb3VnaCB3aGljaCB0aGUgZnJlcXVlbmN5IGNhbiBiZQ0KPiA+
PiA+ID4gZmVkIGludG8gdGhlIEVFQy4NCj4gPj4gPiA+DQo+ID4+ID4gPiBRdWVzdGlvbnM6DQo+
ID4+ID4gPg0KPiA+PiA+ID4gMS4gVGhlIHF1ZXJ5IGZvciBhbGwgdGhlIGFib3ZlIG5ldGRldnMg
d2lsbCByZXR1cm4gdGhlIHNhbWUgcmFuZ2UNCj4gPj4gPiA+IG9mIHBpbnMuIEhvdyBkb2VzIHVz
ZXIgc3BhY2Uga25vdyB0aGF0IHRoZXNlIGFyZSB0aGUgc2FtZSBwaW5zPw0KPiA+PiA+ID4gVGhh
dCBpcywgaG93IGRvZXMgdXNlciBzcGFjZSBrbm93IHRoYXQgUkNMS19TRVQgbWVzc2FnZSB0bw0K
PiA+PiA+ID4gcmVkaXJlY3QgdGhlIGZyZXF1ZW5jeSByZWNvdmVyZWQgZnJvbSBuZXRkZXYgMSB0
byBwaW4gMSB3aWxsIGJlDQo+ID4+ID4gPiBvdmVycmlkZGVuIGJ5IHRoZSBzYW1lIG1lc3NhZ2Ug
YnV0IGZvciBuZXRkZXYgMj8NCj4gPj4gPg0KPiA+PiA+IFdlIGRvbid0IGhhdmUgYSB3YXkgdG8g
ZG8gc28gcmlnaHQgbm93LiBXaGVuIHdlIGhhdmUgRUVDIHN1YnN5c3RlbQ0KPiA+PiA+IGluIHBs
YWNlIHRoZSByaWdodCB0aGluZyB0byBkbyB3aWxsIGJlIHRvIGFkZCBFRUMgaW5wdXQgaW5kZXgg
YW5kDQo+ID4+ID4gRUVDIGluZGV4IGFzIGFkZGl0aW9uYWwgYXJndW1lbnRzDQo+ID4+ID4NCj4g
Pj4gPiA+IDIuIEhvdyBkb2VzIHVzZXIgc3BhY2Uga25vdyB0aGUgbWFwcGluZyBiZXR3ZWVuIGEg
bmV0ZGV2IGFuZCBhbg0KPiA+PiA+ID4gRUVDPyBUaGF0IGlzLCBob3cgZG9lcyB1c2VyIHNwYWNl
IGtub3cgdGhhdCBSQ0xLX1NFVCBtZXNzYWdlIGZvcg0KPiA+PiA+ID4gbmV0ZGV2IDEgd2lsbCBj
YXVzZSB0aGUgVHggZnJlcXVlbmN5IG9mIG5ldGRldiAyIHRvIGNoYW5nZQ0KPiA+PiA+ID4gYWNj
b3JkaW5nIHRvIHRoZSBmcmVxdWVuY3kgcmVjb3ZlcmVkIGZyb20gbmV0ZGV2IDE/DQo+ID4+ID4N
Cj4gPj4gPiBEaXR0byAtIGN1cnJlbnRseSB3ZSBkb24ndCBoYXZlIGFueSBlbnRpdHkgdG8gbGlu
ayB0aGUgcGlucyB0byBBVE0sDQo+ID4+ID4gYnV0IHdlIGNhbiBhZGRyZXNzIHRoYXQgaW4gdXNl
cnNwYWNlIGp1c3QgbGlrZSBQVFAgcGlucyBhcmUgdXNlZA0KPiA+PiA+IG5vdw0KPiA+PiA+DQo+
ID4+ID4gPiAzLiBJZiB1c2VyIHNwYWNlIHNlbmRzIHR3byBSQ0xLX1NFVCBtZXNzYWdlcyB0byBy
ZWRpcmVjdCB0aGUNCj4gPj4gPiA+IGZyZXF1ZW5jeSByZWNvdmVyZWQgZnJvbSBuZXRkZXYgMSB0
byBSQ0xLIG91dCAxIGFuZCBmcm9tIG5ldGRldiAyDQo+ID4+ID4gPiB0byBSQ0xLIG91dCAyLCBo
b3cgZG9lcyBpdCBrbm93IHdoaWNoIHJlY292ZXJlZCBmcmVxdWVuY3kgaXMNCj4gPj4gPiA+IGFj
dHVhbGx5IHVzZWQgYW4gaW5wdXQgdG8gdGhlIEVFQz8NCj4gPj4NCj4gPj4gVXNlciBzcGFjZSBk
b2Vzbid0IGtub3cgdGhpcyBhcyB3ZWxsPw0KPiA+DQo+ID4gSW4gY3VycmVudCBtb2RlbCBpdCBj
YW4gY29tZSBmcm9tIHRoZSBjb25maWcgZmlsZS4gT25jZSB3ZSBpbXBsZW1lbnQgRFBMTA0KPiA+
IHN1YnN5c3RlbSB3ZSBjYW4gaW1wbGVtZW50IGNvbm5lY3Rpb24gYmV0d2VlbiBwaW5zIGFuZCBE
UExMcyBpZiB0aGV5DQo+IGFyZQ0KPiA+IGtub3duLg0KPiA+DQo+ID4+ID4gPg0KPiA+PiA+ID4g
NC4gV2h5IHRoZXNlIHBpbnMgYXJlIHJlcHJlc2VudGVkIGFzIGF0dHJpYnV0ZXMgb2YgYSBuZXRk
ZXYgYW5kIG5vdCBhcw0KPiA+PiA+ID4gYXR0cmlidXRlcyBvZiB0aGUgRUVDPyBUaGF0IGlzLCB3
aHkgYXJlIHRoZXkgcmVwcmVzZW50ZWQgYXMgb3V0cHV0DQo+IHBpbnMNCj4gPj4gPiA+IG9mIHRo
ZSBQSFkgYXMgb3Bwb3NlZCB0byBpbnB1dCBwaW5zIG9mIHRoZSBFRUM/DQo+ID4+ID4NCj4gPj4g
PiBUaGV5IGFyZSAyIHNlcGFyYXRlIGJlaW5ncy4gUmVjb3ZlcmVkIGNsb2NrIG91dHB1dHMgYXJl
IGNvbnRyb2xsZWQNCj4gPj4gPiBzZXBhcmF0ZWx5IGZyb20gRUVDIGlucHV0cy4NCj4gPj4NCj4g
Pj4gU2VwYXJhdGUgaG93PyBXaGF0IGRvZXMgaXQgbWVhbiB0aGF0IHRoZXkgYXJlIGNvbnRyb2xs
ZWQgc2VwYXJhdGVseT8gSW4NCj4gPj4gd2hpY2ggc2Vuc2U/IFRoYXQgcmVkaXJlY3Rpb24gb2Yg
cmVjb3ZlcmVkIGZyZXF1ZW5jeSB0byBwaW4gaXMNCj4gPj4gY29udHJvbGxlZCB2aWEgUEhZIHJl
Z2lzdGVycyB3aGVyZWFzIHByaW9yaXR5IHNldHRpbmcgYmV0d2VlbiBFRUMgaW5wdXRzDQo+ID4+
IGlzIGNvbnRyb2xsZWQgdmlhIEVFQyByZWdpc3RlcnM/IElmIHNvLCB0aGlzIGlzIGFuIGltcGxl
bWVudGF0aW9uIGRldGFpbA0KPiA+PiBvZiBhIHNwZWNpZmljIGRlc2lnbi4gSXQgaXMgbm90IG9m
IGFueSBpbXBvcnRhbmNlIHRvIHVzZXIgc3BhY2UuDQo+ID4NCj4gPiBUaGV5IGJlbG9uZyB0byBk
aWZmZXJlbnQgZGV2aWNlcy4gRUVDIHJlZ2lzdGVycyBhcmUgcGh5c2ljYWxseSBpbiB0aGUgRFBM
TA0KPiA+IGhhbmdpbmcgb3ZlciBJMkMgYW5kIHJlY292ZXJlZCBjbG9ja3MgYXJlIGluIHRoZSBQ
SFkvaW50ZWdyYXRlZCBQSFkgaW4NCj4gPiB0aGUgTUFDLiBEZXBlbmRpbmcgb24gc3lzdGVtIGFy
Y2hpdGVjdHVyZSB5b3UgbWF5IGhhdmUgY29udHJvbCBvdmVyDQo+ID4gb25lIHBpZWNlIG9ubHkN
Cj4gDQo+IFdoYXQgZG9lcyBFVEhUT09MX01TR19SQ0xLX1NFVCBhY3R1YWxseSBjb25maWd1cmUs
IHBoeXNpY2FsbHk/IFNheSBJDQo+IGhhdmUgdGhpcyBtZXNzYWdlOg0KPiANCj4gRVRIVE9PTF9N
U0dfUkNMS19TRVQgZGV2ID0gZXRoMA0KPiAtIEVUSFRPT0xfQV9SQ0xLX09VVF9QSU5fSURYID0g
bg0KPiAtIEVUSFRPT0xfQV9SQ0xLX1BJTl9GTEFHUyB8PSBFVEhUT09MX1JDTEtfUElOX0ZMQUdT
X0VOQQ0KPiANCj4gRXZlbnR1YWxseSB0aGlzIGxhbmRzIGluIG9wcy0+c2V0X3JjbGtfb3V0KGRl
diwgb3V0X2lkeCwgbmV3X3N0YXRlKS4NCj4gV2hhdCBkb2VzIHRoZSBNQUMgZHJpdmVyIGRvIG5l
eHQ/DQoNCkl0IGdvZXMgdG8gdGhlIFBUWSBsYXllciwgZW5hYmxlcyB0aGUgY2xvY2sgcmVjb3Zl
cnkgZnJvbSBhIGdpdmVuIHBoeXNpY2FsIGxhbmUsIA0Kb3B0aW9uYWxseSBjb25maWd1cmUgdGhl
IGNsb2NrIGRpdmlkZXIgYW5kIHBpbiBvdXRwdXQgbXV4ZXMuIFRoaXMgd2lsbCBiZSANCkhXLXNw
ZWNpZmljIHRob3VnaCwgYnV0IHRoZSBnZW5lcmFsIGNvbmNlcHQgd2lsbCBsb29rIGxpa2UgdGhh
dC4NCg0KPiA+PiA+IElmIHdlIG1peCB0aGVtIGl0J2xsIGJlIGhhcmQgdG8gY29udHJvbCBldmVy
eXRoaW5nIGVzcGVjaWFsbHkgdGhhdCBhDQo+ID4+ID4gc2luZ2xlIEVFQyBjYW4gc3VwcG9ydCBt
dWx0aXBsZSBkZXZpY2VzLg0KPiA+Pg0KPiA+PiBIYXJkIGhvdz8gUGxlYXNlIHByb3ZpZGUgY29u
Y3JldGUgZXhhbXBsZXMuDQo+ID4NCj4gPiBGcm9tIHRoZSBFRUMgcGVyc3BlY3RpdmUgaXQncyBv
bmUgdG8gbWFueSByZWxhdGlvbiAtIG9uZSBFRUMgaW5wdXQgcGluIHdpbGwNCj4gc2VydmUNCj4g
PiBldmVuIDQsMTYsNDggbmV0ZGV2cy4gSSBkb24ndCBzZWUgZWFzeSB3YXkgb2Ygc3RhcnRpbmcg
ZnJvbSBFRUMgaW5wdXQgb2YgRUVDDQo+IGRldmljZQ0KPiA+IGFuZCBmaWd1cmluZyBvdXQgd2hp
Y2ggbmV0ZGV2cyBhcmUgY29ubmVjdGVkIHRvIGl0IHRvIHRhbGsgdG8gdGhlIHJpZ2h0IG9uZS4N
Cj4gPiBJbiBjdXJyZW50IG1vZGVsIGl0J3MgYXMgc2ltcGxlIGFzOg0KPiA+IC0gSSByZWNlaXZl
ZCBRTC1QUkMgb24gbmV0ZGV2IGVuczRmMA0KPiA+IC0gSSBzZW5kIGJhY2sgZW5hYmxlIHJlY292
ZXJlZCBjbG9jayBvbiBwaW4gMCBvZiB0aGUgZW5zNGYwDQo+IA0KPiBIb3cgZG8gSSBrbm93IGl0
J3MgcGluIDAgdGhvdWdoPyBDb25maWcgZmlsZT8NCg0KWW91IGNhbiBmaW5kIHRoYXQgYnkgc2Vu
ZGluZyB0aGUgRVRIVE9PTF9NU0dfUkNMS19HRVQgd2l0aG91dCBhbnkgcGluDQppbmRleCB0byBn
ZXQgdGhlIGFjY2VwdGFibGUvc3VwcG9ydGVkIHJhbmdlLg0KDQo+ID4gLSBnbyB0byBFRUMgdGhh
dCB3aWxsIGJlIGxpbmtlZCB0byBpdA0KPiA+IC0gc2VlIHRoZSBzdGF0ZSBvZiBpdCAtIGlmIGl0
cyBsb2NrZWQgLSByZXBvcnQgUUwtRUVDIGRvd25zdGVhbQ0KPiA+DQo+ID4gSG93IHdvdWxkIHlv
dSB0aGlzIGNvbnRyb2wgbG9vayBpbiB0aGUgRUVDL0RQTEwgaW1wbGVtZW50YXRpb24/IE1heWJl
DQo+ID4gSSBtaXNzZWQgc29tZXRoaW5nLg0KPiANCj4gSW4gdGhlIEVFQy1jZW50cmljIG1vZGVs
IHRoaXMgaXMgd2hhdCBoYXBwZW5zOg0KPiANCj4gLSBRTC1QUkMgcGFja2V0IGlzIHJlY2VpdmVk
IG9uIGVuczRmMA0KPiAtIFVzZXJzcGFjZSBjb25zdWx0cyBhIFVBUEkgdG8gZmlndXJlIG91dCB3
aGF0IEVFQyBhbmQgcGluIElEIHRoaXMNCj4gICBuZXRkZXZpY2UgY29ycmVzcG9uZHMgdG8NCj4g
LSBVc2Vyc3BhY2UgaW5zdHJ1Y3RzIHRocm91Z2ggYSBVQVBJIHRoZSBpbmRpY2F0ZWQgRUVDIHRv
IHVzZSB0aGUNCj4gICBpbmRpY2F0ZWQgcGluIGFzIGEgc291cmNlDQo+IC0gVXNlcnNwYWNlIHRo
ZW4gbW9uaXRvcnMgdGhlIGluZGljYXRlZCBFRUMgdGhyb3VnaCBhIFVBUEkuIFdoZW4gdGhlIEVF
Qw0KPiAgIGxvY2tzLCBRTC1FRUMgaXMgcmVwb3J0ZWQgZG93bnN0cmVhbQ0KDQpUaGlzIGlzIHN0
aWxsIG1pc3NpbmcgdGhlIHBvcnQvbGFuZS0+cGluIG1hcHBpbmcuIFRoaXMgaXMgd2hhdCB3aWxs
IGhhcHBlbiBpbiANCnRoZSBFRUMvRFBMTCBzdWJzeXN0ZW0uDQoNCj4gPj4gV2hhdCBkbyB5b3Ug
bWVhbiBieSAibXVsdGlwbGUgZGV2aWNlcyI/IEEgbXVsdGktcG9ydCBhZGFwdGVyIHdpdGggYQ0K
PiA+PiBzaW5nbGUgRUVDIG9yIHNvbWV0aGluZyBlbHNlPw0KPiA+DQo+ID4gTXVsdGlwbGUgTUFD
cyB0aGF0IHVzZSBhIHNpbmdsZSBFRUMgY2xvY2suDQo+ID4NCj4gPj4gPiBBbHNvIGlmIHdlIG1h
a2UgdGhvc2UgcGlucyBhdHRyaWJ1dGVzIG9mIHRoZSBFRUMgaXQnbGwgYmVjb21lIGV4dHJlbWFs
bHkNCj4gaGFyZA0KPiA+PiA+IHRvIG1hcCB0aGVtIHRvIG5ldGRldnMgYW5kIGNvbnRyb2wgdGhl
bSBmcm9tIHRoZSB1c2Vyc3BhY2UgYXBwIHRoYXQNCj4gd2lsbA0KPiA+PiA+IHJlY2VpdmUgdGhl
IEVTTUMgbWVzc2FnZSB3aXRoIGEgZ2l2ZW4gUUwgbGV2ZWwgb24gbmV0ZGV2IFguDQo+ID4+DQo+
ID4+IEhhcmQgaG93PyBXaGF0IGlzIHRoZSBwcm9ibGVtIHdpdGggc29tZXRoaW5nIGxpa2U6DQo+
ID4+DQo+ID4+ICMgZWVjIHNldCBzb3VyY2UgMSB0eXBlIG5ldGRldiBkZXYgc3dwMQ0KPiA+Pg0K
PiA+PiBUaGUgRUVDIG9iamVjdCBzaG91bGQgYmUgcmVnaXN0ZXJlZCBieSB0aGUgc2FtZSBlbnRp
dHkgdGhhdCByZWdpc3RlcnMNCj4gPj4gdGhlIG5ldGRldnMgd2hvc2UgVHggZnJlcXVlbmN5IGlz
IGNvbnRyb2xsZWQgYnkgdGhlIEVFQywgdGhlIE1BQyBkcml2ZXIuDQo+ID4NCj4gPiBCdXQgdGhl
IEVFQyBvYmplY3QgbWF5IG5vdCBiZSBjb250cm9sbGVkIGJ5IHRoZSBNQUMgLSBpbiB3aGljaCBj
YXNlDQo+ID4gdGhpcyBtb2RlbCB3b24ndCB3b3JrLg0KPiANCj4gSW4gdGhhdCBjYXNlIHRoZSBk
cml2ZXIgZm9yIHRoZSBkZXZpY2UgdGhhdCBjb250cm9scyBFRUMgd291bGQNCj4gaW5zdGFudGlh
dGVzIHRoZSBvYmplY3QuIEl0IGRvZXNuJ3QgaGF2ZSB0byBiZSBhIE1BQyBkcml2ZXIuDQo+IA0K
PiBCdXQgaWYgaXQgaXMgY29udHJvbGxlZCBieSB0aGUgTUFDLCB0aGUgTUFDIGRyaXZlciBpbnN0
YW50aWF0ZXMgaXQuIEFuZA0KPiBjYW4gc2V0IHVwIHRoZSBjb25uZWN0aW9uIGJldHdlZW4gdGhl
IE1BQyBhbmQgdGhlIEVFQywgc28gdGhhdCBpbiB0aGUNCj4gc2hlbGwgc25pcHBldCBhYm92ZSAi
ZWVjIiBrbm93cyBob3cgdG8gZ2V0IHRoZSBFRUMgaGFuZGxlIGZyb20gdGhlDQo+IG5ldGRldmlj
ZS4NCg0KQnV0IGl0IHN0aWxsIG5lZWRzIHRvIHRhbGsgdG8gTUFDIGRyaXZlciBzb21laG93IHRv
IGVuYWJsZSB0aGUgY2xvY2sNCnJlY292ZXJ5IG9uIGEgZ2l2ZW4gcGluIC0gdGhhdCdzIHdoZXJl
IHRoZSBBUEkgZGVmaW5lZCBoZXJlIGlzIG5lZWRlZC4NCg0KPiA+PiA+DQo+ID4+ID4gPiA1LiBX
aGF0IGlzIHRoZSBwcm9ibGVtIHdpdGggdGhlIGZvbGxvd2luZyBtb2RlbD8NCj4gPj4gPiA+DQo+
ID4+ID4gPiAtIFRoZSBFRUMgaXMgYSBzZXBhcmF0ZSBvYmplY3Qgd2l0aCBmb2xsb3dpbmcgYXR0
cmlidXRlczoNCj4gPj4gPiA+ICAgKiBTdGF0ZTogSW52YWxpZCAvIEZyZWVydW4gLyBMb2NrZWQg
LyBldGMNCj4gPj4gPiA+ICAgKiBTb3VyY2VzOiBOZXRkZXYgLyBleHRlcm5hbCAvIGV0Yw0KPiA+
PiA+ID4gICAqIFBvdGVudGlhbGx5IG1vcmUNCj4gPj4gPiA+DQo+ID4+ID4gPiAtIE5vdGlmaWNh
dGlvbnMgYXJlIGVtaXR0ZWQgdG8gdXNlciBzcGFjZSB3aGVuIHRoZSBzdGF0ZSBvZiB0aGUgRUVD
DQo+ID4+ID4gPiAgIGNoYW5nZXMuIERyaXZlcnMgd2lsbCBlaXRoZXIgcG9sbCB0aGUgc3RhdGUg
ZnJvbSB0aGUgZGV2aWNlIG9yIGdldA0KPiA+PiA+ID4gICBpbnRlcnJ1cHRzDQo+ID4+ID4gPg0K
PiA+PiA+ID4gLSBUaGUgbWFwcGluZyBmcm9tIG5ldGRldiB0byBFRUMgaXMgcXVlcmllZCB2aWEg
ZXRodG9vbA0KPiA+PiA+DQo+ID4+ID4gWWVwIC0gdGhhdCB3aWxsIGJlIHBhcnQgb2YgdGhlIEVF
QyAoRFBMTCkgc3Vic3lzdGVtDQo+ID4+DQo+ID4+IFRoaXMgbW9kZWwgYXZvaWRzIGFsbCB0aGUg
cHJvYmxlbXMgSSBwb2ludGVkIG91dCBpbiB0aGUgY3VycmVudA0KPiA+PiBwcm9wb3NhbC4NCj4g
Pg0KPiA+IFRoYXQncyB0aGUgZ28tdG8gbW9kZWwsIGJ1dCBmaXJzdCB3ZSBuZWVkIGNvbnRyb2wg
b3ZlciB0aGUgc291cmNlIGFzDQo+ID4gd2VsbCA6KQ0KPiANCj4gV2h5IGlzIHRoYXQ/IENhbiB5
b3UgaWxsdXN0cmF0ZSBhIGNhc2UgdGhhdCBicmVha3Mgd2l0aCB0aGUgYWJvdmUgbW9kZWw/DQoN
CklmIHlvdSBoYXZlIDMyIHBvcnQgc3dpdGNoIGNoaXAgd2l0aCAyIHJlY292ZXJlZCBjbG9jayBv
dXRwdXRzIGhvdyB3aWxsIHlvdQ0KdGVsbCB0aGUgY2hpcCB0byBnZXQgdGhlIDE4dGggcG9ydCB0
byBwaW4gMCBhbmQgZnJvbSBwb3J0IDIwIHRvIHBpbiAxPyBUaGF0J3MNCnRoZSBwYXJ0IHRob3Nl
IHBhdGNoZXMgYWRkcmVzc2VzLiBUaGUgZnVydGhlciBzaWRlIG9mICJ3aGljaCBjbG9jayBzaG91
bGQgdGhlDQpFRUMgdXNlIiBiZWxvbmdzIHRvIHRoZSBEUExMIHN1YnN5c3RlbSBhbmQgSSBhZ3Jl
ZSB3aXRoIHRoYXQuDQoNCk9yIHRvIHB1dCBpdCBpbnRvIGRpZmZlcmVudCB3b3JkczoNClRoaXMg
QVBJIHdpbGwgY29uZmlndXJlIGdpdmVuIHF1YWxpdHkgbGV2ZWwgIGZyZXF1ZW5jeSByZWZlcmVu
Y2Ugb3V0cHV0cyBvbiBjaGlwJ3MNCkRlZGljYXRlZCBvdXRwdXRzLiBPbiBhIGJvYXJkIHlvdSB3
aWxsIGNvbm5lY3QgdGhvc2UgdG8gdGhlIEVFQydzIHJlZmVyZW5jZSBpbnB1dHMuDQoNClRoZSBF
RUMncyBqb2IgaXMgdG8gdmFsaWRhdGUgdGhlIGlucHV0cyBhbmQgbG9jayB0byB0aGVtIGZvbGxv
d2luZyBjZXJ0YWluIHJ1bGVzLA0KVGhlIFBIWS9NQUMgKGFuZCB0aGlzIEFQSSkgam9iIGlzIHRv
IGRlbGl2ZXIgcmVmZXJlbmNlIHNpZ25hbHMgdG8gdGhlIEVFQy4gDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
