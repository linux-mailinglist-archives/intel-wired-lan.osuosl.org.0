Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CAF42AB0F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 19:45:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 96AC660BE4;
	Tue, 12 Oct 2021 17:45:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MkCxKgUf1PrX; Tue, 12 Oct 2021 17:45:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80EF360BD5;
	Tue, 12 Oct 2021 17:45:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B56351BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 17:45:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A279F40729
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 17:45:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kj69iQkeNRNg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 17:45:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C97A40735
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 17:45:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="290715206"
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="290715206"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 10:39:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="441321035"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga006.jf.intel.com with ESMTP; 12 Oct 2021 10:39:11 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 12 Oct 2021 10:39:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 12 Oct 2021 10:39:10 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 12 Oct 2021 10:39:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LLRL553l7Fqs/m3xxNGIVzPTAXr/5a+UV/uN9JQ4Grldsjk+LtVP81KGqB4Lqc5J5bGo/RMdG7LvR0dA8uDosqx9izouwT1HUGsQ9MnzLMMUBSPsd0rs6jCHHuMTRZU9+WyMYvOKoirlpeA1InFP/68Kp1br71Y8u+Z/MLI0D5rFTPvgA4IG0KUJDWVY9dBYvrIPWsJBOm8ScKOCFofVyMgCYB0tyN3paAUb5wBilcHnl1cx0iuMbrTmsVdjmalwn1A8uomm5bY2vK2stSpciUgel7MdDxIUWrHpCuPzP1a0+qaRAL/NGMTD5Bh0A8WsOe//utw4zsNuyhYvVc3OFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DcHy7ZGJMyaCwEm6UZDzJCIDL3HFcMACap/XNQVqTgg=;
 b=OJVraGq04pMUGRBqUi222wnkUnU9Dby97b6taoHid/NfU2v0CzwbBLm+D7ggpGStzScyw4UtlkJAHQ8ziBT5Eov0lhrbONwj660qmfCT9SgdD1kl6sl3JlQD+s68RSRRL9e22cqs/lliXf1lbFHuLzyQym2fQ3cYDTijCD+db3pCqvjCQyirE45o2WdrYcDcrQ/lB5BqnQUshh5e0OX/IISlmBvqcmWP6xT479f65PgRfrgNxdUUjV7nR438fKk4jJg3jq4f/xWQvm1QtqA9useOH5sPoyruC0rgIRhHjen1n8Pb6k1aoIN43R2NGpkp6qvWZzTHPAz5JyGz010A6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DcHy7ZGJMyaCwEm6UZDzJCIDL3HFcMACap/XNQVqTgg=;
 b=cPJqkhw5KeneOR5fSCs5jLhrBb2I0ghQFrM8yimT239snkgh4xbSRmW0SL3B6xJhwK0uUjvJCYbG2/hGrd/tCul416zi97yq/vZEO4vW45VcF1yloc6pJLZxPhtPDrMrvObPiY3aHb7rbNGWm/eSgm36rlqMRB+aPAmNKLOU4Yw=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CO1PR11MB4996.namprd11.prod.outlook.com (2603:10b6:303:90::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.14; Tue, 12 Oct
 2021 17:39:09 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::982e:c29c:fe8a:5273]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::982e:c29c:fe8a:5273%6]) with mapi id 15.20.4587.026; Tue, 12 Oct 2021
 17:39:09 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v2 2/9] ice: PTP: move setting
 of tstamp_config
Thread-Index: AQHXvwWXe1aHXFvo7Eya/5vP8/0JuavPAy2AgACe24A=
Date: Tue, 12 Oct 2021 17:39:09 +0000
Message-ID: <7e70c127-5e4b-c5a1-63f9-0d891268c146@intel.com>
References: <20211012010715.1684027-1-jacob.e.keller@intel.com>
 <20211012010715.1684027-3-jacob.e.keller@intel.com>
 <97277fe9-ab9a-78c6-2456-1dfe643f69e9@molgen.mpg.de>
In-Reply-To: <97277fe9-ab9a-78c6-2456-1dfe643f69e9@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e5c264de-52de-4849-f21c-08d98da73269
x-ms-traffictypediagnostic: CO1PR11MB4996:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB49965F61794F3DA9F7CAC6E2D6B69@CO1PR11MB4996.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DInj7e+5i6rKPqOsUgi7KAVzkvyOdSrJKVB7p4zUTdFrQQ68VKuhnMTkDC8X2/UDksRcwlb/ln5GcDJ50UVsyUVIEUTa13vQrkacM3m2LMCS+fToJXN5Q/ApqgUJmu3ye6P0r89vANHmKZqqlxR3DH7+C1ODajzmqYx2+3p4Wixt4HdgmL6P4vKsBJJJ+7I+VW0N0nAxofUqcSbs1GN29z/R7qquAjhs7eev1bvFitWNIsBwmU+lNgJFOMDbv6l4zMMSOexJh0jZCU0Qq3Xe6/GwKEe0HtOQOYfmjc9VZ2zSmtMQ78WBa9SDIvfaeKULxmoa8pKFlISFhD4aSrC6gmY1xdO23VNpmXYA+pxqrlVesWW+qGXfsiqay2Ch8Xw6B+kSMFcklbxCMek/RYPVGrG+gwfFqIlOQB1xQTB062iQwCLFVJ4YzmbOD6OZuDhc63PYpzkdisobEz/+bSxj1koWvEkqfG/j2rPSfk/mB7xROreiUisyJAomPmxeMmqv9YjC7plsZGpGg07yPeFRUU63f7OXVIeftgIfznPaYgFZBSc3+LFSoaai8LlDxXw7KaeOAeM7r8p8GQEnpF7QPqblz6oOiGdG2gJCYVmj7lnbo3E0ImP6VI+nphlyGsfdFHe1ihbUnadNJXjbUBcf6UzSaSfPkjpoBf5uIKCnEpAKhsTmPCBoAAeQvtfY6T1PBZPyAj5CS5teaTAP39nRY6vBTihKNxoJ20vvNrnDi8eGdFSlt+4NlEMDgmMHmr2/1haAkGYMyO23s2gT6YVS9g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(66556008)(64756008)(66946007)(76116006)(8936002)(66446008)(8676002)(2906002)(6486002)(36756003)(38100700002)(66476007)(122000001)(54906003)(316002)(6916009)(508600001)(4326008)(31686004)(5660300002)(83380400001)(2616005)(86362001)(38070700005)(6512007)(71200400001)(186003)(53546011)(6506007)(26005)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?clZXOFRmdjNqQkpJSFJ2R0M3S3E1UmpOWWUyN2ZyNGRndU1sQnE2cFk1YXhx?=
 =?utf-8?B?NkVOVEhIT0VNTTAzYzh2aXkxMTNhME03RWE3VGcrN0pTeFF4YmNPNHJIRlZ5?=
 =?utf-8?B?YUh5SjFuQlUzYm1TTTR6Z016QndxbWpEdC9KZU1TNDRYREVMQnNvZ0Roek43?=
 =?utf-8?B?a0ZISDRyVE5VQ3FjMkc0bjRqU2JMRnk5ZGhwWFBRWXRsSXVVNXNzRlRjeit2?=
 =?utf-8?B?ZXlVRVA4M0R1cllnaFc1UWcwa0EyM1J4Y00vSEtNS3VaRlk0bFVuT3BzTW5R?=
 =?utf-8?B?N3d3cy9vQlBnV2ZEbTVLVThxdUZqQUM0SzhLdmxRTGJIWDhPM2VPMTJKbHc4?=
 =?utf-8?B?YmtualZJRzRYZEkxSkdoR3k0TVE3RWJUcVpxS2M2WU9QUjhjQk1aYmcySGtk?=
 =?utf-8?B?cnl1UndVRjQ5VnNhK05BYmgzbGtaODFVa2pzVlp5cVJoSlJOeVVCejd6dTNI?=
 =?utf-8?B?UHM5ZUpDOXVGVXRhWlBKSWVSZTdmNG54clRrZFZTcys3WlozYmRRYVpCd3dv?=
 =?utf-8?B?WXltL2xCTzg3WmpTQ3kzV3I0TW9UMXl5TE1lRzVNeVcxdEg3MjR2cENQTFRT?=
 =?utf-8?B?ejJoKytGY0xSaW4vZDl5N1pmcjkvVXNSNGdqeWFtNlBrQ3VaM0Z6K0NMNzkv?=
 =?utf-8?B?dzQvMkxZQ2JmR3JGRXFIQ2xOYXdja09LSXBQV29na2JmaTFaOG11WE8vcjV1?=
 =?utf-8?B?aFI2alorREtDTXBMQ1BZMmRhc0ljQTN4MHR4OWpFVDlRQzdaSitNMXk5R2Zp?=
 =?utf-8?B?L3V2ZWZJNVlNTWlpVGZVRGV4N1JzZlJSQUdxUGxVRDhxWitTTmVJUk42K0dJ?=
 =?utf-8?B?M09PN1Y3bzNDUkEweWRoNlZwZXMycjVJSDR1b0pDeCtNVVhRRmJVVHhMR0ln?=
 =?utf-8?B?TnFFSHFaVTFoM28yZ0x5RDhOd3FoQ05EVHRLM2RDTzNXZmptK3JwY3FGZktl?=
 =?utf-8?B?S2x1VDFaQkhEL3poaUViMnRERVNNVzhvUWd2M3hLTDdWK0dHVE5ybVh4eHl3?=
 =?utf-8?B?OXBkQWFTalV5Rm5yZzkwdXFmWm8xQk0xSTllbExmL3d6Ym1wNXE3MThTUTB3?=
 =?utf-8?B?TzQrY3g0endqeEhIYi9LVEVFZTJ6dU9RRnV5eGc4R3ZGdnBsRnNTYjlYZ0hr?=
 =?utf-8?B?dS82bEQ0UXJYZkR6WnlERlZidUZaSHdVVXg2aGNqODZYTDJtK2MwUFN6eWpH?=
 =?utf-8?B?S1ZqRE5ZUVRsNHlFYjlkOWpzdDEvd3VDWVJnK1VKTUo5YjlIMFBzbGE2VE9h?=
 =?utf-8?B?THErTHBuL2RScXVTTm5MMlpHYXN2cmhKT2twZ0xnOGI5T0g5eHhhUXNPMmUx?=
 =?utf-8?B?dmVQQyt5eW9yV3Bna2tnckVqc2lSR3RpdktpN3RWS0gra0RiUTR1Wm5kMTNt?=
 =?utf-8?B?TkYxN2JjL2xUbUhMNDB6SVZ5bHlEYm1zMHRIZ3BBWVFTYk1pRVRTeW9uOHdX?=
 =?utf-8?B?R05XR2o2VVJNRWJkWUdZVFozMlJTUXM5MXlmcXZFK0FZVkpUMFlSUStWMjdF?=
 =?utf-8?B?Z2xWZCtVc2cvckVZLzBrbUxOTDU5UFQ4ekxGV1ppYUsvdlltTk1xOVdKYWx0?=
 =?utf-8?B?RFNhVEx3K09tOWRyRWNzZTJkTC8vNGtWaDBMVUYreWR2S1hKM1Jldi8zSS9Q?=
 =?utf-8?B?K2RvQjRWbGV3UDFoUEhPcUJwVjFRT0h6ZERLRkg4eVQyMTd0ei9FMk16RXgr?=
 =?utf-8?B?Q1hYaGxSRHFTU1A1NlQ5QlM4UnRrOENDM2Vzbk93YTJBWXQzaDEzTkV4RjZa?=
 =?utf-8?Q?GGqz7pSGhz8NbH4YdY=3D?=
Content-ID: <4B3B267E1310774D8FB692DC5EE395DD@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5c264de-52de-4849-f21c-08d98da73269
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2021 17:39:09.3170 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D2DNyu7N8TUVSDU1RVr4IN52OclSBamPqHRTqibXcgNhzZxBQhz0yiaxymJnL84rdUSbHU6Wok3gUf2MXXpEOoOjyTA2zPInhAar6p6rjN8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4996
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v2 2/9] ice: PTP: move
 setting of tstamp_config
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvMTIvMjAyMSAxOjEwIEFNLCBQYXVsIE1lbnplbCB3cm90ZToNCj4gRGVhciBKYWNvYiwN
Cj4gDQo+IA0KPiBBbSAxMi4xMC4yMSB1bSAwMzowNyBzY2hyaWViIEphY29iIEtlbGxlcjoNCj4+
IFRoZSB0c3RhbXBfY29uZmlnIHN0cnVjdHVyZSBpcyBiZWluZyBzZXQgaW5zaWRlIG9mDQo+PiBp
Y2VfcHRwX2NmZ190aW1lc3RhbXAsIHdoaWNoIGlzIHRoZSBmdW5jdGlvbiB1c2VkIHRvIHNldCBU
eCBhbmQNCj4+IFJ4IHRpbWVzdGFtcGluZyBkdXJpbmcgaW5pdGlhbGl6YXRpb24uDQo+Pg0KPj4g
VGhpcyBmdW5jdGlvbiBpcyBhbHNvIHVzZWQgaW4gb3JkZXIgdG8gc2V0IHRoZSBQSFkgcG9ydCB0
aW1lc3RhbXBpbmcNCj4+IHN0YXR1cy4gSG93ZXZlciwgaXQgbWFrZXMgc2Vuc2UgdG8gYWx3YXlz
IHNldCB0aGUgdHN0YW1wX2NvbmZpZyBkaXJlY3RseQ0KPj4gd2hlbmV2ZXIgdGhlIGljZV9zZXRf
dHhfdHN0YW1wIG9yIGljZV9zZXRfcnhfdHN0YW1wIGZ1bmN0aW9ucyBhcmUNCj4+IGNhbGxlZC4N
Cj4+DQo+PiBNb3ZlIGFzc2lnbm1lbnQgb2YgdHN0YW1wX2NvbmZpZyBpbnRvIHRoZSByZWxhdGVk
IGZ1bmN0aW9ucyBhbmQgb3V0IG9mDQo+PiBpY2VfcHRwX2NmZ190aW1lc3RhbXAuDQo+Pg0KPj4g
Tm93IHRoYXQgd2UgYXNzaWduIHRoZSB0aW1lc3RhbXAgbW9kZSBpbiB0aGUgcmVsZXZhbnQgZnVu
Y3Rpb25zLCB3ZSBubw0KPj4gbG9uZ2VyIG1vZGlmeSB0aGUgY29uZmlnIHZhbHVpZSBpbiBpY2Vf
c2V0X3RpbWVzdGFtcF9tb2RlLiBJbiB0dXJuLCB3ZQ0KPiANCj4gTml0OiB2YWx1ZQ0KDQpPb3Bz
Lg0KDQo+IA0KPj4gbm8gbG9uZ2VyIHdhbnQgdG8gY29weSB0aGF0IGNvbmZpZyB2YWx1ZSBpbnRv
IHRoZSBQRiBjYWNoZWQgc3RydWN0dXJlLg0KPj4gSW5zdGVhZCwgdGhpcyBpcyBub3cgdGhlIHNv
dXJjZSBvZiB0cnV0aCBmb3IgYWN0dWFsIGNvbmZpZ3VyYXRpb24uIE9uDQo+PiBzdWNjZXNzIG9m
IGljZV9zZXRfdGltZXN0YW1wX21vZGUsIGNvcHkgdGhlIHJlYWwgY29uZmlndXJlZCBtb2RlIGJh
Y2sgdG8NCj4+IHJlcG9ydCBpdCBvdXQgdG8gdXNlcnNwYWNlLg0KPj4NCj4+IFNpZ25lZC1vZmYt
Ynk6IEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPj4gLS0tDQo+PiAg
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMgfCAyMyArKysrKysrKysr
KystLS0tLS0tLS0tLQ0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTEg
ZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfcHRwLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0
cC5jDQo+PiBpbmRleCA3MWU3MTVjN2JlNGYuLjE1NTg0MjQ0N2ViZSAxMDA2NDQNCj4+IC0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMNCj4+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMNCj4+IEBAIC0yODUsNiArMjg1LDEx
IEBAIHN0YXRpYyB2b2lkIGljZV9zZXRfdHhfdHN0YW1wKHN0cnVjdCBpY2VfcGYgKnBmLCBib29s
IG9uKQ0KPj4gICAJZWxzZQ0KPj4gICAJCXZhbCAmPSB+UEZJTlRfT0lDUl9UU1lOX1RYX007DQo+
PiAgIAl3cjMyKCZwZi0+aHcsIFBGSU5UX09JQ1JfRU5BLCB2YWwpOw0KPj4gKw0KPj4gKwlpZiAo
b24pDQo+PiArCQlwZi0+cHRwLnRzdGFtcF9jb25maWcudHhfdHlwZSA9IEhXVFNUQU1QX1RYX09O
Ow0KPj4gKwllbHNlDQo+PiArCQlwZi0+cHRwLnRzdGFtcF9jb25maWcudHhfdHlwZSA9IEhXVFNU
QU1QX1RYX09GRjsNCj4gDQo+IEnigJlkIHVzZSB0aGUgdGVybmFyeSBvcGVyYXRvcjoNCj4gPiAg
ICAgIHBmLT5wdHAudHN0YW1wX2NvbmZpZy50eF90eXBlID0gb24gPyBIV1RTVEFNUF9UWF9PTiA6
DQpIV1RTVEFNUF9UWF9PRkY7DQo+IA0KDQpZZWEgdGhhdCB3b3VsZCB3b3JrLiBJIGNhbiBjaGFu
Z2UgaXQgaWYgdGhlcmUncyBhbm90aGVyIHJlYXNvbiB0byBmaXggdXANCnRoZSBzZXJpZXMuIEkg
dGhpbmsgSSBoYWQgaXQgdGhlIG90aGVyIHdheSBiZWNhdXNlIG9mIGV4aXN0aW5nIGNvZGUgSQ0K
d2FzIG1vdmluZyB1c2VkIGEgc2ltcGxlIGlmIHN0YXRlbWVudC4NCg0KPj4gICB9DQo+PiAgIA0K
Pj4gICAvKioNCj4+IEBAIC0zMDcsNiArMzEyLDExIEBAIHN0YXRpYyB2b2lkIGljZV9zZXRfcnhf
dHN0YW1wKHN0cnVjdCBpY2VfcGYgKnBmLCBib29sIG9uKQ0KPj4gICAJCQljb250aW51ZTsNCj4+
ICAgCQl2c2ktPnJ4X3JpbmdzW2ldLT5wdHBfcnggPSBvbjsNCj4+ICAgCX0NCj4+ICsNCj4+ICsJ
aWYgKG9uKQ0KPj4gKwkJcGYtPnB0cC50c3RhbXBfY29uZmlnLnJ4X2ZpbHRlciA9IEhXVFNUQU1Q
X0ZJTFRFUl9BTEw7DQo+PiArCWVsc2UNCj4+ICsJCXBmLT5wdHAudHN0YW1wX2NvbmZpZy5yeF9m
aWx0ZXIgPSBIV1RTVEFNUF9GSUxURVJfTk9ORTsNCj4+ICAgfQ0KPj4gICANCg0KU2FtZSBoZXJl
IG9idmlvdXNseS4NCg0KPj4gICAvKioNCj4+IEBAIC0zMjEsMTQgKzMzMSw2IEBAIHN0YXRpYyB2
b2lkIGljZV9wdHBfY2ZnX3RpbWVzdGFtcChzdHJ1Y3QgaWNlX3BmICpwZiwgYm9vbCBlbmEpDQo+
PiAgIHsNCj4+ICAgCWljZV9zZXRfdHhfdHN0YW1wKHBmLCBlbmEpOw0KPj4gICAJaWNlX3NldF9y
eF90c3RhbXAocGYsIGVuYSk7DQo+PiAtDQo+PiAtCWlmIChlbmEpIHsNCj4+IC0JCXBmLT5wdHAu
dHN0YW1wX2NvbmZpZy5yeF9maWx0ZXIgPSBIV1RTVEFNUF9GSUxURVJfQUxMOw0KPj4gLQkJcGYt
PnB0cC50c3RhbXBfY29uZmlnLnR4X3R5cGUgPSBIV1RTVEFNUF9UWF9PTjsNCj4+IC0JfSBlbHNl
IHsNCj4+IC0JCXBmLT5wdHAudHN0YW1wX2NvbmZpZy5yeF9maWx0ZXIgPSBIV1RTVEFNUF9GSUxU
RVJfTk9ORTsNCj4+IC0JCXBmLT5wdHAudHN0YW1wX2NvbmZpZy50eF90eXBlID0gSFdUU1RBTVBf
VFhfT0ZGOw0KPj4gLQl9DQo+PiAgIH0NCj4+ICAgDQo+PiAgIC8qKg0KPj4gQEAgLTEyNTYsNyAr
MTI1OCw2IEBAIGljZV9wdHBfc2V0X3RpbWVzdGFtcF9tb2RlKHN0cnVjdCBpY2VfcGYgKnBmLCBz
dHJ1Y3QgaHd0c3RhbXBfY29uZmlnICpjb25maWcpDQo+PiAgIAljYXNlIEhXVFNUQU1QX0ZJTFRF
Ul9QVFBfVjJfTDRfREVMQVlfUkVROg0KPj4gICAJY2FzZSBIV1RTVEFNUF9GSUxURVJfTlRQX0FM
TDoNCj4+ICAgCWNhc2UgSFdUU1RBTVBfRklMVEVSX0FMTDoNCj4+IC0JCWNvbmZpZy0+cnhfZmls
dGVyID0gSFdUU1RBTVBfRklMVEVSX0FMTDsNCj4+ICAgCQlpY2Vfc2V0X3J4X3RzdGFtcChwZiwg
dHJ1ZSk7DQo+PiAgIAkJYnJlYWs7DQo+PiAgIAlkZWZhdWx0Og0KPj4gQEAgLTEyODgsOCArMTI4
OSw4IEBAIGludCBpY2VfcHRwX3NldF90c19jb25maWcoc3RydWN0IGljZV9wZiAqcGYsIHN0cnVj
dCBpZnJlcSAqaWZyKQ0KPj4gICAJaWYgKGVycikNCj4+ICAgCQlyZXR1cm4gZXJyOw0KPj4gICAN
Cj4+IC0JLyogU2F2ZSB0aGVzZSBzZXR0aW5ncyBmb3IgZnV0dXJlIHJlZmVyZW5jZSAqLw0KPj4g
LQlwZi0+cHRwLnRzdGFtcF9jb25maWcgPSBjb25maWc7DQo+PiArCS8qIFJldHVybiB0aGUgYWN0
dWFsIGNvbmZpZ3VyYXRpb24gc2V0ICovDQo+PiArCWNvbmZpZyA9IHBmLT5wdHAudHN0YW1wX2Nv
bmZpZzsNCj4+ICAgDQo+PiAgIAlyZXR1cm4gY29weV90b191c2VyKGlmci0+aWZyX2RhdGEsICZj
b25maWcsIHNpemVvZihjb25maWcpKSA/DQo+PiAgIAkJLUVGQVVMVCA6IDA7DQo+Pg0KPiANCj4g
QWNrZWQtYnk6IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+DQo+IA0KDQpJIGRv
bid0IHRoaW5rIHRoZSBjaGFuZ2UgdG8gdGVybmFyeSBjb25zdHJ1Y3QgaXMgd29ydGggdGhlIHJl
LXJvbGwuIElmDQp0aGVyZSdzIGEgcmVhc29uIHRvIHJlLXJvbGwgdGhpcyBzZXJpZXMsIEkndmUg
bm90ZWQgdGhlc2UgY29tbWVudHMgZG93bi4NCg0KVGhhbmtzIQ0KDQotSmFrZQ0KDQo+IA0KPiBL
aW5kIHJlZ2FyZHMsDQo+IA0KPiBQYXVsDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
