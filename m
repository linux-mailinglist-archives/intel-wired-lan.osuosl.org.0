Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C06D64404AC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Oct 2021 23:11:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5B6260617;
	Fri, 29 Oct 2021 21:11:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bfr_2OKrGfPV; Fri, 29 Oct 2021 21:11:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6ECF605D3;
	Fri, 29 Oct 2021 21:11:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 592871BF41A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 21:11:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 472B980DF7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 21:11:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3qeazC4f4jyR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Oct 2021 21:11:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8ECA280F86
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 21:11:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="228210585"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="228210585"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 14:11:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="448250915"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga006.jf.intel.com with ESMTP; 29 Oct 2021 14:11:32 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 14:11:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 29 Oct 2021 14:11:32 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 29 Oct 2021 14:11:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eX1JnMONstuK/9/uv9GtAdWsgrM8cOATAslFttOjVo8CJ2dmCLVq7EMr5nlvuH9LxniG2wskZs0KdxYsEoQKUGNWXwfWZaRU787M3uqFRvLLlcxkXtnnPhZAdkKbGHtBmWeU2o2EvK1363QcLueCO64Lh9rEg3aXp/nZP2IkFeK4gmYUomZI/qTw5B2xt9HemNebfN+7cZEwaPS00K+OkPucciqvaYXlLaLU9yGEcj9gH9UiQ0p02IPT1990mf4WIkACWBUfmaGFycgttle0VCzednnBzFu88qMEy7LGsDeOX7FfreYGzhvisWL3SjwgZnQtUard24BfYEYAt9XH3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LC/J/fg4Ha3v3tKL8KwIbR1xEn776dRezPlVQzlKUVA=;
 b=lrvoXUucPR7v4tDIDIoTlr/RUs8fLA1/pglPmi4wbd3Y01wGeZd9jYn8y+wb03Phn48rJbIrBkA6nc4+Cki9taQ3Z5XX2Rwmfwyvr4tNjh17tszWxd59mt8nJrg5d2KgMWxtJsVKFJ8+vNO70Veq7hVIMEj29UanGPRPA5oA87ViaJC59Jw2f5lgfz2zj8qliMaVTt0ku3eLlbsrBmyAqO+7Pxq5akyvzKtR71wsFQ5L3DsbDasoa0wNmdMIAcKEn7sBoNDwx1z8Csclg45Bjsudd9zvKfGS+vg1tEQSr6h+eQAoWMMynt4Ors9SDJDgqyV2xUA+LmX4UcRhqTj0Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LC/J/fg4Ha3v3tKL8KwIbR1xEn776dRezPlVQzlKUVA=;
 b=kerwJC+n1K/BFgnqdV0RSy6GF/Jh8Ew6UZQo3f8hFBdySspW4h3+zB1QAdjkIbix06UNQaFJiJZdVbZAFzHZC0d9M5ed66RkG3oQhy2g+EzYR80c/FS4jNPu7TNx6Jiu5Bvrrkd/MoIajMHW7YcYgFpfxK//QtPp+GpNn+4QqQo=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3069.namprd11.prod.outlook.com (2603:10b6:805:d5::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Fri, 29 Oct
 2021 21:11:30 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4628.018; Fri, 29 Oct 2021
 21:11:30 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] iavf: Fix promiscuous mode
 configuration flow messages
Thread-Index: AQHXzL9lUi/nDlxRc06QiKffe1axGKvqeSWA
Date: Fri, 29 Oct 2021 21:11:30 +0000
Message-ID: <dfa263484716c95bf8555f713f19fa8aa873adcd.camel@intel.com>
References: <20211029122052.123586-1-karen.sornek@intel.com>
In-Reply-To: <20211029122052.123586-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aa0ab3b1-2fbd-440c-c3ea-08d99b20ada1
x-ms-traffictypediagnostic: SN6PR11MB3069:
x-microsoft-antispam-prvs: <SN6PR11MB3069ABFF5C1CAA8137A0BD86C6879@SN6PR11MB3069.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6aaYgknhdsuG2ahTqt5f1rzpeS3/TBNjMXf3G7s9IJ7OzbhKOLMztb1JtFF9OKZw2wM5pmbm3AUGig58nbfV4f721lLe8VFyE1/Od3M84bHYDy7u8SFtIGURGpu8X79iczb4XMyK4xcu32Vfe1nkBJNCxjEqlMiRgCmTXpZ3RTvwfr9R1LZqXAa97YY5K7jFZagWYk1bbiKq+qqrIvY3xBYxrE1PvPuiQRf9JLLaJYqViOLr+yD5MGiAcjSPlTsKWBRTJZgzc0Jb5zoPWhm7lX9Lyg9340ZJeu5BLo8ay23jA0h+knZUFDXyhARkP0xNQwkYY9yis3PSA5lUsWLuinFCQHe7pQS4tUGnAktbrl/mqk/dfhD7bWlCO0aB9wsJkHSRI3iOWxj/hD/VpPwZWjfXOmiqDAaEv/+03Vnb9GirTcrNL/MdxkTZO7GTyC0JmuOcXuRfxeVNaA9j4pV9+N5YlXyL52CbwAUtoKWl1aD8hgTtoeyWc0MBJmhn7yxvw88TA9RmsjIOAfVmYp/KvabjEIkVfW5ozo2z1Ms7v73eRzCt2Tjmjj70iR1JicwS+jdny4IaMrWe1iIxRBPyETatsrosU8+4snaXDFR3zQsRLJegM2Bpge51LlagZ2lLpboperhTUYKJSaqm8V9EbK0LldP1uhOrZRcWKTm4Q7RuRMyLQxaVuj88448qgbi96iPQpiFFkHEeSw2fiJ9veQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8676002)(82960400001)(36756003)(6486002)(2616005)(6506007)(66446008)(38100700002)(110136005)(8936002)(64756008)(5660300002)(26005)(38070700005)(186003)(2906002)(91956017)(76116006)(4001150100001)(508600001)(83380400001)(86362001)(66476007)(15650500001)(66556008)(316002)(66946007)(71200400001)(6512007)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cTNXRDAzSW1XWjNXVHJGcW52ZFQrbnBueDdRaGdUcVc0Q0cwbUFPeDRXVHZ3?=
 =?utf-8?B?UkphN1RndjFUT2laQ3lZNWpURjU3ZHU0bUZTOGwyaDNCZkMwYWlMc255VDhE?=
 =?utf-8?B?RXMyZnIvdXR4K2lQeVpqNVJBNXpLQ2RYRFBZTSsxVW81emM2WUhCMk1yMEJv?=
 =?utf-8?B?TlBkaWVVa01NK2VkRW9KWk44d0FFR2NkLzY1eHdLRFE5bEh4QVBtemYrN3N4?=
 =?utf-8?B?ekJPbWFmbUhFTDRTY3cwakwwamY4RHVoTWlWTUtvbHU0WW9oTk82SkI4UTFU?=
 =?utf-8?B?SXVkTzJXQm96Mk55SDU0K1F3Q3RwN0xlVjBnZGpoa3kxODYwSy9IL213S0tV?=
 =?utf-8?B?enJ2bm5rSytNaHdvK2JvZWJNOEdNSjVpVE5FUHRkSkN5WGEyWWd2R3lqZlVV?=
 =?utf-8?B?M0FGcSsyemJPZmJ4QnJTY3llUmoydDNCdm1JWW1VdDJ3R090OFhZRmxta3RY?=
 =?utf-8?B?NXU5ZjlrNktFdW5Dd29aQkU2ZmtobFYwWTlSUHdiNjhVREdGZTlhcmMrZkpn?=
 =?utf-8?B?aEQxYVorLy9iSVZzT04xOGx6VGEwN2F4ZXVpaWJ3Y1BROEJGd2F2ZWtvd1JR?=
 =?utf-8?B?OTdDRlZDZTluaGpVQ1lDaFdEZW0yWUpxaDlvMkhGSS9VUnl1YVhPN090WlZD?=
 =?utf-8?B?YkZCd0VBUE5zamJDd2hBOGUzcEVEUFJXcjB6RXovcmNZOGlDL3hMUTNZZm0z?=
 =?utf-8?B?a3N1WkF3cGpUcEp5RWtiOGdDQ2RmNTZKV0lqSWNRRkEwNm5SUHU4V3I2TFN4?=
 =?utf-8?B?b1REbXNIZTNPcmd4cTRXajRXUDlzdUdabWhWUkxWeVlkODc0TTBHU2dCcEh4?=
 =?utf-8?B?SlRvVGwrd083bzQ1NW1nQ2hhQXFKM2NxR216UHFjUndlYUNvYVVRd0ZBWFc3?=
 =?utf-8?B?UzBveXc0NktMakF1V1FqTWJ2NVNScVZ6N1NSd1JETUdrVnB0YjdQN01KTTU4?=
 =?utf-8?B?QmNCamRlRlF3Q21odUVkaU1WRG9NczZCeEozZUpyL2VnOHQzZEI2U1BSMTdX?=
 =?utf-8?B?aGxqb1VCSTdSOVQxS3AxWDBQQi8rd2xHZUs5RnVzTkMxTWZDeHluc01iZnB5?=
 =?utf-8?B?SmRhL3VSU1UvWWUyQ2JLUk9SbDNTUzFlMUdicmZyMGxjdURRdXF1V2w3bDky?=
 =?utf-8?B?MElaRStFbWpGTVFsSFdKczh0ZmZHNkIwQmxZTU13SDJueGJTU3FNT2FiWlVp?=
 =?utf-8?B?UGFla2ZmTDZ4SWFraTQwSE83bHBETUsvOStTYVZzZlZBanlpRU54Yjh6cU1j?=
 =?utf-8?B?dVV4S21lSXRWOFpYTHduY3Nic1R4dnZnNHVZbWNBQWhuL1ZSdzVsYlBTdS9S?=
 =?utf-8?B?YTd6VjMxV1BzaTdOWlp5U0tYYWl1K1NmM1NBQUFHL05kVWI4OEtDZEZsUjBh?=
 =?utf-8?B?UXBVbGxtZ1J4TWFqYnVjOUNnRmd2cCtLUkZEc0Z2UERiVVlZOWIwZlpybnV4?=
 =?utf-8?B?aTVENkFJdC9icW1nZE1FQ0pDMHBoTlMrMmx5M1ptUTFEQWdBcThwbzQwYkd1?=
 =?utf-8?B?ZnVsTHdGYmVaMEJPbXBFRktZbmdCRlIra1JMdU1KWWJFek1tUVFXeHFuYzlm?=
 =?utf-8?B?ZjgyMDM2Sktkd05GVVVjU2IwbHVGSFZOZDBYVTZRRk5aRVdpQVNWc3FQT2lF?=
 =?utf-8?B?akR4SmRvc3VSbk9QT0hTK1BhZFJFK1FBKzV0NlVkRm5DK01VdVpia0VPRzNG?=
 =?utf-8?B?MTJMRHd6QlJ4UDU5ZkxxTTJXbUs5ZEQrODdkN2FqZVVHck5jRkdsVzJZMVgy?=
 =?utf-8?B?aEV2Z1JRbm9FN0ZaZjdKTnQxQlNvYi9jQVRVZEdXZ2RSZUpFa3VNalJzVEw2?=
 =?utf-8?B?RFVVRHMvazU5bG4vWllUN0VvRlAxdkFQbHhiOUtWTlkvdVdrRVRQRmNoY0Ev?=
 =?utf-8?B?ajlnQTY1VXcxUVMwOVE0c3lDTjBkUHk2WFdqZlVtM0d3cjhlWXlyNXY3TXBr?=
 =?utf-8?B?RjVVTWNLeTBNSm1LelMyQ2hqUzh3Q0JWek1meUNqbkszR1p0WmZVbk92aGdw?=
 =?utf-8?B?WlZ2TkJjakU2eHo5MUVSVWFrWmtmY1o2USt2aFlMNVJOQ2gvUjJZYjRhcWo0?=
 =?utf-8?B?OUtVZHowYXdJMEIxem9oUFlUTmNQRnJPOWVYdHZpVzJmV0hmak54SmpsNXpZ?=
 =?utf-8?B?WE5nYURNcUxFTHVnL2VLVzIvTkEzM0U5MGFxR3dTNG9ubkJRL1Y4MitXN3By?=
 =?utf-8?B?VllKWS9yR2t3QitMYTJrZGVEL1grdkJzS3NGbkkyS3Y5WXZnTWo2NUgzbFBG?=
 =?utf-8?Q?UHbKY4Zd5sSe/a81YPS0exIbXr4IM8v8eqz37TQ6Yg=3D?=
Content-ID: <F260645553B7914C90DB00F799F94042@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa0ab3b1-2fbd-440c-c3ea-08d99b20ada1
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2021 21:11:30.2905 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7gpJs8T/eYMUoAYvFCAv8t/lsFCcS/VkCY8CyAaJxEcOmo9fG3WwVVYDCt79eKbc5O/o1HAw3F4YKnffVUxqMpXf9cjaAwhB40730B9H/sw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3069
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: Fix promiscuous mode
 configuration flow messages
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAyMDIxLTEwLTI5IGF0IDE0OjIwICswMjAwLCBLYXJlbiBTb3JuZWsgd3JvdGU6DQo+
IEN1cnJlbnRseSB3aGVuIGNvbmZpZ3VyaW5nIHByb21pc2N1b3VzIG1vZGUgb24gdGhlIEFWRiB3
ZSBkZXRlY3QgYQ0KPiBjaGFuZ2UgaW4gdGhlIG5ldGRldi0+ZmxhZ3MuIFdlIHVzZSBJRkZfUFJP
TUlTQyBhbmQgSUZGX0FMTE1VTFRJIHRvDQo+IGRldGVybWluZSB3aGV0aGVyIG9yIG5vdCB3ZSBu
ZWVkIHRvIHJlcXVlc3QvcmVsZWFzZSBwcm9taXNjdW91cyBtb2RlDQo+IGFuZC9vciBtdWx0aWNh
c3QgcHJvbWlzY3VvdXMgbW9kZS4gVGhlIHByb2JsZW0gaXMgdGhhdCB0aGUgQVEgY2FsbHMNCj4g
Zm9yDQo+IHNldHRpbmcvY2xlYXJpbmcgcHJvbWlzY3VvdXMvbXVsdGljYXN0IG1vZGUgYXJlIHRy
ZWF0ZWQgc2VwYXJhdGVseS4NCj4gVGhpcw0KPiBsZWFkcyB0byBhIGNhc2Ugd2hlcmUgd2UgY2Fu
IHRyaWdnZXIgdHdvIHByb21pc2N1b3VzIG1vZGUgQVEgY2FsbHMgaW4NCj4gYSByb3cgd2l0aCB0
aGUgaW5jb3JyZWN0IHN0YXRlLiBUbyBmaXggdGhpcyBtYWtlIGEgZmV3IGNoYW5nZXMuDQo+IA0K
PiBVc2UgSUFWRl9GTEFHX0FRX0NPTkZJR1VSRV9QUk9NSVNDX01PREUgaW5zdGVhZCBvZiB0aGUg
cHJldmlvdXMNCj4gSUFWRl9GTEFHX0FRX1tSRVFVRVNUfFJFTEVBU0VdX1tQUk9NSVNDfEFMTE1V
TFRJXSBmbGFncy4NCj4gDQo+IEluIGlhdmZfc2V0X3J4X21vZGUoKSBkZXRlY3QgaWYgdGhlcmUg
aXMgYSBjaGFuZ2UgaW4gdGhlDQo+IG5ldGRldi0+ZmxhZ3MgaW4gY29tcGFyaXNvbiB3aXRoIGFk
YXB0ZXItPmZsYWdzIGFuZCBzZXQgdGhlDQo+IElBVkZfRkxBR19BUV9DT05GSUdVUkVfUFJPTUlT
Q19NT0RFIGFxX3JlcXVpcmVkIGJpdC4gVGhlbiBpbg0KPiBpYXZmX3Byb2Nlc3NfYXFfY29tbWFu
ZCgpIG9ubHkgY2hlY2sgZm9yDQo+IElBVkZfRkxBR19DT05GSUdVUkVfUFJPTUlTQ19NT0RFDQo+
IGFuZCBjYWxsIGlhdmZfc2V0X3Byb21pc2N1b3VzKCkgaWYgaXQncyBzZXQuDQo+IA0KPiBJbiBp
YXZmX3NldF9wcm9taXNjdW91cygpIGNoZWNrIGFnYWluIHRvIHNlZSB3aGljaCAoaWYgYW55KQ0K
PiBwcm9taXNjdW91cyBtb2RlIGJpdHMgaGF2ZSBjaGFuZ2VkIHdoZW4gY29tcGFyaW5nIHRoZSBu
ZXRkZXYtPmZsYWdzDQo+IHdpdGgNCj4gdGhlIGFkYXB0ZXItPmZsYWdzLiBVc2UgdGhpcyB0byBz
ZXQgdGhlIGZsYWdzIHdoaWNoIGdldCBzZW50IHRvIHRoZQ0KPiBQRg0KPiBkcml2ZXIuDQo+IA0K
PiBBZGQgYSBzcGlubG9jayB0aGF0IGlzIHVzZWQgZm9yIHVwZGF0aW5nIGN1cnJlbnRfbmV0ZGV2
X3Byb21pc2NfZmxhZ3MNCj4gYW5kIG9ubHkgYWxsb3dzIG9uZSBwcm9taXNjdW91cyBtb2RlIEFR
IGF0IGEgdGltZS4NCj4gDQo+IFsxXSBGaXhlcyB0aGUgZmFjdCB0aGF0IHdlIHdpbGwgb25seSBo
YXZlIG9uZSBBUSBjYWxsIGluIHRoZQ0KPiBhcV9yZXF1aXJlZA0KPiBxdWV1ZSBhdCBhbnkgb25l
IHRpbWUuDQo+IA0KPiBbMl0gU3RyZWFtbGluZXMgdGhlIGNoYW5nZSBpbiBwcm9taXNjdW91cyBt
b2RlIHRvIG9ubHkgc2V0IG9uZSBBUQ0KPiByZXF1aXJlZCBiaXQuDQo+IA0KPiBbM10gVGhpcyBh
bGxvd3MgdXMgdG8ga2VlcCB0cmFjayBvZiB0aGUgY3VycmVudCBzdGF0ZSBvZiB0aGUgZmxhZ3MN
Cj4gYW5kDQo+IGFsc28gbWFrZXMgaXQgc28gd2UgY2FuIHRha2UgdGhlIG1vc3QgcmVjZW50IG5l
dGRldi0+ZmxhZ3MNCj4gcHJvbWlzY3VvdXMNCj4gbW9kZSBzdGF0ZS4NCj4gDQo+IFs0XSBUaGlz
IGZpeGVzIHRoZSBwcm9ibGVtIHdoZXJlIGEgY2hhbmdlIGluIHRoZSBuZXRkZXYtPmZsYWdzIGNh
bg0KPiBjYXVzZQ0KPiBJQVZGX0ZMQUdfQVFfQ09ORklHVVJFX1BST01JU0NfTU9ERSB0byBiZSBz
ZXQgaW4gaWF2Zl9zZXRfcnhfbW9kZSgpLA0KPiBidXQgY2xlYXJlZCBpbiBpYXZmX3NldF9wcm9t
aXNjdW91cygpIGJlZm9yZSB0aGUgY2hhbmdlIGlzIGV2ZXIgbWFkZQ0KPiB2aWENCj4gQVEgY2Fs
bC4NCj4gDQo+IEZpeGVzOiAxMjljZjg5ZTU4NTYgKCJpYXZmOiByZW5hbWUgZnVuY3Rpb25zIGFu
ZCBzdHJ1Y3RzIHRvIG5ldw0KPiBuYW1lIikNCj4gVGl0bGU6IGlhdmY6IEZpeCBwcm9taXNjdW91
cyBtb2RlIGNvbmZpZ3VyYXRpb24gZmxvdyBtZXNzYWdlcw0KPiBDaGFuZ2UtdHlwZTogRGVmZWN0
UmVzb2x1dGlvbg0KPiBIU0RFUy1OdW1iZXI6IDE4MDE3ODAzOTQzDQo+IEhTREVTLVRlbmFudDog
c2VydmVyX3BsYXRmX2xhbi5idWcNCg0KUGxlYXNlIHJlbW92ZSB0aGVzZSB1bm5lY2Nlc3Nhcnkg
bGluZXMuDQoNCj4gU2lnbmVkLW9mZi1ieTogQnJldHQgQ3JlZWxleSA8YnJldHQuY3JlZWxleUBp
bnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEthcmVuIFNvcm5layA8a2FyZW4uc29ybmVrQGlu
dGVsLmNvbT4NCj4gLS0tDQo+IHYyIC0gcHJldmlvdXMgdmVyc2lvbiBoYWQgYXBwbHlpbmcgaXNz
dWUNCg0KVGhpcyBzdGlsbCBkb2VzIG5vdCBhcHBseS4gUGxlYXNlIGJlIHN1cmUgeW91IGFyZSB1
c2luZyB0aGUgcmlnaHQgdHJlZS4NClRoaXMgc2hvdWxkIGJlIHVzaW5nIG5ldC1xdWV1ZSBzaW5j
ZSB5b3Ugd2FudCBpdCBnb2luZyB0byBuZXQuDQoNCj4gLS0tDQo+IMKgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWF2Zi9pYXZmLmjCoMKgwqDCoMKgwqDCoCB8IDE2ICsrLS0NCj4gwqBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jwqDCoCB8IDQ0ICsrKysrLS0t
LS0tDQo+IMKgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwuY8KgwqAg
fCA3NCArKysrKysrKysrKystLS0tLQ0KPiAtLQ0KPiDCoDMgZmlsZXMgY2hhbmdlZCwgNzUgaW5z
ZXJ0aW9ucygrKSwgNTkgZGVsZXRpb25zKC0pDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
