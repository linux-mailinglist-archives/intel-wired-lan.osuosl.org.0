Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8023C44B2A5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Nov 2021 19:19:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF3BA60891;
	Tue,  9 Nov 2021 18:19:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HKIDnri6HvEM; Tue,  9 Nov 2021 18:19:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 988266088F;
	Tue,  9 Nov 2021 18:19:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4CA501BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Nov 2021 18:19:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3AD7A80D33
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Nov 2021 18:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PbwWAFHy7fkh for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Nov 2021 18:19:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 072A080D27
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Nov 2021 18:19:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10163"; a="213243492"
X-IronPort-AV: E=Sophos;i="5.87,220,1631602800"; d="scan'208";a="213243492"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 10:19:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,220,1631602800"; d="scan'208";a="452023017"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 09 Nov 2021 10:19:37 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 9 Nov 2021 10:19:36 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 9 Nov 2021 10:19:36 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 9 Nov 2021 10:19:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kbZWDWj2gfqSOwIUjJgTKsBf1uCmPLe7IWstRRJ2YdyZN9JGjJNIejeUWFqOx2sZpRukwqtzWZnJQQSUH4BVg43s1ra6u1XElsn2f2c3tDAH4gTUZgM9dXmna02pZNhdwzTwis7X5sk4ygFST6DeLu5D0Y+aZZoxwJK2Ddlrnj1cFnGqa5zAzjK5CMhSe/wOW/nmHgF0uqP2beuBZbdTQSuZ8x5aiRXLz/e63uy/fftzcbp3MWHTs5q96+Op31Mz1fW4KAo1LW/Ao3VL4RWwnO8AO+Tp+1QzdkXF7CAmDvgAiEZ6c8KVh6I51qcqXwID4w3c40SS7MJfEMbW5+UxjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vrxYjRN29WA5lcceNvs8JDBZtvtM0w3DV8Pvg+Nq4/w=;
 b=UAZ/s/hC3tUs/2BcQHOmwm55UIKQY6wuShhDIZEEa1K5ER86PdZ3ji6fGn2ElPk8hYagMmYan7fURxCNlgGbajmKNh2bNB2pagN+onkbqD2MtMfHkh/MtjBiOaBkFOzGYxvr57rvK4SRoREmSOieqjyGgbH6RVtrLUpp56LkcPmCPDDIYWQ0Z5BdIXIPcMoDkF0d5KvwS+8c9S6lG7m9eqIsVL/CfAvMx30RIPZSz31180euSrRN+6QNDfnDaGGUH17HSZFslhZz7jGnbzYGoIV+zy0HIiItGd+MHyLDchhPT5ZyN5n0y7H/tEFfo+U/xmByphXbnPrHdCyZZq32Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vrxYjRN29WA5lcceNvs8JDBZtvtM0w3DV8Pvg+Nq4/w=;
 b=Dipj1nz4R/e0GlM+IjnoC0xg924FdvOaWsIFuzHZj9LF2du85E1bany/WqnuOvyK33HCmzdp415ITiY6piZrjIyE18hAd8ybULCiiPGLCuPFUXvXpCDSt05T60np57jspcN4aiCCb9nQYEDYPL8aw6B/QHE95ibsHPDxDyaRgeI=
Received: from MW5PR11MB5812.namprd11.prod.outlook.com (2603:10b6:303:193::14)
 by CO1PR11MB4819.namprd11.prod.outlook.com (2603:10b6:303:91::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Tue, 9 Nov
 2021 18:19:34 +0000
Received: from MW5PR11MB5812.namprd11.prod.outlook.com
 ([fe80::b137:7318:a259:699e]) by MW5PR11MB5812.namprd11.prod.outlook.com
 ([fe80::b137:7318:a259:699e%9]) with mapi id 15.20.4649.019; Tue, 9 Nov 2021
 18:19:34 +0000
From: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
To: Petr Machata <petrm@nvidia.com>
Thread-Topic: [PATCH v2 net-next 6/6] docs: net: Add description of SyncE
 interfaces
Thread-Index: AQHX0oli6labJUcox0OLXoT9uSo8Gqv57+iAgAEU4LCAAEj/gIAAAf9g
Date: Tue, 9 Nov 2021 18:19:34 +0000
Message-ID: <MW5PR11MB5812D4A8419C37FE9C890D3AEA929@MW5PR11MB5812.namprd11.prod.outlook.com>
References: <20211105205331.2024623-1-maciej.machnikowski@intel.com>
 <20211105205331.2024623-7-maciej.machnikowski@intel.com>
 <87r1bqcyto.fsf@nvidia.com>
 <MW5PR11MB5812B0A4E6227C6896AC12B5EA929@MW5PR11MB5812.namprd11.prod.outlook.com>
 <87mtmdcrf2.fsf@nvidia.com>
In-Reply-To: <87mtmdcrf2.fsf@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: nvidia.com; dkim=none (message not signed)
 header.d=none;nvidia.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 17e7583f-e9f0-4ada-a287-08d9a3ad7ba5
x-ms-traffictypediagnostic: CO1PR11MB4819:
x-microsoft-antispam-prvs: <CO1PR11MB481970665DEEDF4A1CB84EF7EA929@CO1PR11MB4819.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e1gu/YPZGhcDcgpcc2jXhMeaAFQWQuAo6GoubG+U3hilO0RG86W7mQKFA+EloTyuX0np9OgAvwxLl//XnUcpkBRIZA0Z0Gp2oUInNwwXTgPHD38GfD/1jpbxsnchhtly4rPdQv7jGPvO9nqnTsFq4PZ4VsOExs5kSIm1Fc8KHKJPT4cxS7xLK6hRN3/cmc3gzMQUmChqWUoI7+H7Fs2CZXtNoIkTOFe93+FvXtrR1I/jKJLY/W+TEYa7hcAWCrsR3HII3K4/UwlKxP04Fc+YGuZgaRuO+FUq2Qb2EHAR3kcKqh4kLi4EX/dMBbMay5CMdZzdvonuN+EDUHwVWXS8pUre2/bnXOTY0m4P9pvtcG4M5OU+GeenY1DQ6Zj0yR8lh897piaNhR/wKNtVofmDzsfTCgRWIp4fhUGuFDsIud3L9XWXW3gad/c1RFP/y48os8Pviduqq9w3MdKhMyviMMHjvR3mde0AlOM3yXzEFnlML9VCT+oGyQL+kPpB4G3QohlF1EMQfVWZA6EdZzmALzfcxktCz+hOczb2Vyeyv2KsmjnTOa6LVXk3928LWsaRzE2Y5AyK8z8m/FFl/QRSonY/ygXb5W8DU9ztmN4cfHsI0X4NnJAwIrJBzKO48A7kq8zAHdYbZt953A9bdiO1rYwrgB7Pya+GtqeI6Q04IdQRj/+2+lcuEnkEwIGmdva9wIuABbrZUdhRIfPKNhw4Mw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5812.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(8676002)(122000001)(6916009)(38100700002)(4326008)(71200400001)(508600001)(86362001)(7416002)(53546011)(54906003)(52536014)(33656002)(6506007)(5660300002)(316002)(186003)(7696005)(26005)(82960400001)(83380400001)(38070700005)(9686003)(66476007)(55016002)(66946007)(66446008)(64756008)(66556008)(76116006)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Qm9LL0N6NGhSc2VHaVZtSGp5UlBqZm5wK1djQUUxcldwRDNXSW1HOUYzUDdX?=
 =?utf-8?B?MHh6aE1GMVowM3lWaWRpTmlYUW5kMlh1Q0wveHkzSTFjSkNGUG1HVEo2dklz?=
 =?utf-8?B?cy9nZ0grR0d4NmV0ZG1MRmYwZ3BDa0hhOURYT0FRZE41c080eGVCRnBQUjBp?=
 =?utf-8?B?VkFlUWlNd1EwbWRNTTY1ODVVcTByUWNyVkdTZExQdDlRemVYcWQ3dDNvcWYx?=
 =?utf-8?B?YmE4Nk5Xd0VWeHRNeWlLNCtSemFKWmdva3hSNUE3YnJaQytyWkc5b0Z4NTdD?=
 =?utf-8?B?K1JmYUZWOGdrTkZXVEFkaGZyazUzVEVaVzRNYk5KYXlBTWQ3aEY0SVNzaHJr?=
 =?utf-8?B?RlhiOExSajc2ZzdQekNobXBBYTlXaWtvUjU4Qk5jMCsyck5IcVBBZXRWZ3Ro?=
 =?utf-8?B?U3puUWRBdVNsZnE0T0dZcjFzRTRXbjNCU0d1MTJLRDRHb0drbDkrd1k2eGVJ?=
 =?utf-8?B?b1pNNnQyUFVHUTV3WkN5Z3ErR09EbFV4Mk5MRjhXVXlaOFdKcUpFbXhVelVu?=
 =?utf-8?B?bDUvR1drMklhci9XRkF5WkUzVkt1aURBcDk2Wlp3VFNaUXlmUDJXS1BiOTQw?=
 =?utf-8?B?cWl5dFg4b2VvQXoyYWZYbHJsUUJyTkVyYmYrUWZzVmRLRkdZS3MxM0c2ekM5?=
 =?utf-8?B?U0kzWXE4czE2L3NrSWtQTnJ2U2F0YlhoMDhZRVc2bHMzdWFqK2FjRVlZWmly?=
 =?utf-8?B?UjM1cmgwajJTVnBISWpheEdBK1diajArMUZFS2FkQ0syejVjUS9KcU94RWtJ?=
 =?utf-8?B?T2EzMVc0MU4zTHkvQ09oTzA0ZjVXZU1tYlp5Vk9TYUw3eGE4cWpiMHRlOWdU?=
 =?utf-8?B?bTMzQ2xXME9BK09Wa3RMTm5VZjVPM3Fkdys0NnQxNEY3VWRNaTVlVC9kelh0?=
 =?utf-8?B?akJKWFdVVGk3QlRCcm9LZGJDWTFGUTdmcGpHSlZrdWFnQzBBblY4Y1o0VUdO?=
 =?utf-8?B?ODJpQWRraVFmQ09nRGhWN2Q0bTFZTFJMTHRQdW1pblhDQVVnSGlkY2lNWXpQ?=
 =?utf-8?B?STZzU1BKZzNpbWFDZ0JFM1F4cTJZN24xb2xDSktNVzlrVTRqUEx2L0phMEFL?=
 =?utf-8?B?a3FHdytBZFdpVi9jTzAxRWkzOXZPallHZDE2KzcySVd3SDB1TlM0VmZmSWdk?=
 =?utf-8?B?UHd6Q21mRVR5ajVoRnkxczc4dDdpYVpkNU9ET1BHelJxQjgrelR5M3AwbXJK?=
 =?utf-8?B?SXN4MHFUNGxGaWZURWlsbUk0Z1J5QVV0N0dGbDBVNWpsVHVJakpybnR2dnlk?=
 =?utf-8?B?YVhOQ21EVmtJZ0FjempxVFBDVEl2Y0FVaVo2VVh3eU44NTBxVUlMcHlHZmpn?=
 =?utf-8?B?OW9SUk9SWUpMbHJFaWRkVW54ZzUzSWM5V3lMWkpQUmJuNktIUGkraGhoMTVJ?=
 =?utf-8?B?ZVV4Z0dVMTVPRFJqZmJONWRXT3JqRlhFYnIwVUM5VzdHeHVhbVVqZkpsb0NR?=
 =?utf-8?B?SzVJWFBwZkxEUkd4T3BqODZnS3pQUUY1T0grM2UydEpJUDdhV2xXdmZQTmdF?=
 =?utf-8?B?aXNhNVdnTEJTcFpXTkRsUkMwYzIycDRUMlRISkxGVGJvUEZ4VHhiS0M3aWdl?=
 =?utf-8?B?akJlL0tQM2dJTEpVVENaQ2xwaUxlTnZJZ0VGQlJ0SUxyMzhSN1l6T0FQd0sy?=
 =?utf-8?B?VHU0TmFPTTB6amh5Q1plV1JXQzdyUThiWlVCL2xSZHFoUyt6Y1lpRkMxVmlV?=
 =?utf-8?B?azgzNEM0WHRZMmtjVlplOHNLeVBmQnp1R0kwaEsyQnZEZkZsaXVMSTV0dnlZ?=
 =?utf-8?B?VXMzaXdhR0JsZCtITDArL2RCa052T0o4dk1LQzA0SkNUajZQVjRObVhsWFcz?=
 =?utf-8?B?STU2Vkd0T3hKQlVMTFM0dWt6RFFTdTh5VDZXcDJXMDUzSXVzaDdtZ2c3U3hp?=
 =?utf-8?B?ZlREcVFzQ0d2bFp0MGorOTVpa1FRUUZ2dDZhclh1OGErMml0aHZia1pIbWxr?=
 =?utf-8?B?RSs5ejJNUlp3MUdvZjIzaGl1LzBmUUV6STdTY3RUYis4OGkvc2tZbERTcENx?=
 =?utf-8?B?R1RHL3hXdDBpUGQ2YkhscEJ0WnpuMmU4NmIrT2E4dlcwOC8wS2YweWtuM0N0?=
 =?utf-8?B?THc3NW1Tc1Z0aEZPb2drZnlpR2xMRU1QbzQwUTVWem92L3VVQ0FEMUY5ZVIy?=
 =?utf-8?B?SkZlNVhQMkRCd1FlbzB3OUFCQlZrWGQ3NW9NRzFGWWdMOG5zdUIrM1p0a2NN?=
 =?utf-8?B?a2hQLzlveU5vQUdKYmZkcWNPVjA4VlBOM213TWp1TkZGM3FXVHpDNGJnMmpF?=
 =?utf-8?B?amRsS2dIMC9LUk9PSGhzdTBZMjhBPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5812.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17e7583f-e9f0-4ada-a287-08d9a3ad7ba5
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2021 18:19:34.8071 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VJb1m/gZhjzqRLYYJ0BBJNCYv2Mw2fq9JTKGkPAf1DISs+FHpyrlpjOTKCrTzmcoUe0h6XF+R6YqWbwIXfIhn2gNto9UpmNkTGLY0ZoHaiY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4819
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 6/6] docs: net: Add
 description of SyncE interfaces
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
 "idosch@idosch.org" <idosch@idosch.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBQZXRyIE1hY2hhdGEgPHBldHJt
QG52aWRpYS5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE5vdmVtYmVyIDksIDIwMjEgMzo1MyBQTQ0K
PiBUbzogTWFjaG5pa293c2tpLCBNYWNpZWogPG1hY2llai5tYWNobmlrb3dza2lAaW50ZWwuY29t
Pg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHYyIG5ldC1uZXh0IDYvNl0gZG9jczogbmV0OiBBZGQg
ZGVzY3JpcHRpb24gb2YgU3luY0UNCj4gaW50ZXJmYWNlcw0KPiANCj4gDQo+IE1hY2huaWtvd3Nr
aSwgTWFjaWVqIDxtYWNpZWoubWFjaG5pa293c2tpQGludGVsLmNvbT4gd3JpdGVzOg0KPiANCj4g
Pj4gTWFjaWVqIE1hY2huaWtvd3NraSA8bWFjaWVqLm1hY2huaWtvd3NraUBpbnRlbC5jb20+IHdy
aXRlczoNCj4gPj4NCj4gPj4gUlRNX0dFVFJDTEtSQU5HRSB3b3VsZCByZXBvcnQgbnVtYmVyIG9m
ICJwaW5zIiB0aGF0IG1hdGNoZXMgdGhlDQo+ID4+IG51bWJlcg0KPiA+PiBvZiBsYW5lcyBpbiB0
aGUgc3lzdGVtLiBTbyBlLmcuIGEgMzItcG9ydCBzd2l0Y2gsIHdoZXJlIGVhY2ggcG9ydCBoYXMg
NA0KPiA+PiBsYW5lcywgd291bGQgZ2l2ZSBhIHJhbmdlIG9mIFsxOyAxMjhdLCBpbmNsdXNpdmUu
IChPciBtYXliZSBbMDsgMTI4KSBvcg0KPiA+PiB3aGF0ZXZlci4pDQo+ID4+DQo+ID4+IFJUTV9H
RVRSQ0xLU1RBVEUgd291bGQgdGhlbiByZXR1cm4gc29tZSBzdWJzZXQgb2YgdGhvc2UgcGlucywN
Cj4gPj4gZGVwZW5kaW5nDQo+ID4+IG9uIHdoaWNoIGxhbmVzIGFjdHVhbGx5IG1hbmFnZWQgdG8g
ZXN0YWJsaXNoIGEgY29ubmVjdGlvbiBhbmQgY2FycnkgYQ0KPiA+PiB2YWxpZCBjbG9jayBzaWdu
YWwuIFNvLCBzYXksIFsxLCAyLCAzLCA0XSBpZiB0aGUgZmlyc3QgcG9ydCBoYXMgZS5nLiBhDQo+
ID4+IDEwMEdicHMgZXN0YWJsaXNoZWQuDQo+ID4+DQo+ID4NCj4gPiBUaG9zZSAyIHdpbGwgYmUg
bWVyZ2VkIGludG8gYSBzaW5nbGUgUlRNX0dFVFJDTEtTVEFURSB0aGF0IHdpbGwgcmVwb3J0DQo+
ID4gdGhlIHN0YXRlIG9mIGFsbCBhdmFpbGFibGUgcGlucyBmb3IgYSBnaXZlbiBwb3J0Lg0KPiA+
DQo+ID4gQWxzbyBsYW5lcyBoZXJlIHNob3VsZCByZWFsbHkgYmUgcG9ydHMgLSB3aWxsIGZpeCBp
biBuZXh0IHJldmlzaW9uLg0KPiA+DQo+ID4gQnV0IHRoZSBsb2dpYyB3aWxsIGJlOg0KPiA+IENh
bGwgdGhlIFJUTV9HRVRSQ0xLU1RBVEUuIEl0IHdpbGwgcmV0dXJuIHRoZSBsaXN0IG9mIHBpbnMg
YW5kIHRoZWlyIHN0YXRlDQo+ID4gZm9yIGEgZ2l2ZW4gcG9ydC4gT25jZSB5b3UgcmVhZCB0aGUg
cmFuZ2UgeW91IHdpbGwgc2VuZCB0aGUNCj4gUlRNX1NFVFJDTEtTVEFURQ0KPiA+IHRvIGVuYWJs
ZSB0aGUgcmVkaXJlY3Rpb24gdG8gYSBnaXZlbiBSQ0xLIG91dHB1dCBmcm9tIHRoZSBQSFkuIElm
IHlvdXINCj4gRFBMTC9FRUMNCj4gPiBpcyBjb25maWd1cmVkIHRvIGFjY2VwdCBpdCBhdXRvbWF0
aWNhbGx5IC0gaXQncyBhbGwgeW91IG5lZWQgdG8gZG8gYW5kIHlvdSBuZWVkDQo+IHRvDQo+ID4g
d2FpdCBmb3IgdGhlIHJpZ2h0IHN0YXRlIG9mIHRoZSBFRUMgKGxvY2tlZC9sb2NrZWQgd2l0aCBI
TykuDQo+IA0KPiBIYSwgb2ssIHNvIHRoZSBSQU5HRSBjYWxsIGdvZXMgYXdheSwgaXQncyBhbGwg
aW4gdGhlIFJUTV9HRVRSQ0xLU1RBVEUuDQoNClRoZSBmdW5jdGlvbmFsaXR5IG5lZWRzIHRvIGJl
IHRoZXJlLCBidXQgdGhlIG1lc3NhZ2Ugd2lsbCBiZSBnb25lLg0KIA0KPiA+PiA+ICsNCj4gPj4g
PiArUlRNX1NFVFJDTEtTVEFURQ0KPiA+PiA+ICstLS0tLS0tLS0tLS0tLS0tLQ0KPiA+PiA+ICtT
ZXRzIHRoZSByZWRpcmVjdGlvbiBvZiB0aGUgcmVjb3ZlcmVkIGNsb2NrIGZvciBhIGdpdmVuIHBp
bi4gVGhpcw0KPiBtZXNzYWdlDQo+ID4+ID4gK2V4cGVjdHMgb25lIGF0dHJpYnV0ZToNCj4gPj4g
PiArc3RydWN0IGlmX3NldF9yY2xrX21zZyB7DQo+ID4+ID4gKwlfX3UzMiBpZmluZGV4OyAvKiBp
bnRlcmZhY2UgaW5kZXggKi8NCj4gPj4gPiArCV9fdTMyIG91dF9pZHg7IC8qIG91dHB1dCBpbmRl
eCAoZnJvbSBhIHZhbGlkIHJhbmdlKQ0KPiA+PiA+ICsJX191MzIgZmxhZ3M7IC8qIGNvbmZpZ3Vy
YXRpb24gZmxhZ3MgKi8NCj4gPj4gPiArfTsNCj4gPj4gPiArDQo+ID4+ID4gK1N1cHBvcnRlZCBm
bGFncyBhcmU6DQo+ID4+ID4gK1NFVF9SQ0xLX0ZMQUdTX0VOQSAtIGlmIHNldCBpbiBmbGFncyAt
IHRoZSBnaXZlbiBvdXRwdXQgd2lsbCBiZQ0KPiBlbmFibGVkLA0KPiA+PiA+ICsJCSAgICAgaWYg
Y2xlYXIgLSB0aGUgb3V0cHV0IHdpbGwgYmUgZGlzYWJsZWQuDQo+ID4+DQo+ID4+IE9LLCBzbyBo
ZXJlIEkgc2V0IHVwIHRoZSB0cmFja2luZy4gaWZpbmRleCB0ZWxscyBtZSB3aGljaCBFRUMgdG8N
Cj4gPj4gY29uZmlndXJlLCBvdXRfaWR4IGlzIHRoZSBwaW4gdG8gdHJhY2ssIGZsYWdzIHRlbGwg
bWUgd2hldGhlciB0byBzZXQgdXANCj4gPj4gdGhlIHRyYWNraW5nIG9yIHRlYXIgaXQgZG93bi4g
VGh1cyBlLmcuIG9uIHBvcnQgMiwgdHJhY2sgcGluIDIsIGJlY2F1c2UNCj4gPj4gSSBzb21laG93
IGtub3cgdGhhdCBsYW5lIDIgaGFzIHRoZSBiZXN0IGNsb2NrLg0KPiA+DQo+ID4gSXQncyBib3Vu
ZCB0byBpZmluZGV4IHRvIGtub3cgd2hpY2ggUEhZIHBvcnQgeW91IGludGVyYWN0IHdpdGguIEl0
IGhhcw0KPiBub3RoaW5nIHRvDQo+ID4gZG8gd2l0aCB0aGUgRUVDIHlldC4NCj4gDQo+IEl0IGhh
cyBpbiB0aGUgc2Vuc2UgdGhhdCBJJ20gY29uZmlndXJpbmcgIlRYIENMSyBpbiIsIHdoaWNoIGxl
YWRzIGZyb20NCj4gRUVDIHRvIHRoZSBwb3J0Lg0KDQpBdCB0aGlzIHN0YWdlIHdlIG9ubHkgZW5h
YmxlIHRoZSByZWNvdmVyZWQgY2xvY2suIEVFQyBtYXkgb3IgbWF5IG5vdCB1c2UgaXQNCmRlcGVu
ZGluZyBvbiBtYW55IGFkZGl0aW9uYWwgZmFjdG9ycy4NCg0KPiA+PiBJZiB0aGUgYWJvdmUgaXMg
YnJvYWRseSBjb3JyZWN0LCBJJ3ZlIGdvdCBzb21lIHF1ZXN0aW9ucy4NCj4gPj4NCj4gPj4gRmly
c3QsIHdoYXQgaWYgbW9yZSB0aGFuIG9uZSBvdXRfaWR4IGlzIHNldD8gV2hhdCBhcmUgZHJpdmVy
cyAvIEhXIG1lYW50DQo+ID4+IHRvIGRvIHdpdGggdGhpcz8gV2hhdCBpcyB0aGUgZXhwZWN0ZWQg
YmVoYXZpb3I/DQo+ID4NCj4gPiBFeHBlY3RlZCBiZWhhdmlvciBpcyBkZXBsb3ltZW50IHNwZWNp
ZmljLiBZb3UgY2FuIHVzZSBkaWZmZXJlbnQgcGh5DQo+IHJlY292ZXJlZA0KPiA+IGNsb2NrIG91
dHB1dHMgdG8gaW1wbGVtZW50IGFjdGl2ZS9wYXNzaXZlIG1vZGUgb2YgY2xvY2sgZmFpbG92ZXIu
DQo+IA0KPiBIb3c/IFdoaWNoIG9uZSBpcyBwcmltYXJ5IGFuZCB3aGljaCBvbmUgaXMgYmFja3Vw
PyBJIGp1c3QgaGF2ZSB0d28NCj4gZW5hYmxlZCBwaW5zLi4uDQoNCldpdGggdGhpcyBBUEkgeW91
IG9ubHkgaGF2ZSBwb3J0cyBhbmQgcGlucyBhbmQgc2V0IHVwIHRoZSByZWRpcmVjdGlvbi4NClRo
ZSBFRUMgcGFydCBpcyBvdXQgb2YgcGljdHVyZSBhbmQgd2lsbCBiZSBwYXJ0IG9mIERQTEwgc3Vi
c3lzdGVtLg0KDQo+IFdvdWxkbid0IGZhaWxvdmVyIGJlIGltcGxlbWVudGFibGUgaW4gYSB1c2Vy
c3BhY2UgZGFlbW9uPyBUaGF0IHdvdWxkIGdldA0KPiBhIG5vdGlmaWNhdGlvbiBmcm9tIHRoZSBz
eXN0ZW0gdGhhdCBob2xkb3ZlciB3YXMgZW50ZXJlZCwgYW5kIGNhbg0KPiByZWNvbmZpZ3VyZSB0
cmFja2luZyB0byBhbm90aGVyIHBpbiBiYXNlZCBvbiBhcmJpdHJhcnkgcnVsZXMuDQoNCk5vdCBu
ZWNlc3NhcmlseS4gWW91IGNhbiBkZXBsb3kgdGhlIFFMLWRpc2FibGVkIG1vZGUgYW5kIHJlbHkg
b24gdGhlDQpsb2NhbCBEUExMIGNvbmZpZ3VyYXRpb24gdG8gbWFuYWdlIHRoZSBzd2l0Y2hpbmcu
IEluIHRoYXQgbW9kZSB5b3UncmUNCm5vdCBwYXNzaW5nIHRoZSBxdWFsaXR5IGxldmVsIGRvd25z
dHJlYW0sIHNvIHlvdSBvbmx5IG5lZWQgdG8ga25vdyBpZiB5b3UNCmhhdmUgYSBzb3VyY2UuDQoN
Cj4gPj4gQWxzbyBHRVRSQ0xLU1RBVEUgYW5kIFNFVFJDTEtTVEFURSBoYXZlIGEgc29tZXdoYXQg
ZGlmZmVyZW50IHNjb3BlOg0KPiA+PiBvbmUNCj4gPj4gcmVwb3J0cyB3aGljaCBwaW5zIGNhcnJ5
IGEgY2xvY2sgc2lnbmFsLCB0aGUgb3RoZXIgaW5mbHVlbmNlcyB0cmFja2luZy4NCj4gPj4gVGhh
dCBzZWVtcyB3cm9uZy4gVGhlcmUgYWxzbyBkb2VzIG5vdCBzZWVtcyB0byBiZSBhbiBVQVBJIHRv
IHJldHJpZXZlDQo+ID4+IHRoZSB0cmFja2luZyBzZXR0aW5ncy4NCj4gPg0KPiA+IFRoZXkgZG9u
J3QuIEdldCByZWFkcyB0aGUgcmVkaXJlY3Rpb24gc3RhdGUgYW5kIFNFVCBzZXRzIGl0IC0gbm90
aGluZyBtb3JlLA0KPiA+IG5vdGhpbmcgbGVzcy4gSW4gSUNFIHdlIHVzZSBFRUMgcGluIGluZGV4
ZXMgc28gdGhhdCB0aGUgbW9kZWwgdHJhbnNsYXRlcw0KPiBlYXNpZXINCj4gPiB0byB0aGUgb25l
IHdoZW4gd2Ugc3VwcG9ydCBEUExMIHN1YnN5c3RlbS4NCj4gPg0KPiA+PiBTZWNvbmQsIGFzIGEg
dXNlci1zcGFjZSBjbGllbnQsIGhvdyBkbyBJIGtub3cgdGhhdCBpZiBwb3J0cyAxIGFuZCAyIGJv
dGgNCj4gPj4gcmVwb3J0IHBpbiByYW5nZSBbQTsgQl0sIHRoYXQgdGhleSBib3RoIGFjdHVhbGx5
IHNoYXJlIHRoZSBzYW1lDQo+ID4+IHVuZGVybHlpbmcgRUVDPyBJcyB0aGVyZSBzb21lIHNvcnQg
b2YgY29vcmRpbmF0aW9uIGFtb25nIHRoZSBkcml2ZXJzLA0KPiA+PiBzdWNoIHRoYXQgZWFjaCBw
aW4gaW4gdGhlIHN5c3RlbSBoYXMgYSB1bmlxdWUgSUQ/DQo+ID4NCj4gPiBGb3Igbm93IHdlIGRv
bid0LCBhcyB3ZSBkb24ndCBoYXZlIEVFQyBzdWJzeXN0ZW0uIEJ1dCB0aGF0IGNhbiBiZSBzb2x2
ZWQNCj4gPiBieSBhIGNvbmZpZyBmaWxlIHRlbXBvcmFyaWx5Lg0KPiANCj4gSSB0aGluayBpdCB3
b3VsZCBiZSBiZXR0ZXIgdG8gbW9kZWwgdGhpcyBwcm9wZXJseSBmcm9tIGRheSBvbmUuDQoNCkkg
d2FudCB0byBwcm9wb3NlIHRoZSBzaW1wbGVzdCBBUEkgdGhhdCB3aWxsIHdvcmsgZm9yIHRoZSBz
aW1wbGVzdCBkZXZpY2UsDQpmb2xsb3cgdGhhdCB3aXRoIHRoZSB1c2Vyc3BhY2UgdG9vbCB0aGF0
IHdpbGwgaGVscCBldmVyeW9uZSB1bmRlcnN0YW5kDQp3aGF0IHdlIG5lZWQgaW4gdGhlIERQTEwg
c3Vic3lzdGVtLCBvdGhlcndpc2UgaXQnbGwgYmUgaGFyZCB0byBleHBsYWluIHRoZQ0KcmVxdWly
ZW1lbnRzLiBUaGUgb25seSBjaGFuZ2Ugd2lsbCBiZSB0aGUgYWRkaXRpb24gb2YgdGhlIERQTEwg
aW5kZXguDQogDQo+ID4+IEZ1cnRoZXIsIGhvdyBkbyBJIGFjdHVhbGx5IGtub3cgdGhlIG1hcHBp
bmcgZnJvbSBwb3J0cyB0byBwaW5zPyBFLmcuIGFzDQo+ID4+IGEgdXNlciwgSSBtaWdodCBrbm93
IG15IG1hc3RlciBpcyBiZWhpbmQgc3dwMS4gSG93IGRvIEkga25vdyB3aGF0IHBpbnMNCj4gPj4g
Y29ycmVzcG9uZCB0byB0aGF0IHBvcnQ/IEFzIGEgdXNlci1zcGFjZSB0b29sIGF1dGhvciwgaG93
IGRvIEkgaGVscA0KPiA+PiB1c2VycyB0byBkbyBzb21ldGhpbmcgbGlrZSAiZWVjIHNldCBjbG9j
ayBlZWMwIHRyYWNrIHN3cDEiPw0KPiA+DQo+ID4gVGhhdCdzIHdoeSBkcml2ZXIgbmVlZHMgdG8g
YmUgc21hcnQgdGhlcmUgYW5kIHJldHVybiBpbmRleGVzIHByb3Blcmx5Lg0KPiANCj4gV2hhdCBk
byB5b3UgbWVhbiwgcHJvcGVybHk/IFVwIHRoZXJlIHlvdSBoYXZlIFJUTV9HRVRSQ0xLUkFOR0Ug
dGhhdA0KPiBqdXN0DQo+IGdpdmVzIG1lIGEgbWluIGFuZCBhIG1heC4gSXMgdGhlcmUgYSBwb2xp
Y3kgYWJvdXQgaG93IHRvIGNvcnJlbGF0ZQ0KPiBudW1iZXJzIGluIHRoYXQgcmFuZ2UgdG8uLi4g
aWZpbmRpY2VzLCBuZXRkZXZpY2UgbmFtZXMsIGRldmxpbmsgcG9ydA0KPiBudW1iZXJzLCBJIGRv
bid0IGtub3csIHNvbWV0aGluZz8NCg0KVGhlIGRyaXZlciBuZWVkcyB0byBrbm93IHRoZSB1bmRl
cmx5aW5nIEhXIGFuZCByZXBvcnQgdGhvc2UgcmFuZ2VzDQpjb3JyZWN0bHkuDQoNCj4gSG93IGRv
IHNldmVyYWwgZHJpdmVycyBjb29yZGluYXRlIHRoaXMgbnVtYmVyaW5nIGFtb25nIHRoZW1zZWx2
ZXM/IElzDQo+IHRoZXJlIGEgY29yZSBrZXJuZWwgYXV0aG9yaXR5IHRoYXQgbWFuYWdlcyBwaW4g
bnVtYmVyIGRlL2FsbG9jYXRpb25zPw0KDQpJIGJlbGlldmUgdGhlIGdvYWwgaXMgdG8gY3JlYXRl
IHNvbWV0aGluZyBzaW1pbGFyIHRvIHRoZSBwdHAgc3Vic3lzdGVtLg0KVGhlIGRyaXZlciB3aWxs
IG5lZWQgdG8gY29uZmlndXJlIHRoZSByZWxhdGlvbnNoaXAgZHVyaW5nIGluaXRpYWxpemF0aW9u
IGFuZCB0aGUNCk9TIHdpbGwgbWFuYWdlIHRoZSBpbmRleGVzLg0KIA0KPiA+PiBBZGRpdGlvbmFs
bHksIGhvdyB3b3VsZCB0aGluZ3MgbGlrZSBleHRlcm5hbCBHUFNzIG9yIDFwcHMgYmUgbW9kZWxl
ZD8gSQ0KPiA+PiBndWVzcyB0aGUgZHJpdmVyIHdvdWxkIGtub3cgYWJvdXQgc3VjaCBpbnRlcmZh
Y2UsIGFuZCB3b3VsZCBleHBvc2UgaXQgYXMNCj4gPj4gYSAicGluIi4gV2hlbiB0aGUgR1BTIHNp
Z25hbCBsb2NrcywgdGhlIGRyaXZlciBzdGFydHMgcmVwb3J0aW5nIHRoZSBwaW4NCj4gPj4gaW4g
dGhlIFJDTEsgc2V0LiBUaGVuIGl0IGlzIHBvc3NpYmxlIHRvIHNldCB1cCB0cmFja2luZyBvZiB0
aGF0IHBpbi4NCj4gPg0KPiA+IFRoYXQgd29uJ3QgYmUgZW5hYmxlZCBiZWZvcmUgd2UgZ2V0IHRo
ZSBEUExMIHN1YnN5c3RlbSByZWFkeS4NCj4gDQo+IEl0IG1pZ2h0IHByb3ZlIGNoYWxsZW5naW5n
IHRvIHJldHJvZml0IGFuIGV4aXN0aW5nIG5ldGRldi1jZW50cmljDQo+IGludGVyZmFjZSBpbnRv
IGEgbW9yZSBnZW5lcmljIG1vZGVsLiBJdCB3b3VsZCBiZSBiZXR0ZXIgdG8gbW9kZWwgdGhpcw0K
PiBwcm9wZXJseSBmcm9tIGRheSBvbmUsIGFuZCBPSywgaWYgd2UgY2FuIGNhcnZlIG91dCBhIHN1
YnNldCBvZiB0aGF0DQo+IG1vZGVsIHRvIGltcGxlbWVudCBub3csIGFuZCBsZWF2ZSB0aGUgcmVz
dCBmb3IgbGF0ZXIsIGZpbmUuIEJ1dCB0aGUNCj4gY3VycmVudCBtb2RlbCBkb2VzIG5vdCBzdHJp
a2UgbWUgYXMgaGF2aW5nIGEgbmF0dXJhbCBtaWdyYXRpb24gcGF0aCB0bw0KPiBzb21ldGhpbmcg
bW9yZSBnZW5lcmljLiBFLmcuIHJlcG9ydGluZyB0aGUgRUVDIHN0YXRlIHRocm91Z2ggdGhlDQo+
IGludGVyZmFjZXMgYXR0YWNoZWQgdG8gdGhhdCBFRUMuLi4gbGlrZSwgdGhhdCB3aWxsIGhhdmUg
dG8gc3RheSwgZXZlbiBhdA0KPiBhIHRpbWUgd2hlbiBpdCBpcyBzdXBlcnNlZGVkIGJ5IGEgYmV0
dGVyIGludGVyZmFjZS4NCg0KVGhlIHJlY292ZXJlZCBjbG9jayBBUEkgd2lsbCBub3QgY2hhbmdl
IC0gb25seSBFRUNfU1RBVEUgaXMgaW4gcXVlc3Rpb24uDQpXZSBjYW4gZWl0aGVyIHJlZGlyZWN0
IHRoZSBjYWxsIHRvIHRoZSBEUExMIHN1YnN5c3RlbSwgb3IganVzdCBhZGQgdGhlIERQTEwgSURY
DQpJbnRvIHRoYXQgY2FsbCBhbmQgcmV0dXJuIGl0LiANCg0KPiA+PiBJdCBzZWVtcyB0byBtZSBp
dCB3b3VsZCBiZSBlYXNpZXIgdG8gdW5kZXJzdGFuZCwgYW5kIHRvIHdyaXRlIHVzZXItc3BhY2UN
Cj4gPj4gdG9vbHMgYW5kIGRyaXZlcnMgZm9yLCBhIG1vZGVsIHRoYXQgaGFzIEVFQyBhcyBhbiBl
eHBsaWNpdCBmaXJzdC1jbGFzcw0KPiA+PiBvYmplY3QuIFRoYXQncyB3aGVyZSB0aGUgRUVDIHN0
YXRlIG5hdHVyYWxseSBiZWxvbmdzLCB0aGF0J3Mgd2hlcmUgdGhlDQo+ID4+IHBpbiByYW5nZSBu
YXR1cmFsbHkgYmVsb25ncy4gTmV0ZGV2cyBzaG91bGQgaGF2ZSBhIHJlZmVyZW5jZSB0byBFRUMg
YW5kDQo+ID4+IHBpbnMsIG5vdCBwcmVzZW50IHRoaXMgaW5mb3JtYXRpb24gYXMgaWYgdGhleSBv
d24gaXQuIEEgZmlyc3QtY2xhc3MgRUVDDQo+ID4+IHdvdWxkIGFsc28gYWxsb3cgdG8gbGF0ZXIg
ZmlndXJlIG91dCBob3cgdG8gaG9vayB1cCBQSEMgYW5kIEVFQy4NCj4gPg0KPiA+IFdlIGhhdmUg
dGhlIHVzZXJzcGFjZSB0b29sLCBidXQgY2Fu4oCZdCB1cHN0cmVhbSBpdCB1bnRpbCB3ZSBkZWZp
bmUNCj4gPiBrZXJuZWwgSW50ZXJmYWNlcy4gSXQncyBwYXJhZ3JhcGggMjIgOigNCj4gDQo+IEkn
bSBzdXJlIHlvdSBkbywgcHJlc3VtYWJseSB5b3UgdGVzdCB0aGlzIHNvbWVob3cuIFN0aWxsLCBh
cyBhIHBvdGVudGlhbA0KPiBjb25zdW1lciBvZiB0aGF0IGludGVyZmFjZSwgSSB3aWxsIGFic29s
dXRlbHkgcG9rZSBhdCBpdCB0byBmaWd1cmUgb3V0DQo+IGhvdyB0byB1c2UgaXQsIHdoYXQgaXQg
bGV0cyBtZSB0byBkbywgYW5kIHdoYXQgd29uJ3Qgd29yay4NCg0KVGhhdCdzIHdoeSBub3cgSSB3
YW50IHRvIGVuYWJsZSB2ZXJ5IGJhc2ljIGZ1bmN0aW9uYWxpdHkgdGhhdCB3aWxsIG5vdCBnbyBh
d2F5DQphbnl0aW1lIHNvb24uIE1hcHBpbmcgYmV0d2VlbiBwb3J0IGFuZCByZWNvdmVyZWQgY2xv
Y2sgKGFzIGluDQp0YWtlIG15IGNsb2NrIGFuZCBvdXRwdXQgb24gdGhlIGZpcnN0IFBIWSdzIHJl
Y292ZXJlZCBjbG9jayBvdXRwdXQpDQphbmQgY2hlY2tpbmcgdGhlIHN0YXRlIG9mIHRoZSBjbG9j
ay4NCg0KPiBCVFcsIHdoYXQgd2UndmUgZG9uZSBpbiB0aGUgcGFzdCBpbiBhIHNpdHVhdGlvbiBs
aWtlIHRoaXMgd2FzLCBoZXJlJ3MNCj4gdGhlIGN1cnJlbnQgc3VibWlzc2lvbiwgaGVyZSdzIGEg
cG9pbnRlciB0byBhIEdJVCB3aXRoIG1vcmUgc3R1ZmYgd2UNCj4gcGxhbiB0byBzZW5kIGxhdGVy
IG9uLCBoZXJlJ3MgYSBwb2ludGVyIHRvIGEgR0lUIHdpdGggdGhlIHVzZXJzcGFjZQ0KPiBzdHVm
Zi4gSSBkb3VidCBhbnlib2R5IGFjdHVhbGx5IGxvb2tzIGF0IHRoYXQgY29kZSwgYWluJ3Qgbm9i
b2R5IGdvdA0KPiB0aW1lIGZvciB0aGF0LCBidXQgcmVhbGx5IHRoZXJlJ3Mgbm8gY2F0Y2ggMjIu
DQoNClVuZm9ydHVuYXRlbHksIHRoZSB1c2Vyc3BhY2Ugb2YgaXQgd2lsbCBiZSBhIHBhcnQgb2Yg
bGludXhwdHAgYW5kIHdlIGNhbid0DQp1cHN0cmVhbSBpdCBwYXJ0aWFsbHkgYmVmb3JlIHdlIGdl
dCB0aG9zZSBiYXNpY3MgZGVmaW5lZCBoZXJlLiBNb3JlIA0KYWR2YW5jZWQgZnVuY3Rpb25hbGl0
eSB3aWxsIGJlIGdyb3duIG9yZ2FuaWNhbGx5LCBhcyBJIGFsc28gaGF2ZSBhIGxpbWl0ZWQNCnZp
ZXcgb2YgU3luY0UgYW5kIGFtIG5vdCBleHBlcnQgb24gc3dpdGNoZXMuIA0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
