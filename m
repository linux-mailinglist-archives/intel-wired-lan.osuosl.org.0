Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3F930C6A7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Feb 2021 17:55:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B3BEC86793;
	Tue,  2 Feb 2021 16:55:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qCfm-QLIgkal; Tue,  2 Feb 2021 16:55:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0AB7A8678E;
	Tue,  2 Feb 2021 16:55:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 657131BF35F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 16:55:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 58687203CA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 16:55:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nkYLZP52w8OY for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Feb 2021 16:55:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 78B1C2037A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 16:55:18 +0000 (UTC)
IronPort-SDR: wSM5giqeBb19++PZrGGVz58Wcw8jbkV1WdCM3OCGdwkSd0cKf9bfE80okkzRYjubzvxHCctHkd
 +66vA6NoztuA==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="242401776"
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; d="scan'208";a="242401776"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 08:55:15 -0800
IronPort-SDR: 1WRQjJ8ui+QNMni7ew5HgFIHk0tbftrgIifDzDyYIjWuuYrIQZFzDWRsJoes1Toltfb76cyEg/
 byDww00+NOJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; d="scan'208";a="370785152"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 02 Feb 2021 08:55:13 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 2 Feb 2021 08:55:12 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 2 Feb 2021 08:55:12 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 2 Feb 2021 08:55:12 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 2 Feb 2021 08:55:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FpMpHq0EoeWqBIxPNCDhDtxMqnt8ZLjTHOgqU9ddEf73+NQHNoliQlTBLE8spfr6+lkrmbQdMmLVLHNZ6/m3g5JsyXcnda3RhkNLo6AywW0CKDXdNRfPEAsrTLtm5lLvLAqkMiiU3Gl35yOBZF7307pzSjkVilji6X4DLTZEoypYcBa2+16+SDTrBxrE1xuhLUfN6jt4foE0gwyYWj0xxBXfZfIXZeRMudHTAzaDp4JxzYxBKT9J1LoDMwFK26cxR63g7Epxh5+WuvY5Or1HA2oKMecMPQJv1AG9dvDyo2Rs/aeGuSLOAPD4wqeoMMmfRwilcnvB3pzoKH4PKnioUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hEWF6BjEUVypQqVdsSf3W4pxmdm2V6qVw6z/v/+tg6k=;
 b=eGO2a8nHxodlnDIMQsgRWJf5CzksHj/6XLVk8pIrdeXGxVaumwv1KSDo75m0/+J4qy8tkc9NLnK6Noeu3nZEJHjkbYDD+JbBHnsJ3iNlcjpeFrbCRh+CDsLclLkZpUFNDaomm4+rDWaD8uF5l84txk/mhjkt5qrbnLU+WXrTnfV2Tx1A0dHwI1iEy82k2B/u/RN0AdtPh76ia/KhHVqBoHJtVfjGay5nDKN8Eq11Phx68S9NQscDSjERsdVI9hGuI9ZoLToKu2AYypwGb5K67/m0UjxemftTEmJg97iDSfCIsqnpeekwWZ+jF1HCNIj/tV11hKF0DTrXhByYAGdSBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hEWF6BjEUVypQqVdsSf3W4pxmdm2V6qVw6z/v/+tg6k=;
 b=T4JCMua7V8EefdH8nBtzO4X1nDplGX5RYmL0uxE0pnm7IHHoWsohGeJiXNEX5KmaigZrsnVYiz1aFJD8mtFm+29GO7ITQvuyPISXtR3GzHNoWdryEQRt1fhdq8IUD7vPJACdxxuWy5cdATu0MSF455dESxllQ2dpGCkc5zFcgMk=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2767.namprd11.prod.outlook.com (2603:10b6:805:5a::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.17; Tue, 2 Feb
 2021 16:55:10 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cccb:4e77:41e3:d02a]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cccb:4e77:41e3:d02a%5]) with mapi id 15.20.3805.027; Tue, 2 Feb 2021
 16:55:10 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "p.cheynier@criteo.com" <p.cheynier@criteo.com>, "kuba@kernel.org"
 <kuba@kernel.org>
Thread-Topic: [5.10] i40e/udp_tunnel: RTNL: assertion failed at
 net/ipv4/udp_tunnel_nic.c
Thread-Index: AQHW9mMY04hDD4/GNkeljus5vphnq6o/gv8AgAUiwUSAAG7wgIAABt2A
Date: Tue, 2 Feb 2021 16:55:10 +0000
Message-ID: <cb0550a3b50269b1eee4b93689792dcb0bb66a19.camel@intel.com>
References: <DB8PR04MB6460F61AE67E17CC9189D067EAB99@DB8PR04MB6460.eurprd04.prod.outlook.com>
 <20210129192750.7b2d8b25@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <DB8PR04MB6460DD3585CE95CB77A2B650EAB59@DB8PR04MB6460.eurprd04.prod.outlook.com>
 <20210202083035.3d54f97c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210202083035.3d54f97c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: criteo.com; dkim=none (message not signed)
 header.d=none;criteo.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9d16e180-484f-4a01-d46c-08d8c79b4d8f
x-ms-traffictypediagnostic: SN6PR11MB2767:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB27675023694D58E24039AA3BC6B59@SN6PR11MB2767.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OzvC3oaEew5lZcplKuW3/9zP7YIskyRe3/HCHDpWlBkZkUDj6OaP22uSfnpfOWrlfCCo2b4tZccFxYO2Fh2JxR5/0p/GU5gP3nIM6Z6M3XUPiYlhZgBlilIS4dfHunhbs7GRtTr9y/SS5Y5hvJuqLf0xxKMiGHq6T1pfrgUlTunH15LTCWeoSoQ12qkc6ilcrdMMDcciangpJxSrDYrd99HMJNmJkGk0Ie/iefQ7bMqW8FBo1XxMm0UhsnPEnHml0KcCcE5k2ZduVfntD2wn6E3bbiTXBtmR4AIYsfhApxeXVgR8jrL7hlC3BK+z18Z93JlILi14N47/g6RzKyol+AcgZCnQNbR+UfRgluLjmpPv4DN5tTXkXKIMHaj8yU/0pD4fPMUgDmnin3zGRM/Gevf1pnQXY7YgvdgDMPTqtsab0Fm8AyeNJCb/T+AhosgzNzOERb0A4xQXfiw8SNNKQB1vySVvT8ye93QAuiAS72zcEBmG1nh1AV1XvzaqqR5a6z8aBtO21gda4C+qH/0hXlE7SgoLLt4E1uBCZiLNl8fLTQe8pzp0nA18NI4x99vB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(346002)(39860400002)(376002)(396003)(71200400001)(6506007)(6486002)(4744005)(8676002)(54906003)(107886003)(4326008)(110136005)(186003)(316002)(26005)(8936002)(91956017)(2616005)(66446008)(66476007)(66556008)(64756008)(76116006)(66946007)(86362001)(2906002)(478600001)(5660300002)(6512007)(36756003)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?YXpHdnBvQjY1RjNGSWliL2VKRkRFZlVhTFlSdGc4VGs4V0k1WjFwUFRUaHRo?=
 =?utf-8?B?UHF4cSs5TU1zbU1mUGN1YVpvSGpZQytjTEY3QzMzMDIwWEhtaUFLRVRXc0o2?=
 =?utf-8?B?azQ3QXFtODl2U1NIMFBkdk9zb3VkUmFiN3FyQnltWXJESXpQQzZ3eVpLRTNs?=
 =?utf-8?B?THBPazNYcDY3by9WcTVsb0VRekVXeHRIdFowUkhWSlFJVUsyVmtDaTIxaGxj?=
 =?utf-8?B?bnk0WFYzNzBWVnRlUi9IM3U1U3daMDI5MW1vSDg4Y2xFbGlhckJmZHRySzIy?=
 =?utf-8?B?SUhyRWx3MkpRaE9pWGo0U1FBR0UzRnlMYlpWdHZiV1QyRGgxN0NKRG5BZXpM?=
 =?utf-8?B?TjdMMDM3Qi81WHc4WjJySGZzQzJva3NkYTdFUjlFUEU1M3o4UWtOYnJDUzlh?=
 =?utf-8?B?cThOUEdLbU5DSFYyUVdtNHlTa0tpaUFDZ1dwWnRycnkxdUFhUS9kSW1sOU9h?=
 =?utf-8?B?S0dmbDFWUkZwSzVtVjJudGlzMmt0Q3M3ZjhzekM3NC9wV1pTWWhtOVFUcGxI?=
 =?utf-8?B?d1Y5N0Y2MUdwK09ma1cwY1lqSmZ4SUcvR3JZVUw5NWxWRUczNEQxQUh2ZEtj?=
 =?utf-8?B?Qkk3Q2xWZDF2NGY5Z3BYMEEwK21DQktlV0o5R3NRNmN4MTMwNVJrdDRFNCtQ?=
 =?utf-8?B?Uk9XSmxpcDJTUnNDNXV3VHBrZkF6UmZBMEQwQWM2SStTaU1FMGNwR1A1WnJj?=
 =?utf-8?B?V2o0T2J1eUk3bnBCM1gwckhLK2pzY2x6Wnp2anRqdW5yREx6MU9xSzk4RENU?=
 =?utf-8?B?bzBpcG44dW1zbk95TVFrYm0reXZZT0x4ZXhYY3c1Y1ZpZllya2NMbWZzOFpO?=
 =?utf-8?B?QzFQN3M4SXlkdGU3bGFVMDUzc1RWQXcycGcrZjFNL3JvOUtUYnFGcGp3TE1r?=
 =?utf-8?B?bUw0QXkydUFiWHhWOGdwRzNUM2w0dnRwYjByeitCWlFxOUQ1NUF4MkhIeDZx?=
 =?utf-8?B?TTl6aUQwTXlHYTFOZnpTa0w4TVJvNFFHdzFMWDQ0OG1OQ1BaV1ZFMWM4azg3?=
 =?utf-8?B?UjNYZ2pDb0orOEdDemxKbnF5V2I1ZXVIR1NhMjV3MWI3bnRvTFIyRXdQMm10?=
 =?utf-8?B?QlNJZU0vNHZhQncwS2w1TlpxamN2VGpoaDROWnFkdjVVcU5BelZya25iNFVB?=
 =?utf-8?B?dk0weEZIQ3FLTzl2eGlyMlp5VTJJWEZXeGlueXV6YnRNcTh1Sm55V21jVHNJ?=
 =?utf-8?B?cWdOM05YeTk4ZjNCMnV4NCtLZFNIZjVlK2IwKzJxQjJpVkd4ajh0TzhkQlFC?=
 =?utf-8?B?Ry9uKzdRWFcrd2JrWmNaZHlETUk5K2pvc1E5UHZoVnVqMmUwbW9BRzB1UHoz?=
 =?utf-8?B?Rm1Udmp1QW45Wk5mTGVnWWlDSXB5ckNsdlYzVE5PUzJLMktxZ01tRkJQU0pw?=
 =?utf-8?B?OHlTV2VhRzlVYkJjUUhXbHR6ZjRJOU91WHNFMmowSHNKdTJFQ1NqKzArT21Q?=
 =?utf-8?B?SzFOSVRUZWJQVkVqOXVFSnFuU0ZUbnBXS0RPd1NRPT0=?=
Content-ID: <B481CC4CEDAF194DA0D49E177612C8EF@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d16e180-484f-4a01-d46c-08d8c79b4d8f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2021 16:55:10.6446 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F7NHn7uoC+ARnKl0jvQmUeNMV3wZBTM5gwDocr5dzrvr24TRQlxX4ON2Nsk6O8eytcYgj3S1+ASE3ImxFuml7PLIdgCDNfgRerug/Ej73Cw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2767
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [5.10] i40e/udp_tunnel: RTNL: assertion
 failed at net/ipv4/udp_tunnel_nic.c
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2021-02-02 at 08:30 -0800, Jakub Kicinski wrote:
> On Tue, 2 Feb 2021 09:59:56 +0000 Pierre Cheynier wrote:
> > On Sat, 30 Jan 2021 04:27:00 +0100 Jakub Kicinski wrote:
> > 
> > > I must have missed that i40e_setup_pf_switch() is called from the
> > > probe
> > > path.  
> > 
> > Do you want me to apply these patches, rebuild and tell you what's
> > the
> > outcome?
> 
> I was hoping someone from Intel would step in and help.

I inquired with the i40e team about these proposed fixes. Adding a
couple of developers directly.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
