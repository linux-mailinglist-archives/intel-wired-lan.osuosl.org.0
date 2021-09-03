Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D7640077F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Sep 2021 23:39:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4672F426BE;
	Fri,  3 Sep 2021 21:39:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0_MV8aA50XkM; Fri,  3 Sep 2021 21:39:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C08B426B1;
	Fri,  3 Sep 2021 21:39:38 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E44A1BF389
 for <intel-wired-lan@osuosl.org>; Fri,  3 Sep 2021 21:39:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 10A77400F4
 for <intel-wired-lan@osuosl.org>; Fri,  3 Sep 2021 21:39:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 50KHUi6sG-kr for <intel-wired-lan@osuosl.org>;
 Fri,  3 Sep 2021 21:39:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7EF65400D2
 for <intel-wired-lan@osuosl.org>; Fri,  3 Sep 2021 21:39:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10096"; a="206746438"
X-IronPort-AV: E=Sophos;i="5.85,266,1624345200"; d="scan'208";a="206746438"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 14:39:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,266,1624345200"; d="scan'208";a="462649690"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga007.fm.intel.com with ESMTP; 03 Sep 2021 14:39:30 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 14:39:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 3 Sep 2021 14:39:29 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 3 Sep 2021 14:39:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NA7XwzqSlIPu5VmxSkxNOftyridESkwhMhkYADfTIwOqkhwt8mkUYEI1pbZOUZk1JHgYZJxCLl5xWf31IjUdgZfOXbBgVLH+s+/Dg00Dqpnj9fC1Dk2BO1jXx2p3PWD350C/smJ1jCWitrJYE0J5Ve21PSCPSNYAT87GrbX/WQI2DnqNsxTtlDSnK89V+BWKLfUFnOU95JTzjGuW9cuWPZ1grUShOm8tvlPjAcewiDEqfg/v6up5wB2xdICxmwQpcPhL79gZ3jYcVN0bGGd+BYu7odW0T0RoZ4UEnG9BPo50urYXPW5unMp8uOJGdm/zpNwRo5+MleY6HLo/kyhLew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=HIOZYm3BJbTvwwRfpovnG1VMhcdmY/890OPPK+kqTFs=;
 b=OmfjMRAh17nZb+6iKKpFR+g9NB+HqDIT3snleNc/YS8GHTwms7b05dwCZgOa6h3lm52d3efNgXAZ88G1Q0lrXGig2ctWLIciWBggJgf1or15y4Rxjhq5ETFYYXlmKIZyQe5ObMmT6HrOjfxkkMfP/J/vfVnj8YRjwWvs2rPu7MrC0STXJTpuKWhPda+FclFUIp78BlM/riobu8sUWiZ9JbfsgO+YTZFZa75MPRvHtvv+Dmi98ZaUHO4LDoK+v0qsnwS7WfGWxsjOUGUnByOgvXgQK8S1qHdIrrWbHzGMJQHOfQMLXIQ5TDyF7Wh4rBHBcduUTUDH6XgZvoIRxSM4oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HIOZYm3BJbTvwwRfpovnG1VMhcdmY/890OPPK+kqTFs=;
 b=F1s5DLQv2FraxmulzwPBTq+9+fb3jSax/RcoPJZCArLKaUgqVBhjdaBa45CyCBQOR1RHU77FYxypddf4QzX+6Ld0CST0rb/6DTKBZEt8QTbof7kSDUC36CAMyWMub6XhSxjYOiRjYHR3FMpGXa6wthnhiMEY8iZ1NNmPa4ix2T0=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MWHPR11MB1886.namprd11.prod.outlook.com (2603:10b6:300:110::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.21; Fri, 3 Sep
 2021 21:39:27 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::c587:f332:ac46:5921]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::c587:f332:ac46:5921%6]) with mapi id 15.20.4478.022; Fri, 3 Sep 2021
 21:39:27 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "felicitashetzelt@gmail.com" <felicitashetzelt@gmail.com>
Thread-Topic: [Intel-wired-lan] Potential oob access in e100.c:get_regs(_len)
Thread-Index: AQHXoANKPgKIZw9wKEKgK4hKZ1CHC6uS2E4A
Date: Fri, 3 Sep 2021 21:39:27 +0000
Message-ID: <c2ca99a7-9389-de32-bf2d-5128158a094a@intel.com>
References: <1f52bd29-43e7-0639-57cf-abfb7dc9804b@sect.tu-berlin.de>
In-Reply-To: <1f52bd29-43e7-0639-57cf-abfb7dc9804b@sect.tu-berlin.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.0.3
authentication-results: osuosl.org; dkim=none (message not signed)
 header.d=none;osuosl.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 89b3eb73-c2fb-4712-e27e-08d96f234e5a
x-ms-traffictypediagnostic: MWHPR11MB1886:
x-microsoft-antispam-prvs: <MWHPR11MB18866A4FDDE1E024CED99DFBD6CF9@MWHPR11MB1886.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mOMOuz0/a3UR14OUWzE8n0YsLMB3XWnoG20bUntmhkO4gu5Y1UmdsSlNs4WWWIsFsa09f2UlwG27mH1fMnUKKmWNeo9XLuPXznVvDDVcKxSFgyFF5YxmjpeHKrSC59h2gqpr2hSMcqwcr4c2NZfv77v2TWqfN36D2W2BXduhSS49bPhI2ozS/u6PZBVfbj4/zZtsrFUtZ8BE6ru0iqD1Jloaw062ApmcnCd910wmzRW/iDBR++PFehsxE8hmR0EXyHCtnmnDZMpqaXHfSXgtJw1JKRtG2WRmziZgq8SCHoCjN6iitAOY/pxmlgvNPwtwdllVQ7o4eWILQhc/ScO9SciE2DoYbXKqc0Dpxok01HGSHBkAxOxHIGYb/w+VWui9fkzNiv9QzuQry6PeVCfuaSxuvYzq3B6SUBNcliQWTp6sQBnGP/+tl9rye1ibUgcBLfS/zzFyy0Qoq0IX5PW9EwSZL75zEc00dwKmFrZDyG3bUeIcXCrOY0GIyhyYMERn2zxYcZR9EvUQTChfxZJK8MCry2eeBgMwomlKs8ZifCIre8xsyD57x8U54OXHIBkPqIIYdzM0a4fd284oF8e1O5fXZSo1GxFnacWNC5s2t4tR6DOYO8FQQtXfnW7wUUHf6wbTnNPJoN5hrOZEv0EY4JtY9YGH4cImdaKRDDKHbtnL+u2mzThIuBazatRChvO2Vp2MrxP/OPFCPbk7WIAqKxjUHmvgCmRce09A7HoehZM6wq76Iq49o1JNlHdpVlR+01loT/BvVuKHaGPYAmZzrcv+Wrddi9NwhexYtgw3IMIForBfKkZus0TfLALntUVkhLhp+yOb3mC75T75IdsH9fAJRqDBe1zGPV7QUkE8FrJrM6D6ZSSFTdqJLYH53IiwmUNs9Nx4tMAeqcfChmjE0Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(376002)(396003)(136003)(346002)(39860400002)(53546011)(6512007)(6506007)(66476007)(64756008)(2906002)(31686004)(66446008)(478600001)(38070700005)(966005)(8936002)(71200400001)(5660300002)(316002)(6486002)(66556008)(8676002)(36756003)(26005)(2616005)(110136005)(186003)(76116006)(66946007)(31696002)(122000001)(38100700002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?amNCdUVnUldnakFTT0hDZ0RyZ0FzbUVqdkVqVUd5THhzRVp4VmNyUkFEeTUv?=
 =?utf-8?B?VnhBOXFzMUZCenl2SWVBbm51RG5DNWV0aUVEbXEvam91MDkrakdITGtrT1ZG?=
 =?utf-8?B?VnpBOVhlZjQ1TnNweEc4VEFpVXJBVVN5TlVycnM4Q2JFampOamFDUk1vcU92?=
 =?utf-8?B?OUxsOTVKNW9WeE8wOFUrSnovU2lNVEQ5NUFNYzhMZjlXS1hHTEZVYlYxRnVh?=
 =?utf-8?B?eFFubGdkb2pwNlJtYzlKSkNpRUdFQnNvZHJ2ZzdBUVJaTVEwVkY0bkRYRzQ3?=
 =?utf-8?B?MjRQaTZFK2JLaGRCWVl1bmp4S1hob0dRQ2I5cmlVc294YlZFbG5GQkU5ZWJL?=
 =?utf-8?B?d3JyQWwvN0YzVk5renhWT05zeHFrZklxdHMyUURlNitBZ2RRb3ZFeVkwcnRY?=
 =?utf-8?B?cUxTeTBOMmREUDAxT2xiR1FWU1hOYit0eU1QQUM3Ujh3VXJXdld2T3hDeDFQ?=
 =?utf-8?B?dnpoMFUrZm1YRE5rNkcrN25qOE5DZmxEQnpYTWFaSGl2MmViRlB5bWJWWTVo?=
 =?utf-8?B?ZlRsMGlIWWRUVlpWT3hxOGh3cDVSa2dxaXZ1ZlcyaEN1OWFXV0ZsZGx0dTVZ?=
 =?utf-8?B?b3RwMDdxVzZqNUFDdUp3Qkg2RkM2Mk9udm5tVmIxb3E3d05MZ2c1MVd4Yitv?=
 =?utf-8?B?U1pYZTk2cXlsZHlOOGQvZXRUcWtnTmpuSGozZ2RVTS9NM0E4RnlLOW4wZmZr?=
 =?utf-8?B?V3lxbTNJL1NGWHFIZDZiSzMvN2paaXdxWFVkSXAzdGQ5eDJaWWhmRXdjbDZv?=
 =?utf-8?B?V2cwNlZxZzQ4QXhGZ1ZTWkxVbmhNZ0JjM0tYcGNvZzh6WThOejNXUm94eUZu?=
 =?utf-8?B?ajlRNWpaeFkxRmZmbVFXY2tXQ3MyT3dzbFRKYzIvOU1FTTU5L0VaakJjOURp?=
 =?utf-8?B?eGhIbkxuMVJiZmZDTTJVN1Y1dU5IRHNLaVk1TlRuTkcwR3U2UFhjRDh5RVpU?=
 =?utf-8?B?Qm5qWENUUE05Z2lvcVhud2ZXZ1BVTTVRV3NxYUlhWkNRakRJS1RzaTRsbUpN?=
 =?utf-8?B?ZVFrUENQWnM2RFhNUzJBMnJ3VllMQldmWVRjeitIUVFNaUd1amlrdGs0cVJ1?=
 =?utf-8?B?eXA1Wnlrd1hvWlFqTE5TWlpjcDNWb3J0RGYzdTdCbVRIQ1Z3aVNyZWZNdVV3?=
 =?utf-8?B?OVRtNUJVMHZXb1lOK3NWNS9sRDJ1ZHZMV0hDU0phZmlsTERFamtaZm5lV1Jq?=
 =?utf-8?B?ZU8wUTBXSTR6QWllMlczZmhFUTI4SHpnTEZEVU9JUDN6SUptUU1yMGg3cGVF?=
 =?utf-8?B?MHowTmNjM0hjYUZHaDZnSFZ5N1lVNEljMFlNdFpYVGxLUGpBRTJyaGxJdWhT?=
 =?utf-8?B?bWtBbDJtOC9oYW1YczFQbmJsQ1FZc25aVWxqc0JqZkZ4Ymc4Nkw3M2QxTGtB?=
 =?utf-8?B?MDJlQmRFalVtODEzdS81cHZXSGdJRUhYbkJ6Q2tud3c3NFd3VWZmNHp3dWVu?=
 =?utf-8?B?VS93bEFCUmtFTGpmM01pb0dVL2l5VkV4RVVLdTZWSGdBNHhEQVQ1S0JFL1do?=
 =?utf-8?B?VzQ1b2hqUC80eFJVNm1rVytjUU5WM25CbXN6cU8ySk04eTRNMEJpaHowWEtN?=
 =?utf-8?B?N3hEVHBQZU94NXNINzlvQWFadmZ2cDlCZ0Q4SkRhbjZRTzN1eU5hUW8wMFJq?=
 =?utf-8?B?TldZTGZXcXpBWHhqbUxIREFWK0RGSXlIbVRJd2JvWlU4aUtXN1QrSXYva2hs?=
 =?utf-8?B?djl1RVBNajVyVlNXdkVJN2hXZVZxc0FTK2tTdk10Unc0S05pcVlpMGVXOGto?=
 =?utf-8?Q?aujoUgN8zk6+egjOV8=3D?=
x-ms-exchange-transport-forked: True
Content-ID: <7282C49AF17AEF47ACD1C11B1197D6CE@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89b3eb73-c2fb-4712-e27e-08d96f234e5a
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2021 21:39:27.8394 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bkFsHLvUi/PXtZ1cPacgtTTfQwmyTe2RsWG24CA1wBX3pm0ql/utLJQ5WQ4ydd5UAZlf5w9K7vD2es+TwrN/4XDMOUDwx4pKWZ6PD+AqgRA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1886
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

On 9/2/2021 5:15 AM, Felicitas Hetzelt wrote:
> Hello,
> 
> I think there might be a bug in the get_regs ethtool ioctl in e100.c. It
> seems pretty obvious to me, so I wonder if I'm thinking wrong but:
> 
> here the size of the regs array is set:
> 
> https://github.com/torvalds/linux/blob/4ac6d90867a4de2e12117e755dbd76e08d88697f/drivers/net/ethernet/intel/e100.c#L2444
> 
> which is used to allocate an array to store the regdata:
> 
> https://github.com/linuxkit/linux/blob/ccda4af0f4b92f7b4c308d3acc262f4a7e3affad/net/core/ethtool.c#L1339
> 
> The size of the allocated buffer would be: *1* + E100_PHY_REGS +
> sizeof(nic->mem->dump_buf);
> 
> Then the reg data is copied, but the copied size is *2* + E100_PHY_REGS
> + sizeof(nic->mem->dump_buf), no?
> 
> https://github.com/torvalds/linux/blob/4ac6d90867a4de2e12117e755dbd76e08d88697f/drivers/net/ethernet/intel/e100.c#L2464
> 

I spent 20 minutes digging into this. You're correct but not completely
correct about what's wrong.

1 + E100_PHY_REGS + sizeof(nic->mem->dump_buf)

This is the total size of the buffer. It is supposed to be split up into
space for PHY_REGS and the size of the dump_buf.

In the get_regs code we're doing the following to copy in the dump_buf:

	memcpy(&buff[2 + E100_PHY_REGS], nic->mem->dump_buf,
		sizeof(nic->mem->dump_buf));

What this is *trying* to do is get the address of the buffer just after
the E100_PHY_REGS section. Then we can copy the dump_buf into place.

So that's off by 1, and we'll overrun by some size. But...

Even worse than this, the get_regs_len returns size in *bytes*, and then
the get_regs function assumes that the size for 0 and 1->E100_PHY_REGS
is in *u32* chunks!

We're only allocating 0x1D + sizeof(dump_buf) space but we're using
4*0x1D+sizeof(dump_buf) space..

Looking at git history here it seems like we've had this bug since the
pre-git days... It seems like this should never have worked...


I spent a good 30 minutes staring at this trying to figure out how the
analysis could be wrong and I don't see it.


Are you seeing the same thing I am?

Thanks,
Jake


> 
> Regards,
> 
> Felicitas
> 
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
