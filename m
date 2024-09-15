Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5EB09794EB
	for <lists+intel-wired-lan@lfdr.de>; Sun, 15 Sep 2024 09:04:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72D9241201;
	Sun, 15 Sep 2024 07:04:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aU78YbSQdAY4; Sun, 15 Sep 2024 07:04:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DFD074052D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726383842;
	bh=hAMA178h90qGOnX63m7Y424Xu1Wyo++bEJg1iSLC7Dc=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yTHmzvVufU87tVTYhO0Ll9rQ95d+o1PnjdBXEoNZQSsG79mRC/Q3YoIPY0t1JDj4I
	 6c+6slu564RKtJT1M/R7k6CrWIZDm0UOsKRhlfRDLW1nRJm/ZwuM4yaOMzi9xr5NE7
	 su4RII+Zny9akMwFl8BUZ01vkIripDi85WBL6gr/8V0PoOn0pBnTyscaIxrus7dC5+
	 hrZmfdW6pxMQJmR2f6Tn7IeSJqJjupmrRGobM10ynS5sI6Bb1v2vMtBzkcKBp7g9bu
	 IOtGUGqnYd/XeaNJTENTMfUoe9TmOKZKJePm8KTV7foZwHYxjNfo4o0tXGGNg0ShOQ
	 OvLP4+2mFwNLw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DFD074052D;
	Sun, 15 Sep 2024 07:04:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C1791BF293
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Sep 2024 07:04:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 466554052F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Sep 2024 07:03:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uaZTdUwYJp6V for <intel-wired-lan@lists.osuosl.org>;
 Sun, 15 Sep 2024 07:03:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9DA7040503
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9DA7040503
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9DA7040503
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Sep 2024 07:03:57 +0000 (UTC)
X-CSE-ConnectionGUID: 7A4dTVDORNKsB16NHGUFjg==
X-CSE-MsgGUID: uZUCYlT7TR2Lki9D6LmY9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11195"; a="47754498"
X-IronPort-AV: E=Sophos;i="6.10,230,1719903600"; d="scan'208";a="47754498"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2024 00:03:56 -0700
X-CSE-ConnectionGUID: N5552g/WSsqvJoxUPuh1XA==
X-CSE-MsgGUID: w6sHWZJZQQmmOCurTqxTKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,230,1719903600"; d="scan'208";a="73317125"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2024 00:03:56 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 15 Sep 2024 00:03:55 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 15 Sep 2024 00:03:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 15 Sep 2024 00:03:54 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 15 Sep 2024 00:03:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Uunvtt/BhEQbp50e/Omt6B38Wn8kuuJAu+JAVackT3r1QiObIWJmIt1RWjXDoqoc7xmjFxR/foZ+a6GU33BaOR1yZ/mNGauRgk0XAWLOv6PVo2aNpbsHsv5mtjrUuvJ9euV3evCecuOy2EPvWFjNSKmQ2diRzECZQt3765F51qodZZRK5LJhBjuLAvKNydTrJCzXMc/Mq2LCUsTs7mWW+J6a7UT8gDU0IjHqCLNkdCzyP0Qx1DE+0J7ijNuuhKYFNUpBbQuPDoFQI17EtZXVLveAh6sUp9cCcACeG3keHR+O6boZJ0AaqRlamYr2TrO9m9UiW2ajJq2RAbNAhyXqXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hAMA178h90qGOnX63m7Y424Xu1Wyo++bEJg1iSLC7Dc=;
 b=kgSzFjgpDImCTp+frvMBMnhRmffJEKCFpPJQBeeT2VR7PiKMc+CtBbVEAd1IewxEfnHWF3jy8VfB0PZ4aOC2ByRQ7dZgQAQiXNn5c5LTbHhXh0rhRXSYk0cWrVBnhMTghW3YNciXUmqvew/GzQPDmkCoToYTOSzUaQp9KiTAQhtbUrl3+cc0inlVqhz8fgRRu6pBwYt6HUlq9e4ZjG2AqFoF/yFo+ro6+zmmZFVAfoN12cGhrn3sMqfjcOF7hHVB4DNsNx8f4/y5ykAqais2vh1LP9CrLq+XXa6mLYMLsHZ0plSy+tSjcG4+xO7uRaiHwTAn9wMQ+VXdO2B7j5bWTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by PH7PR11MB7027.namprd11.prod.outlook.com (2603:10b6:510:20a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.22; Sun, 15 Sep
 2024 07:03:51 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%3]) with mapi id 15.20.7962.022; Sun, 15 Sep 2024
 07:03:51 +0000
To: Jesper Juhl <jesperjuhl76@gmail.com>
References: <CAHaCkmfFt1oP=r28DDYNWm3Xx5CEkzeu7NEstXPUV+BmG3F1_A@mail.gmail.com>
 <CAHaCkmddrR+sx7wQeKh_8WhiYc0ymTyX5j1FB5kk__qTKe2z3Q@mail.gmail.com>
 <20240912083746.34a7cd3b@kernel.org>
 <CAHaCkmekKtgdVhm7RFp0jo_mfjsJgAMY738wG0LPdgLZN6kq4A@mail.gmail.com>
 <656a4613-9b31-d64b-fc78-32f6dfdc96e9@intel.com>
 <CAHaCkmfkD0GkT6OczjMVZ9x-Ucr9tS0Eo8t_edDgrrPk-ZNc-A@mail.gmail.com>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <534406c8-80d3-4978-702a-afa2f33573f7@intel.com>
Date: Sun, 15 Sep 2024 10:03:45 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <CAHaCkmfkD0GkT6OczjMVZ9x-Ucr9tS0Eo8t_edDgrrPk-ZNc-A@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-ClientProxiedBy: TL2P290CA0028.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::10) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|PH7PR11MB7027:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e21298d-64e2-4e31-2ba2-08dcd5548dff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MU9WVW1YTHdKbmp4SjkxRjlya2VtQXptZVlyamRYejRwR3J4QUorSzhSVm4x?=
 =?utf-8?B?WHUyUERYMnVvNlB5cVB0ZWpFd0gzMHJzbXpadDhHVUJ0T0RXR3loU1M1STFE?=
 =?utf-8?B?WjU3cjN0YUF2amRaQ3hzaGNsSDI2bTd2WHVrWXRvTHg1T29Mb1pacWl2QkJw?=
 =?utf-8?B?bnRRUC8xcjVDYnJtSnJYTEo5R2xKeEc2KzdENm9nSGlMSjBFZGN4UXBSUzZ4?=
 =?utf-8?B?QmxPNTRjSVpJWG1oKysybVEvUDN3RS8wbFVWV3pyZGF1dU9NWDdsaGJiTUJw?=
 =?utf-8?B?M1VSZndiUk12NWYrRk5HQ3JCam9LcUxmbUxJV2pUa2FVQkJHeFZHbzVuOUEx?=
 =?utf-8?B?eFVac3p4SVlWbExocFdILzBubHBialNjd0lMdVRraUJFNzFGWFNObDZoVUVI?=
 =?utf-8?B?U0VXalNYQ2hQMFRkVzNmRFpwcHlyQXltakE2N0hPOGZidkZ1ekJmSkZtM283?=
 =?utf-8?B?YkphOUpLVVdpVVUrOGhOLzlRK1ZiQWV0RGdSbzJXVmZ2VzVDZWlrOWlpTjhz?=
 =?utf-8?B?anpRSGVweEF0Vyt5bXdlQ1hLQitZY0VyWkE2TTYwNkNKZzNnSm9CaS9vek1P?=
 =?utf-8?B?cThQemd5K0dkbjNOSWI0aFJtcUpSUWFzL2JJWlVsd0x2TlJkY0txUUxrRTBE?=
 =?utf-8?B?NVU4eGhLVHdVT3dHaVI4WlB1MmJ1aEJDOTQwQTVaUEQrL1Z4RU5yNFJ5bGdB?=
 =?utf-8?B?VHU4S25GZVRXdGh1TlRsTDhvQUJ6TVQyZVlYSGZZQUhZMGxOeXBIanRzNHpi?=
 =?utf-8?B?SFVlRlJScEFpdDBnN0lTanB3OWdXZmJwOElRSHp3VmFycHV6NkUwdDhZTS9X?=
 =?utf-8?B?b05kWC90Q3pxMTQvajFkUDM0MVpVbkFYTlNpdFlFKytsSGVJTjN5VjM1QW80?=
 =?utf-8?B?Z2FhclhkY1NYMllaWngyZjJ1bkNrMmd6eE1wTkxCMWF5cDN1REN4T3Bab2U0?=
 =?utf-8?B?bmVNa1Z5VkV3VkFCRjdYMWMza1JRRU5yeWVKektYK3p6R2JlZEtNU2N2REwz?=
 =?utf-8?B?WWUwTnYwMlBkdnhieXdSKzZyZkpSVXNnUWZZVjRQcTNvamR6SWZjZ1oycXpx?=
 =?utf-8?B?bE1tZlZwOVJnMmRqSC9KRThJcTEwS0IwLzFHR3RkU0djM2NJRy9rVzJrcWk2?=
 =?utf-8?B?M21UZ09Dd3k1Y3RZOHU4aEhHdEh5REtZSnhoWk00ODQyRTZ6dDB5WnE0dTha?=
 =?utf-8?B?MEFyWlBmWjhudmhHSTc4aUl3akdvamRXZTRULzVlck1aWG10akQ5VEZDV0o1?=
 =?utf-8?B?eXJJN0NSZ3pMUWZqTi9oR25YK3crQyt3MVlOWGFzTUhrUk43UWFXTW91UE9I?=
 =?utf-8?B?OGJuUHh0LzI4QUEzUytQbzJSOGNmNngwRlorTjB1d2trSEZ4Y1pQWUZCWWJl?=
 =?utf-8?B?Z2ZWTldaSTNtVDVIREdBdVdrbXlvV0hVMG04NkhhbC9WZVJWV1dkWUNDb3lG?=
 =?utf-8?B?MjYra1dOUUpMRjdPb3k4NEJKcGVYLzVJclBWUWZjVFk0N2liaklucldVMy93?=
 =?utf-8?B?WXN2cmRGQzFRdXl3ZUtIZWpHNmZxS1E4dzZTV215dkIrckJYSmdXaUNFSFVx?=
 =?utf-8?B?alE2REJ6Rm1JREV6S1VySUVNYzdHekdSSnBzaE5DQnZoclZoV2p5WDlDbmEv?=
 =?utf-8?B?cHNsYUY1UGJaVmdEVm5hc05KYXRWQWYvNU83TW5PMjY1aXM4N3QydmYwNUhQ?=
 =?utf-8?B?S0N1V3RxVWVnY2VoZklrSTBOUnZkZGdzTm9CTWYxczYwcGlGcklSZGpudlpt?=
 =?utf-8?B?b0dMb09xNUZVTmM5cmZlbnErUEpUSkJFZlRUMlpNdDZpYndCMkJ0NGtsMUhw?=
 =?utf-8?B?aTlmV1RvR01WbGFrbTBxdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aWRVbFZja012T2tMemdzZ3FYazhOVjM0eE0xV2FEYmVlcE5EaXNadHN5NWMy?=
 =?utf-8?B?bWV5c3k1S0pjbXBYa2V1UEFuSDYzbWE3ZXlEVjZ6emlKUEtjaHlQNW5ESVF4?=
 =?utf-8?B?aUtKT0loM21aUWwrWDVxR3k0WTRWcUE3bjhjOEVCMlN1YmxPRzA2bDJkcTFl?=
 =?utf-8?B?UVZZNVk2YkZwYXFNR1k0Tno5WHZORkRyQXkxMmVscHV6K0VoMFVRQ05TRWVm?=
 =?utf-8?B?a2VOYUYrQkh6OWVMRXJIQ3NDREJXdTdBM2pwbytUZUROWENOWFVqMmdlaXZO?=
 =?utf-8?B?VDlpVVVvSUt5QjlMc2tjVXp0SnFydXZJZEZsK05Gak9BQWxIcldqY2dlNCt3?=
 =?utf-8?B?a1ZlOXJoWnJneS9MS0RCYkVHUDRZL0hjYkN6cjltZTdrSHJWT3UzbWJUZzJK?=
 =?utf-8?B?cjFMYWhYeDJVYTRjY1JZNytWb0ZNYlN6YTJKaERXZG5nL2RReVVPU21ENkdC?=
 =?utf-8?B?WFQzK0tTMVpsUXlOcUFsWUx0bWpGTFE0T3pTZFFmalgxY0poN0dwT3V2bVpz?=
 =?utf-8?B?S1dQekNyS3A5NjRqaENTZFRyWkhrWXF4MWZnRDg2aHRKYU5mdVNHSkRzeWZo?=
 =?utf-8?B?M01Xb1kxSmlhaDBZcDZLamRRdHpCN3JaNlB1Y042SXB3YWtCa2RDejZkTnFp?=
 =?utf-8?B?ZDVoaHp2WDFGSmZxL3BiamVOT2FueG5PM2tuQXR0bTNralliSDdFbXhvaXd0?=
 =?utf-8?B?RXR0cS9Qa2NIcEhFQ0oyVVpldFJqRlIzakRhS1l4YWdpMGI2QVFYSlAvWkdJ?=
 =?utf-8?B?UmxHWE02SXpZcGVxWUsyMGJHR3J6UWE5UjNDcW96emYyNjd3T2FGSnhUMzBT?=
 =?utf-8?B?K1FVUVovY2dETHpPNXpNbDE1bGZnTGJkZlVmUWhUTTMvWFdTc0hBSE5SeXpS?=
 =?utf-8?B?amtTaWpaQ2s1SXBoTnVNQzlmNXVSZlV0S2ZOd01zNG1jUHpJZWQvNkE5SGhk?=
 =?utf-8?B?Y0c4Y2FjS1BJTHMrdmRIbS9DOEMzVE80NDhsK21UR0xUYVRjcVhTU1J5SEdS?=
 =?utf-8?B?dUE1dVZhRXhYSzRaWm1PY2xzWml4YzBvOHZwUmRzcG9iaUdZWHRobUhKYW92?=
 =?utf-8?B?TFNHekVmcWQ1ZVZsTldRN0RFQ2ZKTmVWR3VSTXB2T0NFRHhCKzMwenJoT2cx?=
 =?utf-8?B?K2IwaVlyWmIrN3lvaEFMbGtZWkxiay9mTTJ6S2drYk5HSUpndWtDZlZ6TFAz?=
 =?utf-8?B?ajcza0Z0U0dCb1ZOUHIvd1JyZCt6QyttRUVSVGlCcnkwUVRsbkYrdk9wQjNi?=
 =?utf-8?B?QUJVRU5Od3haN2prRTUzZVFUV05GN1RaZHIwakViTG5NY01tOS81QVFCa2Ri?=
 =?utf-8?B?dy9QQkt0TkhJdG9pNzk0U3orQXZoeHp6MWFmeXJWQW5VK2tyaXJPVCtzb0J5?=
 =?utf-8?B?Z1J6R2lTVHp0RHJzVFJjdWM2a0RGYmFYZm1SMmNSb2R3cEY3bU9OL1g4ZThX?=
 =?utf-8?B?UHR3Tjk3aDI3OGEzMzFER2NNajdta0NiTDZvRnlDdEdUWExubU9ObTVnQ3FE?=
 =?utf-8?B?TEFaZ1V6VEFBZHlsN3ZPUFlIbFBJdWl2UDdTeDIxckNjL0NsVEhNcWxrcGo2?=
 =?utf-8?B?d0ptQWhNNjRWdGxXTHFEL09oQlpHd1Y3alR0WUl0QTUvOStxQXltelIyVEdn?=
 =?utf-8?B?bkgrYkNIMWhac0p2NmpKV2FzSEhKS0hyYVBYM1pEbUpBTGhmYmJtNk5KYXVF?=
 =?utf-8?B?VEdpY25hQjRiRlI5UzAxL211VnpXUE83cTBYMHhQSlJyN0VPakZaRHhFdWVj?=
 =?utf-8?B?ZFM5OWFzMTNBU0R3ME5tbjlSd3Jrb1BpUWc1L1V0Z1FJYjFGcDZKUHdtZVZB?=
 =?utf-8?B?enZHQVpCRGdvVEJrZVRUWHA2QVZUcFhjOUQveGlTRnE3VFBMOWdiWk5zNFFR?=
 =?utf-8?B?SmZKWEtCUHplUFZtQjEzN2x1SVlucnhZb3pZYlJyOEZWeUxqNEpZelRJaURI?=
 =?utf-8?B?bkJURDVvL1J2TTUwTDFlcWdJL3M2YmdkN1l0M2QrSktBRTRYd3JFQnRPNms1?=
 =?utf-8?B?bGtxbTJpWldRcURsRHoveVhIaEIvRlZxNXkvSEVSb1poYmxXbzQ4RzRBRkdD?=
 =?utf-8?B?SUZJQWttTzNQMnBZb1Nwdm9WR1pxcHMvMkl1TjBrbmNVQXdTZldmM2ttWTM4?=
 =?utf-8?B?UWI4YXYxY253dS8wTk03blNCOENWMldhdVFxb2FSS1lWeWlXa0xETmZiNHJW?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e21298d-64e2-4e31-2ba2-08dcd5548dff
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2024 07:03:51.7158 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lS+XmFcmOhMkTf1H6e0UmPjBh2O5AGTXwktlTEfx/kR/TooxUJx31Rfx5uDGd1kcRYf8ncl/CQita+KcrY4XFzeKl33tekdB2dx4Gj2g1ZU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7027
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726383838; x=1757919838;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qUaHwXosy9gKDccneiH4XII07iIMGSWKDLa/0khkuv4=;
 b=ZWZZjkVR69s5uH4G0secmOoTfaC+LP0HSwamcI9FhOV1E+R6TZyZ+oeK
 9k78trAUwDlY+jViS3WoXU3mjsIOCXDPhN3Wv/fbwdKTdiJkCO4f9Meer
 lmgYtUjui7qR05f/Hh1EZSSwvbJZ+LGnCH6ycAP0bDl7NL4/fZhGECusN
 QD+mm5C5zPlduNdlpBOvilKYDAhsBN3nZc3F+El7b+HgIFHZ6k2n+kdMn
 2DYx8BTxCx98ev0FeKf+0OmYHtu0yeVy6yc0hAx0JXp9HzYDSQDdTF78v
 BVsxeNEa+af/q4efcHphu8bjZx2PLRCjc4y4ypvpJP+QQxsoOCMCkvP5f
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZWZZjkVR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] igc: Network failure,
 reboot required: igc: Failed to read reg 0xc030!
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
Cc: Paolo
 Abeni <pabeni@redhat.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>, Tony
 Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 9/14/2024 12:52 AM, Jesper Juhl wrote:
> On Fri, 13 Sept 2024 at 09:02, Lifshits, Vitaly
> <vitaly.lifshits@intel.com> wrote:
>> On 9/12/2024 10:45 PM, Jesper Juhl wrote:
>>>> Would you be able to decode the stack trace? It may be helpful
>>>> to figure out which line of code this is:
>>>>
>>>>    igc_update_stats+0x8a/0x6d0 [igc
>>>> 22e0a697bfd5a86bd5c20d279bfffd
>>>> 131de6bb32]
>>> Of course. Just tell me what to do.
>>>
>>> - Jesper
>>>
>>> On Thu, 12 Sept 2024 at 17:37, Jakub Kicinski <kuba@kernel.org> wrote:
>>>> On Thu, 12 Sep 2024 15:03:14 +0200 Jesper Juhl wrote:
>>>>> It just happened again.
>>>>> Same error message, but different stacktrace:
>>>> Hm, I wonder if it's power management related or the device just goes
>>>> sideways for other reasons. The crashes are in accessing statistics
>>>> and the relevant function doesn't resume the device. But then again,
>>>> it could just be that stats reading is the most common control path
>>>> operation.
>>>>
> I doubt it's related to power management since the machine is not idle
> when this happens.
>
>>>> Hopefully the Intel team can help.
>>>>
>>>> Would you be able to decode the stack trace? It may be helpful
>>>> to figure out which line of code this is:
>>>>
>>>>     igc_update_stats+0x8a/0x6d0 [igc
>>>> 22e0a697bfd5a86bd5c20d279bfffd131de6bb32]
> I didn't manage to decode it with the distro kernel. I'll build a
> custom kernel straight from the git repo and wait for the problem to
> happen again, then I'll report back with a decoded trace.
>
>> Hi Jasper,
>>
>> I agree with Kuba that it might be related to power management, and I
>> wonder if it can be related to PTM.
>> Anyway, can you please share the following information?
>>
>> 1. Is runtime D3 enabled? (you can check the value in
>> /sys/devices/pci:(pci SBDF)/power/control)
> $ cat /sys/devices/pci0000\:00/power/control
> auto
>
>> 2. What is the NVM version that your NIC has? (ethtool -i eno1)
> $ sudo ethtool -i eno1
> driver: igc
> version: 6.10.9-arch1-2
> firmware-version: 1082:8770
> expansion-rom-version:
> bus-info: 0000:0c:00.0
> supports-statistics: yes
> supports-test: yes
> supports-eeprom-access: yes
> supports-register-dump: yes
> supports-priv-flags: yes

I see that you have an old NVM version, 1.82.

In the recent versions, some power and stability bug fixes were 
introduced to the NVM.

These fixes in the NVM might resolve completely your issue.

Therefore, I'd like to ask you to contact your board vendor, Asus, to 
update the NVM to the latest version.

>> 3. Can you please elaborate on you bug?
>> Does it happen while the system is in idle state?
> I don't know. It might, but I've only ever observed it while actively
> using the machine. I usually notice the problem when watching a
> youtube video or playing an online game and suddenly the network
> connection dies.
>
>> Does it run any
>> traffic?
> Yes, there's usually always network traffic when the problem occurs.
>
>> What is the system's link partner (switch? other NIC?)
> It's a "tp-link" switch: TL-SG105-M2 5-Port 2.5G Multi-Gigabit Desktop Switch
>
> Kind regards
>   Jesper Juhl
