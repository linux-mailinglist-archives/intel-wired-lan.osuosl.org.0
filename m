Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B70F03DE056
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Aug 2021 21:54:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3AD216082A;
	Mon,  2 Aug 2021 19:54:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bWv5T4zr-A0g; Mon,  2 Aug 2021 19:54:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3573B60778;
	Mon,  2 Aug 2021 19:54:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D033E1BF989
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 19:54:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B905B40249
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 19:54:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s5EQmioltqZN for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Aug 2021 19:54:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3CA2E40188
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 19:54:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="211653645"
X-IronPort-AV: E=Sophos;i="5.84,289,1620716400"; d="scan'208";a="211653645"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2021 12:54:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,289,1620716400"; d="scan'208";a="440696415"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 02 Aug 2021 12:54:24 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 2 Aug 2021 12:54:23 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 2 Aug 2021 12:54:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Mon, 2 Aug 2021 12:54:23 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Mon, 2 Aug 2021 12:54:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rm1vgwZrO6fOuRRWiY3sx76Cpr+3gpY/9rAo3K5REUSpd395awS8F+hOKYCasC923JOYAA56YP7nL1VLuHeHjD4//UupWi4eCWFfJkg5xaIOdk9PVJWfRCRZEh5Zd5Omlbg1BxPLd3serDpXj8RpMC60o+IXMJuFAUUcIV6c5eztKACpB2C0UmA2+IFCsGeLBG1FdNkJwMCvwH4LeTJmYq3w+02ryDrEvZ3TdwTUCCoXQJLur/8qDx4qFs1JCPffC9fle7fZD7D5tL+fhnb4O+mhJ4f9qZpR1BX9VNmDloZxyZTk1+iOtT0J5WLOZl6o0nagqO48fJgauGKtVtOs0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7nGl3zsZUJ1d557Xp2PskZUJXv2twVy3AEytRXZ5dfY=;
 b=WtbmbRVrpEDHwAPjTPXBaPoADA8EMvG3Ch/ZA+azPcwSgtEsnbbFy3TfBqmRm7SQDi+IWAF0QSv7tUhLuSnSspLXp+xcFckC1RZ9LGPn6zds2RCqGmC6CGPkV0KeMtRLLE+PzcKgeuN08xWiy918GQ+y4cVO//WDIxN0Wu2Pk8hQfE7o8mpIBfTCPr+OMK2yyFu2Wzby7Bfjm0jhcnhM9XrF8Zixln99jShHPBeSIfUgzBB8z8DfIkaCg7L3XulE1ZmUklVtehK6xBTdUZE9YP8KNhwVLvyO+r5DowF8sCkYfPYU/ifmCEiqp3M0gZ/Ze0tvYtiVPvQV0SWQuIyXOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7nGl3zsZUJ1d557Xp2PskZUJXv2twVy3AEytRXZ5dfY=;
 b=dvqdSYUBRPOrsAbbapOlLoqoySfvKb3pp1kusLf+3dRW2z1SfCxPiQTTl42rduTJN0WRxZ3GDTD1hVprGmAANXtcVuHJlFXWwwXzV0OgeT1ciG8DWOczQfER9pLygGrWXUWajC/8Ls68mODEyOYd5Tw0dK3XIzhpfrnR5+ProFQ=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MWHPR11MB1933.namprd11.prod.outlook.com (2603:10b6:300:110::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.19; Mon, 2 Aug
 2021 19:54:20 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd85:7a6a:a04c:af3a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd85:7a6a:a04c:af3a%5]) with mapi id 15.20.4373.026; Mon, 2 Aug 2021
 19:54:20 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Richard Cochran <richardcochran@gmail.com>, Arnd Bergmann <arnd@kernel.org>
Thread-Topic: [PATCH net-next v2] ethernet/intel: fix PTP_1588_CLOCK
 dependencies
Thread-Index: AQHXh68Y1owt0G/CUEakzTAdq+RvtqtgbT+AgAAzuIA=
Date: Mon, 2 Aug 2021 19:54:20 +0000
Message-ID: <bd631e36-1701-b120-a9b0-8825d14cc694@intel.com>
References: <20210802145937.1155571-1-arnd@kernel.org>
 <20210802164907.GA9832@hoboy.vegasvil.org>
In-Reply-To: <20210802164907.GA9832@hoboy.vegasvil.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6edff095-9921-426d-db9c-08d955ef51a4
x-ms-traffictypediagnostic: MWHPR11MB1933:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1933832F1627AF58AE7DB584D6EF9@MWHPR11MB1933.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VH3T4XpU4y/yI/HSzTH296HSoeXBmzQF5A5kHLn/FDQyt4UF/J0vVd3+SoJ+aGII78/iLHdwrJNR/bmflnhceTJ/cBHZsfTpS3KrKbPOOgThGXs3AqLfzrI+ZAfrrEcCM/IPtiehvS9xLgMYkOC/0VlIlKybWp8+YU+Wn4wJZBztImRiGVAkKtCXEXAO73NoaByGFmVCKPw1nQ7gYGJjmLC4HHFYj+MySu223QYRQFm1WFegciUFL5J7z1BY0ZHbiPUc/GC3sMgnukWxQVCvvNbVZchFK6mse/FS5plF61+l1HJWzNbh8N4m0X9R8iDlqfPyr2kBDWq6ph5drLq2eH/IBIyNfWwB58cwqFGXFTuwfz7OBPj/INw6jkC95IsZlz0o1m6ExddyTjP5tuKwIEg1h4yfb8TAXbn4j3MFgJM4q3NcJ+5gYKQQCOQQ+AlfuKODlBreYnmEQszraMdUyK0vflgfKIkTHzWuB91DLF4HmUGw9+bE7apcXoGJ6iv4LDCHW3HFuqIyjMEYYTD5/EMl795tioDFAikBO8pS2ho0k1h1CO4XftstLsWL0QdYYBKe19E4E9JmALjiZZou4Bj36C7XzpjdWL1twfGG16qF9vHQovRQCYN8dy5Rg9Off0d1RZBfgq5h8rCiLFU5xkxWvTJgAeOs2n9lNq1NbhorMIjV3V6j389RaOma3zh6dm0ZxlqwhugH0RYWOMy83sH72SrXogZryZ4WcYRWxYelr+kpE1o6p23w0ATlTUBT3VktmUXnHOW7M0XINayNeg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(39860400002)(136003)(376002)(396003)(186003)(76116006)(36756003)(2906002)(110136005)(6512007)(38070700005)(53546011)(6506007)(26005)(64756008)(122000001)(66446008)(86362001)(66946007)(66476007)(66556008)(38100700002)(54906003)(4326008)(8936002)(71200400001)(2616005)(31696002)(7416002)(316002)(5660300002)(83380400001)(31686004)(8676002)(6486002)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UkJzRUExUUhIbm5HR0wxdWxxZTJLWmtjUVRzNDNZM00zZW14UTJtS1ZFS3hZ?=
 =?utf-8?B?TzlrZ1JvTW9mazloaGFTcTV1bVFuMVp0UnVuOUplcDNjcUJUT0tmOTVhK05O?=
 =?utf-8?B?b1Z5REp5Q3ZLcVpGNUlzc0paT1VKUUxrTlZWRm4rbElURXg5U25OMVc5ZlR1?=
 =?utf-8?B?aWYxK0lmcjVCdS8xTXh6Y1FIdU12a3c1bXhOZ2pwTytNU3FqcG9aTlBiY2VQ?=
 =?utf-8?B?eFk3emE5d3V5T2xqdFVsb0sxbkg3RGJhWk91Z1A5SlBmZnNVYkRwdGpqMURO?=
 =?utf-8?B?YW9Ld01VMVdkbW5DK1VpaEVNQjNha3V6bjJmY0g1dERsVkRFWTJFNHAxbGJm?=
 =?utf-8?B?UFRDWGIwLzI2Q3AreExEQ1NlU2g3Qk1GSUpLTmlpcG1tUlNyd0tuSzMzYVpZ?=
 =?utf-8?B?WVN6SFNnampJd1J0MmxMdnN6VXdPMXBRbVZhb0kwVFFyQTdXaXRFejFOLzd3?=
 =?utf-8?B?S1JycFBrTCtKZjBzY3VIeFRrNmYvNFV4WkNjNElUdGJvOXBUamdIYXVPbkN4?=
 =?utf-8?B?SUpOTy8rQ0RpWHU3b0tYc2oxWHp2OTZEb0laTmlFODJET3YwdHhyTmNBNWhi?=
 =?utf-8?B?UFBZeDQxeHoxV2FmQW9oU1lhTGQ4aVhXeWNoeXhqbHF5UGp4NFUyYjA0V0tt?=
 =?utf-8?B?dEQzSnMrdTBycFZGcHZMVXJSY09KR0VvbG1QVnFZUGlGYS82SXl1VkJBcDdq?=
 =?utf-8?B?QTk2SmxwNlRKRkZwSzZKMzQ5Z3M0UWNGLzRDOGU0MGZkdWhNMHdCTnU4TmV5?=
 =?utf-8?B?cFFMajZIRnVEcFdoMFFJcUpLSU9Za2ZwRVFFa3dzKzR3OWpsZmwycHdFK0Uy?=
 =?utf-8?B?Q3ZYbGFMajNOWnNsY0U4ek5Bbi9zZitFYmJBUlZTSnpWeldKMzY0WEpJdmRt?=
 =?utf-8?B?YnY3enJzK1RWLzBBMEQ3S2RJUTYzSjNYOGhHcVlzcG1xbVI2R0RRc0lpY3Np?=
 =?utf-8?B?U1F4aVdseEd4bDdjUGQxK2VHNzJ2RVd3MkNwekJuQ01IT1JLcGhVY1hOWGpm?=
 =?utf-8?B?WFhvSmFKYWRNckc3QnZRdFNYN3hwYStnSDNlcVJxanFmUHVxd0VLV0IwSENH?=
 =?utf-8?B?cHRlR2RMWVp3Sis5S2RzOHJvZnBjc1RrbzY4U0V0b3c0V000SzJkY0t0TEJK?=
 =?utf-8?B?R3pQZU8zanNLeXQwaE5rcTFqbVAxTU9SajV4K1N3Y0xHV0lwR2ZKOHJpY1gz?=
 =?utf-8?B?cUVkNDdiS1NUVk5xanFlSzhrVVNBM0xieWx0cHZkTEdIQytpSERGc0Jsb0hE?=
 =?utf-8?B?bFpwS0FiRlRrWC95Qi9IVXNvb0VjS1gzbzA3cmtxZmxRMnRFajBOd0paT2xQ?=
 =?utf-8?B?dXFtOG11bjk2L3FidWtTait2eDFaS0FIWTNVYUpOdDEwQ0VLSlluQVZOaTFz?=
 =?utf-8?B?SnlZK2QrWmVUZSsvU2Vab3U5WGRobUx0bTVMZEJyQjloYnpzb2RERDNQS24v?=
 =?utf-8?B?MEtsUVJzSDRjb1RsUDZ3akJhdEorV3ZyWVdiK3RIR2RnTENHK3gydUlKbGhs?=
 =?utf-8?B?ajJoNzM2Mmkrb2NlL2V6akpyczFzaGNpTVAvZEl1cksrR2FtWmxIT2V6ME9P?=
 =?utf-8?B?V1RvVXdVblRMeVg4WHFualVCRVI4Ny9YbUIraDdScXhQWDNXUHhhemY2dnM5?=
 =?utf-8?B?ekxBRFZ3UG9mbmFsWC9uaE9YQ1RucGwzank5dnJQWHV4OW5vMTJpVU1KcGNr?=
 =?utf-8?B?UDQ4TE1TcDIyWmtvUE10U1FBOTJkaTlrN0dCSENFaG9YcHFMUVRKOGNKbFlw?=
 =?utf-8?Q?6Nzx+5YmcXj/wXyFhc=3D?=
Content-ID: <8B83004C25AE6D45B65B0DAFB47905E8@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6edff095-9921-426d-db9c-08d955ef51a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2021 19:54:20.3724 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AG1BF32OMeoZOPKT9JM/XiH/HEDKF+8o2nJbMPdQvp2diOnBrRvNSMwjvWBIUqvg82DE/t3OJJykvTGwf4xsVEDr9sb6hx07kmrttN3ga7I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1933
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ethernet/intel: fix
 PTP_1588_CLOCK dependencies
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
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Jakub
 Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/2/2021 9:49 AM, Richard Cochran wrote:
> On Mon, Aug 02, 2021 at 04:59:33PM +0200, Arnd Bergmann wrote:
> 
>> This is a recurring problem in many drivers, and we have discussed
>> it several times befores, without reaching a consensus. I'm providing
>> a link to the previous email thread for reference, which discusses
>> some related problems, though I can't find what reasons there were
>> against the approach with the extra Kconfig dependency.
> 
> Quoting myself in the thread from 12 Nov 2020:
> 
>    This whole "implies" thing turned out to be a colossal PITA.
> 
>    I regret the fact that it got merged.  It wasn't my idea.
> 
> This whole thing came about because Nicolas Pitre wanted to make PHC
> core support into a module and also to be able to remove dynamic posix
> clock support for tinification.  It has proved to be a never ending
> source of confusion.
> 
> Let's restore the core functionality and remove "implies" for good.
> 
> Thanks,
> Richard
> 

So go back to "select"?

It looks like Arnd proposed in the thread a solution that did a sort of
"please enable this" but still let you disable it.

An alternative (unfortunately per-driver...) solution was to setup the
drivers so that they gracefully fall back to disabling PTP if the PTP
core support is not reachable.. but that obviously requires that drivers
do the right thing, and at least Intel drivers have not tested this
properly.

I'm definitely in favor of removing "implies" entirely. The semantics
are unclear, and the fact that it doesn't handle the case of "i'm
builtin, so my implies can't be modules"...

I don't really like the syntax of the double "depends on A || !A".. I'd
prefer if we had some keyword for this, since it would be more obvious
and not run against the standard logic (A || !A is a tautology!)

Thanks,
Jake

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
