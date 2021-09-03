Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB684007B8
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Sep 2021 00:03:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2AC68400F4;
	Fri,  3 Sep 2021 22:03:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v0FG16PZlIc5; Fri,  3 Sep 2021 22:03:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C5AC0400D2;
	Fri,  3 Sep 2021 22:03:33 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D33321BF389
 for <intel-wired-lan@osuosl.org>; Fri,  3 Sep 2021 22:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE54B83E5F
 for <intel-wired-lan@osuosl.org>; Fri,  3 Sep 2021 22:03:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Og4-w99TVkne for <intel-wired-lan@osuosl.org>;
 Fri,  3 Sep 2021 22:03:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0EC6F83B2A
 for <intel-wired-lan@osuosl.org>; Fri,  3 Sep 2021 22:03:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10096"; a="219226346"
X-IronPort-AV: E=Sophos;i="5.85,266,1624345200"; d="scan'208";a="219226346"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 15:03:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,266,1624345200"; d="scan'208";a="578848627"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 03 Sep 2021 15:03:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 15:03:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 3 Sep 2021 15:03:25 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 3 Sep 2021 15:03:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qlkwu+E46wRb4cyjb6yfRjCitOPq7R8tidSAhzhGSfjVwMzQlosN+oKTZ2X+CK5s8Asllmjn1l47a3gvUn4w93TbQfXoF/2hEpUdkIlTVDT028nNs6vLFadeZF2S/Zn0wHNSGkwtLjV4ySo2/AruEtKG9leihSWozVHeb46OgT5iBWENjYdXCDIAnAR5FVbC3R97II4QfD4kbzyxgCYs8wJdj5YIUVKZdop39DM24WGZmKF3fe+GW5kITMvR68YEr4eYNac97q7rPI6ezLntLpoXcXGHH4hND4LRx1j/Cqx9v5AKLFfnsaCYVYtIz0uTjU8TGICy1B7L8tnH58vymA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=Q7LqVcm5UE7DMxkLEgz+GR611Qdmg2VuBV86zNIE3iQ=;
 b=c7tiGRZRohKXEoIjY31amy04rdDWPvSB+DeMhjTsWBYItFuaUoT1wjidMun7H7XnAowcDSCzjjStfRktq/FQsOQNjTpDeeCNWsds4ieOhzbSEVx3F/EP/84v3lO6/58Zs5fr86NFChjCPYVzBgQtR3L6LV23kTc7Rm4Yyd1eoYNRjvE0thDk4TsetjZ5LtpYZXkFUnCIJ746zDRla4+Kqo5P0a/C/A5BCvQ5UFTPpbt1uTqbNRC9wcf9LFvjIH2mO9ZBcZKqUYbvAZNs+T6/0163+6wyuP+jLnC4D0XczVfgAJPmRv9ydR4Jteb+gjBW17Ez3iuqKKizansZAFkzUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q7LqVcm5UE7DMxkLEgz+GR611Qdmg2VuBV86zNIE3iQ=;
 b=Lks5XSEaqhUC4ebFlYZLqvgbcbFDULqSPu+cnS0VOWtXiwJvw7mu6XRbJAELDhEDyvTfmxV0slbJQLpD1BmhXeKMA7p4z5+j4YdshCGwMvukUNG5GDOglruPGXgPBpayUrWAdwQUae/PN1sgfP7pVOT/RI3XZDscTcezmDz0dT4=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MWHPR11MB1616.namprd11.prod.outlook.com (2603:10b6:301:d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.17; Fri, 3 Sep
 2021 22:03:24 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::c587:f332:ac46:5921]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::c587:f332:ac46:5921%6]) with mapi id 15.20.4478.022; Fri, 3 Sep 2021
 22:03:24 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] Potential oob access in e100.c:get_regs(_len)
Thread-Index: AQHXoANKPgKIZw9wKEKgK4hKZ1CHC6uS2E4AgAAGsoA=
Date: Fri, 3 Sep 2021 22:03:24 +0000
Message-ID: <39ddfe6f-976d-2929-8f3e-51a20d8f0d7c@intel.com>
References: <1f52bd29-43e7-0639-57cf-abfb7dc9804b@sect.tu-berlin.de>
 <c2ca99a7-9389-de32-bf2d-5128158a094a@intel.com>
In-Reply-To: <c2ca99a7-9389-de32-bf2d-5128158a094a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.0.3
authentication-results: osuosl.org; dkim=none (message not signed)
 header.d=none;osuosl.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b6da2e47-5610-47b5-9f47-08d96f26a676
x-ms-traffictypediagnostic: MWHPR11MB1616:
x-microsoft-antispam-prvs: <MWHPR11MB1616EC4721EBBCA5230AD1B6D6CF9@MWHPR11MB1616.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9M6o89sV5yeU2c1hdWhtH4dvhPu8CgsDe4ukMLfKqIkEqIS9hbep7DDNZSmyvtESL6T6xJ+54X7iCN95lMpYwbCc2BoHQZc3MlPe8UaVcGFRiPWPbQtqrD1NKEVkLBPRXj4prLLgrp5o0F1fXNJjzaNywvylZmMPLgU7hUFt4xmDfrEU8RMmYPX41ADjmoQMJer+fFZw9HFceD1YlZLrANjyYpJYgbdLbax8wbQyfRO7FLDzWi/xAy3xOsWuNrGfKiKFJLI3HYptTW0kQ4wQkj2oFxSSjNT5pUeJTyU0cM/1im3EmdTaDpk7BKATERXd+k4SwnWve8aW6ko+YBGVdx1KaGIYxX5IUlH8ZGV3oYlli5FxoUd5VN33gXg6/oyik031MFzF1ZqUDkf3P4TNkI2CxB6V49/5v3zy6uj1u2D0BfqJeY2ZT7Z0ay8L9u3LdVtUdwwuitgoCnejUdY879HxGKxnpMGpiDCjjOQFTrn47Kn9FagseY3t+d0/fs2BxRVeRctZp7m9eqqrUOBYa2cx04CIzfdUHrNO/EVBmp2tEvz3N4MwLroQyVIoLDcLSgFg23TnJBEDKFw8l+BZU711m1nMnPtuEnBzm9EBcmvSWNZWFmUuWUsTQ/59TIWO+MlL7SU0bHA3sR0sKqG0zDUz16vNen1fqn6aYhaqPhbWo+bWxhO0iNk3hIerbDvTKK7cEIXkErf7OJyYDzFZPg6QRAhar2MbaB1PPyNCecIe7Qv9syW+RkXbOP1yiAWJPG8O/rJufPHBOwdNhJBKxbtuLma4dlrhqJiRPLgU/ojwkp3h0opxVcNOEqa+aqi7qxXXnZUrloAGnkeubd03BTyqGOQwIVU7qinKx0DBfbEM2K4O1Dns7XG2/1ayU+PVMj9muGBvHtgchY+UixtiVA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(136003)(376002)(396003)(366004)(26005)(36756003)(8676002)(186003)(966005)(2616005)(66446008)(71200400001)(6506007)(122000001)(6512007)(6486002)(38100700002)(66476007)(66946007)(76116006)(66556008)(38070700005)(6916009)(8936002)(5660300002)(64756008)(53546011)(31696002)(2906002)(31686004)(86362001)(316002)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eVYyUlpJZU8rS3VNaU9rMnRaZ2F5NmxNYkpDVWJkVU5oVUtnRDVEUHFERzlX?=
 =?utf-8?B?YWFNMTU0R0FoR1owRU4zcXNsMnBQbXB1T1B6Y0QxUEM5clRQdEZ6RjRYREtT?=
 =?utf-8?B?YTdWTkF1K3pHUnlUSGtIc2oyRUt0VkVsb0dWMTlVMU43TDlBTzYzaDJNZzBZ?=
 =?utf-8?B?Nkh6aGJIYVNjcjluQXhrSGc5RVY3VVh4Mmp0S0g1dm1oZk9XclhaQk9RLzQw?=
 =?utf-8?B?RkZNSERTa01DRm9hVE95Ni90Uys0dXdIaHJpeG1FQjJLQnFUSk43Y0RMZVBp?=
 =?utf-8?B?RGFNdzJEV2lqdjZYc2JCWThxMmtmU1ZFUUtTOW41WU9QeFdPY0daMkd5VVkw?=
 =?utf-8?B?MFUzMU9vMUNVMnNKM3JMNS8reTNYR3J6RjdUQ3RQVU5MQWlaK2puRUVyMVhr?=
 =?utf-8?B?OXBmWkd0ajVSN3A2bkw0M2EzYStqeGVRUGVDRFpOVE1jc3BKajh1MjdGcTdm?=
 =?utf-8?B?REJucHRiRml2Y0lPQUxwU1Q1aWNVQmhNa29hRUxmbHlob0ZrSnVLRUZrQUJv?=
 =?utf-8?B?dXFGUjdXbmhqcFpkRWhrY05VdHpaSStUT1pJNTBUMDJBOVppN0pNdzliV1Ru?=
 =?utf-8?B?MEVCazM0VlA1NCtRaStwaGhqV0Foa1VlRXp3T3lLdVBCTVZFaHhhTVRDZnRJ?=
 =?utf-8?B?YTB0eDNuL29WK0h6ci9kaE5TZmFpc0FIRHl2S2dhYXlWRzJHVlZXY0c3dmN4?=
 =?utf-8?B?c2c1cDV3ZzByazBtU2Z4VktlK0FCNlpPa3Rka2MvODdnTUM3SnVXdVlDVDVj?=
 =?utf-8?B?OEZiVlBSZ1kzNk91RVhXcDBVcEx4TzZBNWtaT0xDSEE1WS96Y09ZSzNKdU56?=
 =?utf-8?B?SjhzejF2MVFjcnJQUjk5LzhtZiswSE83Q0tBMXRjTG5Qdi9DYnk0bUU3Y1Zv?=
 =?utf-8?B?ZlZnY1YwZm9pa0VYY2tuWm4wdlpBZENUaTNUZ1I2MERoc09YZEJWQXE1QU9V?=
 =?utf-8?B?WmNhMEMvU0IzcHJLdjBWaGpTQjA1ZktqSlVsS3FBS1NuTDBSdFUzaE9uaVJi?=
 =?utf-8?B?WnBjZlR0ajZncWFmVVFHelBjWDhaR1pNVXQrVHpYeVFYek83Y25YcjFFZEps?=
 =?utf-8?B?dVc2RXlzQk1qRU95M2dlRVN6ck1pWUVXbkxiNTlNT0J3bW5qYWhuUkNoczl5?=
 =?utf-8?B?ODdQL1pwaUE1UkJFaDlYbksrVC90MWNjcHBraGRHd1RFb1NLdmFXWmNkTkFa?=
 =?utf-8?B?ZTBwR2lING51cnU1Q2ljcFhkTDdKbG45bVJaTXdQbUFIWVByN0lBVm53UnJk?=
 =?utf-8?B?QldGejlxQTJMd0NSKy9GZy9kMTV2THRmb1lPYmtUUlR0UHZwM1VLWWJMY2hZ?=
 =?utf-8?B?Sy9hSnVYU3VjRVNiR2dPOEFtSi9Na2prY25kbUxaVzhkU3VkVGlCTEZQRGNQ?=
 =?utf-8?B?dlYrS0FWa256NlBzbFFQTjNIbzJYVm5aTDNwUjMxRjAzQ3h6NGVFMS9ZWC80?=
 =?utf-8?B?RWhwcmVBSnBOWjB3YndIN0tGczNzSkltOWVmRzcrRWNOMkQwUFljbThFck5E?=
 =?utf-8?B?VWhtaHRTL2k2U2puc2JBbE5HS3pQdkRFd2h6M2tQOUx5ZXB0TXZVUmJmT0w1?=
 =?utf-8?B?Zm91YWF5WFVhNElxYjdCem9haXl2L045V2RGZFdFVTA4bVRGTkdjYnAxTjhG?=
 =?utf-8?B?eVNLaGZBSmZYaEM1MFdmd1FhczA4Qk5ZZlg1cnJxakFBSGZMZjI0TWgza0kw?=
 =?utf-8?B?WGdkWUpqeFpYTTFNL3F0MTU2NE5lMEs4a3ROSnI1eU5la3VrOHlBZXVjOGlQ?=
 =?utf-8?Q?Y8WTzZgJ6bNlkhKCzs=3D?=
x-ms-exchange-transport-forked: True
Content-ID: <5A47363C79CD5848BF7F28FCCB031156@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6da2e47-5610-47b5-9f47-08d96f26a676
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2021 22:03:24.1310 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mw01kOqfHhj9+6DGysXD7DN705zgpFN4ckG7sdpJA5DJxphmX09uW+5GPoIJ5uteBwat4/+QCvhLWRpUa0kD+Cfs4XcodzSNB3g5xNzYzuQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1616
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] Potential oob access in e100.c:get_regs(_len)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/3/2021 2:39 PM, Keller, Jacob E wrote:
> On 9/2/2021 5:15 AM, Felicitas Hetzelt wrote:
>> Hello,
>>
>> I think there might be a bug in the get_regs ethtool ioctl in e100.c. It
>> seems pretty obvious to me, so I wonder if I'm thinking wrong but:
>>
>> here the size of the regs array is set:
>>
>> https://github.com/torvalds/linux/blob/4ac6d90867a4de2e12117e755dbd76e08d88697f/drivers/net/ethernet/intel/e100.c#L2444
>>
>> which is used to allocate an array to store the regdata:
>>
>> https://github.com/linuxkit/linux/blob/ccda4af0f4b92f7b4c308d3acc262f4a7e3affad/net/core/ethtool.c#L1339
>>
>> The size of the allocated buffer would be: *1* + E100_PHY_REGS +
>> sizeof(nic->mem->dump_buf);
>>
>> Then the reg data is copied, but the copied size is *2* + E100_PHY_REGS
>> + sizeof(nic->mem->dump_buf), no?
>>
>> https://github.com/torvalds/linux/blob/4ac6d90867a4de2e12117e755dbd76e08d88697f/drivers/net/ethernet/intel/e100.c#L2464
>>
> 
> I spent 20 minutes digging into this. You're correct but not completely
> correct about what's wrong.
> 
> 1 + E100_PHY_REGS + sizeof(nic->mem->dump_buf)
> 
> This is the total size of the buffer. It is supposed to be split up into
> space for PHY_REGS and the size of the dump_buf.
> 
> In the get_regs code we're doing the following to copy in the dump_buf:
> 
> 	memcpy(&buff[2 + E100_PHY_REGS], nic->mem->dump_buf,
> 		sizeof(nic->mem->dump_buf));
> 
> What this is *trying* to do is get the address of the buffer just after
> the E100_PHY_REGS section. Then we can copy the dump_buf into place.
> 
> So that's off by 1, and we'll overrun by some size. But...
> 
> Even worse than this, the get_regs_len returns size in *bytes*, and then
> the get_regs function assumes that the size for 0 and 1->E100_PHY_REGS
> is in *u32* chunks!
> 
> We're only allocating 0x1D + sizeof(dump_buf) space but we're using
> 4*0x1D+sizeof(dump_buf) space..
> 
> Looking at git history here it seems like we've had this bug since the
> pre-git days... It seems like this should never have worked...
> 
> 
> I spent a good 30 minutes staring at this trying to figure out how the
> analysis could be wrong and I don't see it.
> 
> 
> Are you seeing the same thing I am?
> 
> Thanks,
> Jake
> 

For what it's worth, the u32 issue was caused by abf9b902059f ("e100:
cleanup unneeded math") which did this:

>         strcpy(info->bus_info, pci_name(nic->pdev));
>  }
> 
> +#define E100_PHY_REGS 0x1C
>  static int e100_get_regs_len(struct net_device *netdev)
>  {
>         struct nic *nic = netdev_priv(netdev);
> -#define E100_PHY_REGS          0x1C
> -#define E100_REGS_LEN          1 + E100_PHY_REGS + \
> -       sizeof(nic->mem->dump_buf) / sizeof(u32)
> -       return E100_REGS_LEN * sizeof(u32);
> +       return 1 + E100_PHY_REGS + sizeof(nic->mem->dump_buf);
>  }



The original code divided dump_buf by u32 and then added that into a
total before multiplying it all by sizeof(u32). The new code failed to
keep the multiplication that was necessary on the other values. Woops.

The other bug has been there since before 2.6 git era.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
