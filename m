Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A57782D77F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jan 2024 11:37:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 266204167D;
	Mon, 15 Jan 2024 10:37:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 266204167D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705315055;
	bh=5JWASuZp5jSk+AtdUg4FUly+PhBbQQJ2RYwozOQ7I7w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=h3hA1laZryJ2vfSHhHSG0pQ/CRAyhwJx52stIJaOS9KQooFQpni0u/NFDr2JZwyfu
	 YdPhEH3ZPyIpGFKvZxpsn/gTXEAoMinpUMUDSNSI8miF46lAVR48PIOrHCQsU5UbCv
	 TG6BxVfIlT+yj91/O1GfS4ghCbjXGFq4bWDiLTGYvsc9CQ6iJUNc4SaADpvDHxqMSG
	 tuX6nUL+UWcGBA0nvlRd2yhbuFvCW+JWlCewPVhmZo1jhhkkTh4tySnckV36vltkjE
	 MLzOG/3IOz34Yk5xvYyF3k+4wMm/rhLavAX6aXdS9Dh14KdDJGHFuV2GwmYwx5A0WJ
	 9lwmoug1zAGWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b7L0i_gz5NcN; Mon, 15 Jan 2024 10:37:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DED004167C;
	Mon, 15 Jan 2024 10:37:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DED004167C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8DC421BF41C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jan 2024 10:37:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 659414167B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jan 2024 10:37:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 659414167B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zxRQwmjEpyLl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jan 2024 10:37:27 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5538B4167D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jan 2024 10:37:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5538B4167D
X-IronPort-AV: E=McAfee;i="6600,9927,10953"; a="21062596"
X-IronPort-AV: E=Sophos;i="6.04,196,1695711600"; d="scan'208";a="21062596"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 02:37:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,196,1695711600"; d="scan'208";a="18109696"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jan 2024 02:37:26 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 15 Jan 2024 02:37:25 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 15 Jan 2024 02:37:24 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 15 Jan 2024 02:37:24 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 15 Jan 2024 02:37:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mAsJjsUEZU4RpYH3STj7CkhVpFbteXT/uKQrusZQxRIMzPtMXNF8L1ff+RQ5sEvV/dHJt30OFzK7SQH2I3aJmghj9VSTwr0L3btUGIcEoCUekYOfY40Ke/xCrHFZ2wDmV04ZUtIetGkOc5cqhCNBH3Regl8fkxk+Q3MO3F3as0TSswaOidp8uw8iljDuxxyEHozucuTt60Yonvet9YowL4ReTkEsS1QlTzU+Zeq08Qp5xn9wrJ1eySPsMfj+1kQkMjhwtxINUvTkCU6ETC+/rBw3MEaZdouMe8FeR2GHemwgO+Viitedd8+H8pyelh2FcRad1F6siqzbsm0tflSP9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5JWASuZp5jSk+AtdUg4FUly+PhBbQQJ2RYwozOQ7I7w=;
 b=iGHl7G7y87TKgtMtcwyUSjE+zUUOXUBn8GPRaDZL7liu60D9nmgjf+qHjDkiveZeR5zbYXLxmi51QtmnXuhyUWNWVZpJVtzb61sj3buONuJsl8AGbHxyFo2iQY4L4Bp6MU+GRbAAMAfUP1q6Gj1WtmUFXXkeYjHFb6f9wvacBiGKcxw+OOXVZtiOVMWdcPZvKeYcLztK4FgIb09sYbBMk5XU/ih7xF788Or5aCMBiRKCIsXE7C297z9LA8Nsq1wPzjte3Utu4u/nwYU846Z3nu3fcMPSlkm9MExPJTZoE3QpgsNZ6XgPtEX9Ul/rY7VMM1HuprlZh3abw+3uGEOjXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 MN2PR11MB4663.namprd11.prod.outlook.com (2603:10b6:208:26f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.26; Mon, 15 Jan
 2024 10:37:22 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4089:f53a:50ff:2482]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4089:f53a:50ff:2482%7]) with mapi id 15.20.7181.019; Mon, 15 Jan 2024
 10:37:22 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [PATCH iwl-next v1 2/2] i40e-linux: Add support for reading
 Trace Buffer
Thread-Index: AQHaRT98XdZR22jTI0qYzWbwS45jXbDWIPmAgASQ6UA=
Date: Mon, 15 Jan 2024 10:37:22 +0000
Message-ID: <DS0PR11MB77852D91C24051F70ECFBF7BF06C2@DS0PR11MB7785.namprd11.prod.outlook.com>
References: <20240112095945.450590-1-jedrzej.jagielski@intel.com>
 <20240112095945.450590-3-jedrzej.jagielski@intel.com>
 <ZaE1Ra8JQY4RoTTu@nanopsycho>
In-Reply-To: <ZaE1Ra8JQY4RoTTu@nanopsycho>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|MN2PR11MB4663:EE_
x-ms-office365-filtering-correlation-id: 3fcfc824-7301-4f24-3ff3-08dc15b5f4fd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7BkUCRQtaYbQZNTnsOt2rdRmrMFeaODURufJ0aoDOnvdJFEMmQxtyWm0SriVaOHfIZ+JnuCtR+8X3CbJJvkwH7EG1Lrd8Oe9xTw5yhu+2wXly+9JRIO3Nd+yV5B8LamIfFYiVZ5c/Og9hBwrJoHqDoaaIAnqM+9TvzdvtzZQAnvFEcwqA5yGO8zFi44WZj2NuVUoN4djxdUGtNUS8jwAbv57dMQkLf8HLqHpP4QSPVpLE9wDrmtoFG5GjfxXVziQ2eJstd9qTUfpCXFTI1p0agHJ3bf17RFCZM+nyLvOMNMgf9P3/UlkmnDIaQjlj8nH5lC5jOAEtqxCTfWZvdcLZVhYuDpVkEXpirooGVaxQ+AHjfZyoThxoDC3TNaRqBR47/7o2oh0kTvRFvDHq1nYFtKmuXxE9O1kgj2raQzqAwYi3k2BqTA95cVT/aK8j6Luq4xAphzag9H4nmcS4QKzutslkvz9AP2///0R1PgbJ7OMWO/i48HACFYdfZjJ9C4zExQHD1DhLdliAsPcjphESoHFbFfzZ8xU2rZvnl2y2PRWZt5ArW036fMs2jIs4qL4kEBCRYQtnMIyqvorR5DuqDQqTnlK2wmUX5bL0hwD32R2hyW5IUKR3+2gwqnFXZuPSYpy13n2xI3PajQUYs7ipQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(346002)(376002)(136003)(396003)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(55016003)(83380400001)(41300700001)(76116006)(33656002)(82960400001)(86362001)(38070700009)(38100700002)(122000001)(26005)(107886003)(9686003)(66476007)(478600001)(2906002)(8936002)(316002)(66446008)(64756008)(66946007)(54906003)(6916009)(7696005)(6506007)(66556008)(71200400001)(8676002)(4326008)(5660300002)(52536014)(357404004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pJhgcHRRVLqQ7cWkgWLp2R/B5wb8J6sXSMG2ZmZfL0WdcNRTUG9HnU7ay/GD?=
 =?us-ascii?Q?K6EIvsZTcQ3v7qGkTmwf3fXaT2fNlgxhnPw48TMceicp8f+QN7IWyGc7CTUl?=
 =?us-ascii?Q?LD9c4dkCdkYCgBS3sKFdPQGxrW1jh2s3qKXl0Ru4vbxihxZmXO/eyZ660FhK?=
 =?us-ascii?Q?w9YwSfaHCTgMDqqE2ClLUVDn/FU0lhB50/RVcp5Srb8CHKuMhyADvDNGvRJz?=
 =?us-ascii?Q?hQUmq4ZFTlFreAvNoaetYmzbXi6amqjQ/VNO0NQnvpfY2u+mXfNxIk1LfK9G?=
 =?us-ascii?Q?jUFkmWrn8FX+rzFFoSJTG6KZ2pIBTrsgglJlBqylxEeDQMuBCz+BoGEcqUkG?=
 =?us-ascii?Q?MSnBlmiWf++AsqQxaLlhhwEo+sYQ1/49TOw9qPhKLEv/1lHHZah/W5e9w57P?=
 =?us-ascii?Q?KNtNYv4vyM1HQnCIC7bahZCHjOGKCWoAME9DgLHEAuMowOd2s5FRcQP+o+1r?=
 =?us-ascii?Q?AvoYUbu7WA3/TcI5YVgdtm6ritB5j2ctEbfDi9R3jcfylbSv16fxWWLd4iFr?=
 =?us-ascii?Q?Rw1/AGAlLYzxr2E8SvNVCkvoEX6Dogp7v67wSc8tVSOmloNSV30iP8IP2G5s?=
 =?us-ascii?Q?hfzi7PJgwgd8eObvEGS0eiIjIpQ5sMbDepBxKkbJVtEjkiG1jiLnYOrEckSg?=
 =?us-ascii?Q?F5HURH7SowqxXS3Y2tvhhCgDmlmhERSHzJQzdrrFcoEPJ9C5m2CsBHjidfRR?=
 =?us-ascii?Q?/PrUYEOQTqIPspXJyxJR2cu7GMy28PSB91Nmn3BX4nW+FsY9oaAiuYVnJzz8?=
 =?us-ascii?Q?RpROaNnl91s8Xd8iKauc9XDLNNOVgZqz5GqXDoD9FGPOMAkoSTRdE1CMVtSz?=
 =?us-ascii?Q?mVXuOkNTD6jLKqX6vN3JJ97Z4azPcF7w63oGjeND22RvoN7tbJwmPK92wq9j?=
 =?us-ascii?Q?7JkROW67hEBedXtM9lodN4KZQAlHeZAJiPYkukH53L2kUA3RgIxgiYYfP4TE?=
 =?us-ascii?Q?EPRzp24XrRThuaiqpzIvCCBCYRSgzs72yPCoHdx2i/HD1LNmNN1gqW5w0SBT?=
 =?us-ascii?Q?7Co2lHQ4+Ko9+d8ad3YrcidGzz0VPAaYyqpOCSpl5qoif7ciZhwhDbJpIwGB?=
 =?us-ascii?Q?uN7LM2do32YL3afJ7pM7BT55wERAHeb07iXgT0iWjkPZypvVuYKi3l+XyAxn?=
 =?us-ascii?Q?zkIfnRONEcd9a8Y1S9N73hnuPg200Rl/rulbSO0jQ0f+iSSS/pvvsES6dLeW?=
 =?us-ascii?Q?6ATrIKFNQhvTrdxy2+MVNKaqxeCM950asp7YuJbjARhZ5113Szfvyc/bx/jp?=
 =?us-ascii?Q?3zF0WhvKA5rkVm3ipPdTLKQIHjoQq6Q+3coCTt9uYtpC6XjKJal1qE+L4F11?=
 =?us-ascii?Q?BHxQ0P7IxB+qeaNqSD9I7lzl3Jcfaf+NI9w5uM7sp1v6RKNT3CZysTyh+Z3E?=
 =?us-ascii?Q?D+tjf4splR5QWQrHtXeUs8myRJ3x8g3x3YGQPz1AzfMgXKS7/6xPUo6bMyMW?=
 =?us-ascii?Q?OOEAlZMOocqZHjXS92vSI6YAA7ln/t9i4Fi3YDtECGN2v6gMNuqCZjSuRykL?=
 =?us-ascii?Q?EuHzMaQ5P1H8xEUfW5HHYdiObahYC5eOW4695RNX7kcP18U1XWOD6c4zX4BX?=
 =?us-ascii?Q?zq+b6oKBCuBEL0C9QLzt2mUOqG7Fjs9gj1GYgQxDn1HxawGB2TsL8ERyI/al?=
 =?us-ascii?Q?9g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fcfc824-7301-4f24-3ff3-08dc15b5f4fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2024 10:37:22.2685 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5aLq3TmMWcnNCxCVwmin1I/rHkQviouYl62lM9gHLSj/AGsAOok4Jxq4AjCz/Ojua9S0VpIlMuwmNRoVqRszetvJ17d5RZlex+9t6vWx/zE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4663
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705315047; x=1736851047;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XL2+sb6ckkrgATmgmTCp5+6My+rTjSnZY8xLTJXU/mA=;
 b=DrXh0auz2Fnh+ORvuwG1TBoo3Tq+qfHkBdB6eUVcw7zbl1I1pVqWEBqK
 e7ipZWgzCWoJTwEtP15CHEUP+p3WGr/Q40xFMkvLf5e43YYoBGcqBwx9T
 heiGQ9Q40ATQBKwNKth5vg87h+37W4S9R+M8ggYuDNSD+gVlt+Vnea0F4
 SKmp9bYl0kTeeQ/UcP84Tmk4ZcIiq+9qu8elEJ/iy+EqqDPElTcNRwwD3
 a++HszO9UbzXtEYioI/O84zZbXOZ8LeHECJja4hLB1cRcsavwDhupNUip
 Vwx7A9YGJEC8WG5x2MrfBRtQvn2Yzv5uQLtIxxW2fgupGFaDEKYStYPDT
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DrXh0auz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] i40e-linux: Add
 support for reading Trace Buffer
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Sokolowski,
 Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jiri Pirko <jiri@resnulli.us>=20
Sent: Friday, January 12, 2024 1:49 PM

>Fri, Jan 12, 2024 at 10:59:45AM CET, jedrzej.jagielski@intel.com wrote:
>>Currently after entering FW Recovery Mode we have no info in logs
>>regarding current FW state.
>>
>>Add function reading content of the alternate RAM storing that info and
>>print it into the log. Additionally print state of CSR register.
>>
>>Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
>>Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>>---
>> drivers/net/ethernet/intel/i40e/i40e.h        |  2 ++
>> drivers/net/ethernet/intel/i40e/i40e_main.c   | 35 +++++++++++++++++++
>> .../net/ethernet/intel/i40e/i40e_register.h   |  2 ++
>> drivers/net/ethernet/intel/i40e/i40e_type.h   |  5 +++
>> 4 files changed, 44 insertions(+)
>>
>>diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/etherne=
t/intel/i40e/i40e.h
>>index ba24f3fa92c3..6ebd2fd15e0e 100644
>>--- a/drivers/net/ethernet/intel/i40e/i40e.h
>>+++ b/drivers/net/ethernet/intel/i40e/i40e.h
>>@@ -23,6 +23,8 @@
>> /* Useful i40e defaults */
>> #define I40E_MAX_VEB			16
>>=20
>>+#define I40_BYTES_PER_WORD		2
>>+
>> #define I40E_MAX_NUM_DESCRIPTORS	4096
>> #define I40E_MAX_NUM_DESCRIPTORS_XL710	8160
>> #define I40E_MAX_CSR_SPACE		(4 * 1024 * 1024 - 64 * 1024)
>>diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/et=
hernet/intel/i40e/i40e_main.c
>>index 4977ff391fed..f5abe8c9a88d 100644
>>--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>>+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>>@@ -15414,6 +15414,39 @@ static int i40e_handle_resets(struct i40e_pf *pf=
)
>> 	return is_empr ? -EIO : pfr;
>> }
>>=20
>>+/**
>>+ * i40e_log_fw_recovery_mode - log current FW state in Recovery Mode
>>+ * @pf: board private structure
>>+ *
>>+ * Read alternate RAM and CSR registers and print them to the log
>>+ **/
>>+static void i40e_log_fw_recovery_mode(struct i40e_pf *pf)
>>+{
>>+	u8 buf[I40E_FW_STATE_BUFF_SIZE] =3D {0};
>>+	struct i40e_hw *hw =3D &pf->hw;
>>+	u8 fws0b, fws1b;
>>+	u32 fwsts;
>>+	int ret;
>>+
>>+	ret =3D i40e_aq_alternate_read_indirect(hw, I40E_ALT_CANARY,
>>+					      I40E_ALT_BUFF_DWORD_SIZE, buf);
>>+	if (ret) {
>>+		dev_warn(&pf->pdev->dev,
>>+			 "Cannot get FW trace buffer due to FW err %d aq_err %s\n",
>>+			 ret, i40e_aq_str(hw, hw->aq.asq_last_status));
>>+		return;
>>+	}
>>+
>>+	fwsts =3D rd32(&pf->hw, I40E_GL_FWSTS);
>>+	fws0b =3D FIELD_GET(I40E_GL_FWSTS_FWS0B_MASK, fwsts);
>>+	fws1b =3D FIELD_GET(I40E_GL_FWSTS_FWS1B_MASK, fwsts);
>>+
>>+	print_hex_dump(KERN_DEBUG, "Trace Buffer: ", DUMP_PREFIX_NONE,
>>+		       BITS_PER_BYTE * I40_BYTES_PER_WORD, 1, buf,
>>+		       I40E_FW_STATE_BUFF_SIZE, true);
>
>I don't follow. Why exactly you want to pollute dmesg with another
>messages? Can't you use some other interface? Devlink health reporter
>looks like a suitable alternative for this kind of operations.

There is no devlink support for the i40e driver at this point.
Dumping log in that case happen rather occasionally and debug log lvl is us=
ed
so this should mitigate polluting the dmesg.

>
>
>
>>+	dev_dbg(&pf->pdev->dev, "FWS0B=3D0x%x, FWS1B=3D0x%x\n", fws0b, fws1b);
>>+}
>>+
>> /**
>>  * i40e_init_recovery_mode - initialize subsystems needed in recovery mo=
de
>>  * @pf: board private structure
>>@@ -15497,6 +15530,8 @@ static int i40e_init_recovery_mode(struct i40e_pf=
 *pf, struct i40e_hw *hw)
>> 	mod_timer(&pf->service_timer,
>> 		  round_jiffies(jiffies + pf->service_timer_period));
>>=20
>>+	i40e_log_fw_recovery_mode(pf);
>>+
>> 	return 0;
>>=20
>> err_switch_setup:
>>diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/ne=
t/ethernet/intel/i40e/i40e_register.h
>>index 14ab642cafdb..8e254ff9c035 100644
>>--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
>>+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
>>@@ -169,6 +169,8 @@
>> #define I40E_PRTDCB_TPFCTS_PFCTIMER_SHIFT 0
>> #define I40E_PRTDCB_TPFCTS_PFCTIMER_MASK I40E_MASK(0x3FFF, I40E_PRTDCB_T=
PFCTS_PFCTIMER_SHIFT)
>> #define I40E_GL_FWSTS 0x00083048 /* Reset: POR */
>>+#define I40E_GL_FWSTS_FWS0B_SHIFT 0
>>+#define I40E_GL_FWSTS_FWS0B_MASK  I40E_MASK(0xFF, I40E_GL_FWSTS_FWS0B_SH=
IFT)
>> #define I40E_GL_FWSTS_FWS1B_SHIFT 16
>> #define I40E_GL_FWSTS_FWS1B_MASK I40E_MASK(0xFF, I40E_GL_FWSTS_FWS1B_SHI=
FT)
>> #define I40E_GL_FWSTS_FWS1B_EMPR_0 I40E_MASK(0x20, I40E_GL_FWSTS_FWS1B_S=
HIFT)
>>diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/et=
hernet/intel/i40e/i40e_type.h
>>index 725da7edbca3..0372a8d519ad 100644
>>--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
>>+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
>>@@ -1372,6 +1372,11 @@ struct i40e_lldp_variables {
>> #define I40E_ALT_BW_VALUE_MASK		0xFF
>> #define I40E_ALT_BW_VALID_MASK		0x80000000
>>=20
>>+/* Alternate Ram Trace Buffer*/
>>+#define I40E_ALT_CANARY				0xABCDEFAB
>>+#define I40E_ALT_BUFF_DWORD_SIZE		0x14 /* in dwords */
>>+#define I40E_FW_STATE_BUFF_SIZE			80
>>+
>> /* RSS Hash Table Size */
>> #define I40E_PFQF_CTL_0_HASHLUTSIZE_512	0x00010000
>>=20
>>--=20
>>2.31.1
>>
>>
