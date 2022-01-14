Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4538848F2D3
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Jan 2022 00:07:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 326BE401D5;
	Fri, 14 Jan 2022 23:07:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7yu_aBt-5fCz; Fri, 14 Jan 2022 23:07:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C8018401E1;
	Fri, 14 Jan 2022 23:07:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D7B5A1BF42E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 23:07:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C4DB4832E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 23:07:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vRsaq87KJzFD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jan 2022 23:07:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 18D1D83264
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 23:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642201646; x=1673737646;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=3RSgfkZ68vEa6rVpR6dGiGbPcaZEjdH7pVDyaGQFkGc=;
 b=UE4ojevMPdvI14gxPtfTYN7jqedYzcmqzhVJw5vZe4sWvUtSTvwdul+m
 TSuvwCvilQoI5v+V7b8nnbQmcQA7xeiGSHcDALVDqjrIay0kp4jp3w89s
 a36v1P+NW5TcNpKlpl99uD3kZHrxD+uR9wRPb+ReWBLq5Vyn0QwInr1QQ
 eCBReE9kL1GxoE4WoLIHOdoLBI1Z5dcSq7o/rlFBGyNQBJP4mveqsay7n
 Dk0xGs41sWx7iLrIZgIuTTOfAwZ9+wi7xaTRt8q4bLNvqVWSqnFfDzPg/
 PDrJgTD07I0JDoaUnm4dZ5uVAU+K1C2UetxFAwBwLQFMM8jXvgnrnu2I5 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10227"; a="330693961"
X-IronPort-AV: E=Sophos;i="5.88,290,1635231600"; d="scan'208";a="330693961"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 15:07:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,290,1635231600"; d="scan'208";a="475939866"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga006.jf.intel.com with ESMTP; 14 Jan 2022 15:07:25 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 14 Jan 2022 15:07:24 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 14 Jan 2022 15:07:24 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 14 Jan 2022 15:07:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kbqSrCst51j3A0kacs8R1ad8wb8Y6ayniCsy2XslS5vEWmEXn3bcvTJ54OvXTOEttTLNc4P0mJO19JkWL/yv01vFRoTiKleGcX7SyrCkNO51lr7xwmpnorj+M552B50RoaF7wZsIa66BNi1op7HRWOMuH+lrfCBnJDCE35GRP7KnZxChTSTa+yvP0IeLSNF8L8x64np/xAQW9zi5ImxwnizGES/QtFSu5KDblnZVCs8AqY1NJMw/WVB7aodam9eFF/FKRPQ0gMjyufvukLGmu4FD5b+sLKY2oz/izTATm141BipuxO/ORWQpjxJyLGGUo+69xsyDO4fPQAWV9DU6Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3RSgfkZ68vEa6rVpR6dGiGbPcaZEjdH7pVDyaGQFkGc=;
 b=ZVnkNw8HUQiZ0/6ZrvW4M5mr2BtMSv+FKZ9O6vGZXq1u+nXtnIb7kbE75AmkynQISKdmBvs6UlH6c9bTp6pCASGZa/mR3rIwEM2wZOjf9hi4mU2jR91ugf0NR8TL8a2/dycDanWAesSDEwLuoI+ZJKkxO6bI3UUtM2X4nlps50x6QiFrlBW+9AXjPHCcDJeR9O6D5XDJV6lmSVJ/uGfcKJz1nrHGwR2wnTqizfDIyyU8KoDG95bBrTjQK/ZGoXH2F/kM4A0SAcxW1cWVpcVfVTOoQUEs1+Z8uPtONx9dxEG/M8Qo/vybN28CwmAOrGD7KqtKdpv47YwAofdaCLraxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3119.namprd11.prod.outlook.com (2603:10b6:805:cc::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.12; Fri, 14 Jan
 2022 23:07:20 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bded:8c4b:271e:7c1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bded:8c4b:271e:7c1%5]) with mapi id 15.20.4867.012; Fri, 14 Jan 2022
 23:07:20 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Maloszewski, Michal" <michal.maloszewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix handling of vlan
 strip virtual channel messages
Thread-Index: AQHYCIRTyJyHq/OHFEaT6Pg4fgYkKqxjJc4A
Date: Fri, 14 Jan 2022 23:07:19 +0000
Message-ID: <167bf4831ac49d4534866c699bb68bbb9f68747f.camel@intel.com>
References: <20220113134828.25230-1-michal.maloszewski@intel.com>
In-Reply-To: <20220113134828.25230-1-michal.maloszewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0a0f0414-fe7d-4329-8169-08d9d7b29dc8
x-ms-traffictypediagnostic: SN6PR11MB3119:EE_
x-microsoft-antispam-prvs: <SN6PR11MB3119C9AB28882E1DF387303EC6549@SN6PR11MB3119.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VZg9lkftdWhchMVAXviyRFTBbpRVmCpDXJUVBc0If4fgT6M1wtW+eXYyXm15SrCDK1n4WMplzb/tnc2AQG7ieYf2W3KxAN4W+M0aKboee7DgT6qrBCOtm6ss/sIRmc/CZZfQ/Ya4IuVAbd7lv8QbYb35pJEj6jSRX27S8Ju2Ney1kpVpH1W58LjyyqqoRTomZW/XQ476CQ3kLS9hBEgiYi/mBYvQpj5YcQhyBMNPf4GAmS8Cdfvrpt4s5rOEFyzodlQfw/i+BS0xjmEH4a+kXpcVJMo/qSI7r2I4G/hz7Wa+IXL5aYVA4/zsWo5VLs4pxUtnuXkPOTN4R6PWSKnI7sH6OrfxAfXLFjoPZE12VSpt/tct7zFZzEZRLdXeF2G5cKRbqEmyx19DhUHJBXSR4LD62lBGnydqeLqjklCReg22SlBi0JG+FYDRMx6RhEtA2OH36Hu0lolLan02RetbTnGTj/f4r99vGw6Nf/OELv7v1fQw57xt8ptp+VHo+oJTXDUaGfJfHwxp8YPWuW6qBQUgz7mY36vZNUPTwoxpuE1Mq48W52v9EsUYw167L2N0XnziqzZroPjBco7l4YBXmkpTiTr4lB91xH9h61Sn9eut5bY+srLdISD6yE7KFjE71RQNKcKv4KN5dCQ5VZr5sDbkWSr/Brxl64uJXRRdTw8S3S8h54pLFOS+6ob6/AkoST9jFgaRwRYUosuUtt9MIw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(110136005)(508600001)(8676002)(54906003)(122000001)(38100700002)(5660300002)(4326008)(15650500001)(2616005)(107886003)(316002)(6512007)(2906002)(26005)(36756003)(66446008)(86362001)(38070700005)(82960400001)(6506007)(66946007)(66476007)(66556008)(64756008)(6486002)(83380400001)(71200400001)(76116006)(186003)(91956017);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b1VyWnlpbVF6VWQrZUxRSFN1dWVGSlVEcnc4cWNWTmc0TGwwcytaQ3M0MExX?=
 =?utf-8?B?OE03eWdoekd4UkQ5a211aGlFcXlZYTZLYzJxb1I1NWRXMjJQUjA3eDl5SE4v?=
 =?utf-8?B?SGpINXNnbFNwTmcrL1VMQ3BnZkN6Tms1R2J0aTRBKytiWVRBSnMxSlBKME9O?=
 =?utf-8?B?dXVXSjg4WEhjbHRnRU0xeS9IdEpYSmZma0NPaWRLMXl4b2tXbTc4b2l4OHNh?=
 =?utf-8?B?R3QzQUJZVjMzTkszalU3Sm5LaXBsU0c3QWZJOEpnbGdpYzdQUGNkbHlEU1JH?=
 =?utf-8?B?aEFHeW9xR2NNZjZUbG9McHh2Y0JFMFpYbElzRnNmeDlnR2JSdTdKN1lPRmtW?=
 =?utf-8?B?YnRhaitsQTMrSUZmZHRtbCtDR0JUZE8yY01JOExHeGpsWCtTME01bDVwOE53?=
 =?utf-8?B?RkVGRW1vQ2tuVjZIMm1NZGp6VnpKaC9BY21GYlFTdVdzN3dhSEQvKzBWTldk?=
 =?utf-8?B?OHhTbzlDOEV3S212MFVyTWJCVVN6Qyt3eVBXcTI2Ukhwa3IwaFdrbmxiRVcr?=
 =?utf-8?B?eDRkK1dhS3hRME9VOEo2bjlmZ25mSUY3dDVCSUU0TVV4K1oxRWc1MEZJVUlO?=
 =?utf-8?B?dHE1S2RYbXE3c29yVjJTL3VzaVVXbFIxQ3l1RS92Rk9oY3BPVGxUaWJaTXRr?=
 =?utf-8?B?WFJsZ3VJdTI0dmJ5RkpNT2Z0Nm5qVm55SHlycEpVT1dzZy9MYmprRWc1UEc0?=
 =?utf-8?B?UjBuT2lMSU81YTVnQnZmSWREV3ZkdWhqdzlnMmp1ZmhxYkhDWDI2eU90OUdw?=
 =?utf-8?B?Z2dFQ2F1dVZ2Qy84bDZJbkJZOHdMa3QwS0lmWHFYTXFuWXc4RjBoYXdPVXp1?=
 =?utf-8?B?Y2YrUXpKUDVtdVl6dndLVEV4MmV4NkNTTUNvNjNVcVBiVUlvV0FwTU95Y1VU?=
 =?utf-8?B?M1ZPTjcxdjVwbUxOdW8zOUFRVlVpMk8yNTN6Q0lzS2JIMnNWVkZiYkpyL04z?=
 =?utf-8?B?NFZhMjhka0hubDdhTCtTSkFTZkd2bEUwUFJOejdEZ2xUbFhpdDV3WWU1Mnpw?=
 =?utf-8?B?YnE5SXJVajgrSDRMTU11TFVzN0RZckVsOE9yYTNGRm1xWU9XTm5FSjhmeENh?=
 =?utf-8?B?a04vM1RiUjhCVjdSWHUwNWFvQ29xQmtDYVVUY1JZd2ZoSmRsaGNnOHBCVmF1?=
 =?utf-8?B?MWQzQzNjeVdocmVjRGZsa3BEMlVMK09CeEt0RkJFYnN2VFFyOW1oNTJqc2Ez?=
 =?utf-8?B?S2ROYlNBOFpHMUFFVDBEMCt5MU1nU2xuVGdnd2pURWtrNHp1VjJYVGRUK3h3?=
 =?utf-8?B?dFVwZUY2WVZFVWNZVGY4UFJlTDVudFI2VTJwU3k1dUpsdE43UzJXSVNucHA3?=
 =?utf-8?B?ZzNIbUlXWURMMUJkd3gvbWtBb0NBZllmRmxqMGQ4WHp6U0wrcnk4OWx0Vlc2?=
 =?utf-8?B?SEZockFzbXd4M00xc0hhZVJsZjNEdGVrVE1vNE16OEhnR29HVU1TOGUycWdh?=
 =?utf-8?B?SXdRT2VXeXRrT3l2QW1zNUxwTHNEZngzMWFucytiTHd5SkhkanFBczFYOGVE?=
 =?utf-8?B?eVdhY3Z5R2tDUDJrRFk4QmJCOG1SeFFSRVRmNUhQVTRBUXFzTm1iV2cwRXVy?=
 =?utf-8?B?SXNKT2RJdFNDTGRKQmxMSVpJTjQ2SFJRTTV1SHJBY0RZeHd6eStIL3drNXhO?=
 =?utf-8?B?WDJ3a29NNmVOK1kxbHdWOG02Y2EwSnhQa2dMN2ptTVJYbGVlTHBBMEhIRWs2?=
 =?utf-8?B?cTI1a1Fnb0ZmRktUMVVxVG9vSThZUUxlYmtlODBCcjYxVldQR2s1VzV1UTR0?=
 =?utf-8?B?cStDTXMvRHd2Tit0aTZ6ekI2ZXNwZjRhOFY5bnFsTi8xc3AxaFV0YXBhM2tX?=
 =?utf-8?B?ZFRCTFdLQS9nNDNsQkdoRzhhV1pIdmhlMnc1cHpkUVZKQzF0bkRDWW5KZzZt?=
 =?utf-8?B?c2xmT3lRVzllcksvWW5makVNYkYyQXo1SFRnZHovdnBmRW1RLzFyTWswUFE4?=
 =?utf-8?B?ZTA0QklFZmRyRWtFSndGbEVBTkw0OTA2Q3hycDl1ZXZaeHpoSlA5bFhxejRZ?=
 =?utf-8?B?MzhDaFlRL0FBcFZybjF0eUZLZFZKMVIvY0tUcGpqSUxTSkY5L0xka3FrSFlp?=
 =?utf-8?B?RGU0S3FZenVPRGJISU9DcmxrTW1CKzJYR0lFd0pjcEovRHIvOGxhejZSWkkv?=
 =?utf-8?B?d0VZTUVBUWJDZzRaODFMT3orUXNDckpBa1ppaWlEUmJaRnJIUHlpN2tJeTdQ?=
 =?utf-8?B?cUFmR05uTERLM0RjZHBEMnZXcDVxdC9jblVGV1krMlpGaktsVmplYzZoV0tx?=
 =?utf-8?Q?qlJHj3taYO5Fm1X0sNzs9TNo6BU731vkmKdQCnPIuU=3D?=
Content-ID: <F39D81B3333BCB46B492CE1EC72BFD98@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a0f0414-fe7d-4329-8169-08d9d7b29dc8
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2022 23:07:20.0012 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YozJKx5Z1IZlKANhetXBrFhiZv1OOd16QTOSVdZPiA1hcI35/+3YpCwd+3YrrIbmxoVF6NG9wS+CWSkUxO/Pk9zUr3qh60G/ObnxMM+GBeQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3119
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix handling of vlan
 strip virtual channel messages
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
Cc: "Ciosek, NorbertX" <norbertx.ciosek@intel.com>,
 "brett.creeley@intel.com" <brett.creeley@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCAyMDIyLTAxLTEzIGF0IDEzOjQ4ICswMDAwLCBNaWNoYWwgTWFsb3N6ZXdza2kgd3Jv
dGU6DQo+IE1vZGlmeSBuZXRkZXYtPmZlYXR1cmVzIGZvciB2bGFuIHN0cmlwcGluZyBiYXNlZCBv
biB2aXJ0dWFsDQo+IGNoYW5uZWwgbWVzc2FnZXMgcmVjZWl2ZWQgZnJvbSB0aGUgUEYuIENoYW5n
ZSBpcyBuZWVkZWQNCj4gdG8gc3luY2hyb25pemUgdmxhbiBzdHJpcCBzdGF0dXMgYmV0d2VlbiBQ
RiBzeXNmcyBhbmQgaWF2ZiBldGh0b29sLg0KPiANCj4gRml4ZXM6IDMxMGEyYWQ5MmUzZiAoInZp
cnRjaG5sOiByZW5hbWUgaTQwZSB0byBnZW5lcmljIHZpcnRjaG5sIikNCg0KUGxlYXNlIHVzZSB0
aGUgY29tbWl0IHRoYXQgaW50cm9kdWNlZCB0aGUgZnVuY3Rpb25hbCBpc3N1ZSwgbm90IGENCnJl
bmFtZSBwYXRjaC4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBOb3JiZXJ0IENpb3NlayA8bm9yYmVydHgu
Y2lvc2VrQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIE1hbG9zemV3c2tpIDxt
aWNoYWwubWFsb3N6ZXdza2lAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBCcmV0dCBDcmVl
bGV5IDxicmV0dC5jcmVlbGV5QGludGVsLmNvbT4NCj4gLS0tDQo+IHYzOiBORVRJRl9GX0hXX1ZM
QU5fUlggY2hhbmdlZCBpbnRvIE5FVElGX0ZfSFdfVkxBTl9DVEFHX1JYIGJlY2F1c2UNCj4gdGhl
cmUncw0KPiBubyBzdWNoIGRlZmluaXRpb24gc2luY2UgTGludXggMy4xMC4gVGhlIGNvZGUgaXMg
dGhlIHNhbWUgYXMgdGhlIG9uZQ0KPiBmcm9tIE9PVC4NCj4gQ29kZSBzdWNjZXNzZnVsbHkgcGFz
c2VkIGlubmVyIHJldmlldy4gbmV0ZGV2X3VwZGF0ZV9mZWF0dXJlcygpDQo+IGZ1bmN0aW9uIGlz
IG5vdCBhZGRlZCANCj4gYmVjYXVzZSBpdCBjYXVzZXMgaW5maW5pdGUgbG9vcC4NCg0KVGhpcyBp
cyBhIHYxLCBidXQgdGhlcmUncyBhIHYzIGNoYW5nZWxvZz8NCg0KPiDCoC4uLi9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5sLmPCoMKgIHwgNDINCj4gKysrKysrKysrKysrKysr
KysrKw0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5sLmMNCj4g
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwuYw0KPiBpbmRl
eCBhNDBlMjk0NTVmN2QuLjE4MDVjMWFlM2JmNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5sLmMNCj4gKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5sLmMNCj4gQEAgLTE0OTAsNiArMTQ5MCwy
NCBAQCB2b2lkIGlhdmZfcmVxdWVzdF9yZXNldChzdHJ1Y3QgaWF2Zl9hZGFwdGVyDQo+ICphZGFw
dGVyKQ0KPiDCoMKgwqDCoMKgwqDCoMKgYWRhcHRlci0+Y3VycmVudF9vcCA9IFZJUlRDSE5MX09Q
X1VOS05PV047DQo+IMKgfQ0KPiDCoA0KPiArLyoqDQo+ICsgKiBpYXZmX25ldGRldl9mZWF0dXJl
c192bGFuX3N0cmlwX3NldCAtIHVwZGF0ZSB2bGFuIHN0cmlwIHN0YXR1cw0KPiArICogQG5ldGRl
djogcHRyIHRvIG5ldGRldiBiZWluZyBhZGp1c3RlZA0KPiArICogQGVuYWJsZTogZW5hYmxlIG9y
IGRpc2FibGUgdmxhbiBzdHJpcA0KPiArICoNCj4gKyAqIEhlbHBlciBmdW5jdGlvbiB0byBjaGFu
Z2UgdmxhbiBzdHJpcCBzdGF0dXMgaW4gbmV0ZGV2LT5mZWF0dXJlcy4NCj4gKyAqLw0KPiArc3Rh
dGljIHZvaWQgaWF2Zl9uZXRkZXZfZmVhdHVyZXNfdmxhbl9zdHJpcF9zZXQoc3RydWN0IG5ldF9k
ZXZpY2UNCj4gKm5ldGRldiwNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBjb25zdCBib29sIGVuYWJsZSkNCj4gK3sNCj4gK8KgwqDCoMKgwqDCoMKgaWYgKGVuYWJsZSkN
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG5ldGRldi0+ZmVhdHVyZXMgfD0NCj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBORVRJRl9GX0hX
X1ZMQU5fQ1RBR19SWCB8DQo+IE5FVElGX0ZfSFdfVkxBTl9DVEFHX1JYOw0KDQpUaGVzZSBhcmUg
dGhlIHNhbWUgZmxhZy4NCg0KPiArwqDCoMKgwqDCoMKgwqBlbHNlDQo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBuZXRkZXYtPmZlYXR1cmVzICY9DQo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfk5FVElGX0ZfSFdfVkxBTl9DVEFHX1JYICYN
Cj4gfk5FVElGX0ZfSFdfVkxBTl9DVEFHX1JYOw0KDQpTYW1lIGhlcmUuDQoNCj4gK30NCj4gKw0K
PiDCoC8qKg0KPiDCoCAqIGlhdmZfdmlydGNobmxfY29tcGxldGlvbg0KPiDCoCAqIEBhZGFwdGVy
OiBhZGFwdGVyIHN0cnVjdHVyZQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
