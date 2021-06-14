Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 171B83A7140
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jun 2021 23:23:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A468A404C0;
	Mon, 14 Jun 2021 21:23:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yCZmANpyspuR; Mon, 14 Jun 2021 21:23:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2295D404F4;
	Mon, 14 Jun 2021 21:23:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC3D81BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 21:23:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C875A404C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 21:23:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id deawZf_5zp-J for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jun 2021 21:23:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6114F404CF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 21:23:01 +0000 (UTC)
IronPort-SDR: dNK3Sn7X4uBpmL7hKywdpOX+TbyIf9Xs7XlmHg3SHorD1UquOlVmZNLxkIDSWUlxFMx8SG50vM
 itnHhktiMfOw==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="291513831"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="291513831"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 14:23:00 -0700
IronPort-SDR: fjaXK7ODBop0Dp55v3LC/WRtmX6WFbiV2xjTv5FTFabc85swBCCZBXLZIWFrn9u0nru0Llxvs4
 Xz9vFhPzwYxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="420904205"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga002.jf.intel.com with ESMTP; 14 Jun 2021 14:23:00 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 14 Jun 2021 14:22:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 14 Jun 2021 14:22:59 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Mon, 14 Jun 2021 14:22:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DJIpQT72vuelBW0ECg7ibCL7sGYpMXXSjJlLlYqMGE60kRXfDnrWl7afS4f/mGpCfPAGtp1OmKIbZe4PmWXTCNJzz+VMBrEhz2lFzTRMRbC6ptZPwxtvRy4m1IpnJiOT56vT5Di3IeMGfHHp8d+nnKQs6h44O9LWhOyzqkrTgTZLtjT2ipgBr1SYQO1cxGACFGU+XcTW5GI12BLHqVPBSFb08lce6vHmSCp+1RM5rH+rSVBmfFGdwx2uwoSjuiaYUyhakKwibX6OjOy8RTj5pDu9oTrSKrcQDXqQGpshBXqh4KpjUGI3kaD+PMmi7oOHiDIgjhz/98pYz2Fh+/nF7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AhNO49h33Pcs7GGe/2CQObGc6PBR2TaC/V1SK4L9ITc=;
 b=h+ZP/UrEiUCEEVIpC3iXreHXGhGJV7euSQZLARAPB244kgJmBWgkgX3KTxHGTJgi8viHpau8ykTI5pTSfeogOhGAcbGzqyOXAHjMKPOpF0SnY5Dt9irFpAmnHuv7BNcwu1dO9WEq01HPkzV7ftPbKOP1KQ+8pYj7ywJSI3HxibktCWlTQzfO3W1CDkR35llioofwwysN29OFnKXiIkZrHad5esA+dC97ezwUQlR2htrHi6hhV8ukbV+CM4FkdvD7d3u5omPESm50MhQaSESZgJ72UDOK/d27As7iGWLJLgzmvEyUlqQSJ2OpwxCwjBwvegTOqvroJFtfdRIvo1ALNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AhNO49h33Pcs7GGe/2CQObGc6PBR2TaC/V1SK4L9ITc=;
 b=fxkAGLP2AXf4ndLnPzzjW6T6vySDRGVBWQMuN+NwIg6YwxcOjCO02R2uP5z+lS7WWYSF3RzWjK1YovfoeXFb+TlUFf/eOvNLa6YJafabUuDDJFKWE2u+7+QL57ZO039ITZzuMfrlI25w+iAS9GvbeuZniRBV1GBVLEBzNzTtRAA=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3437.namprd11.prod.outlook.com (2603:10b6:805:db::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.24; Mon, 14 Jun
 2021 21:22:55 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1%5]) with mapi id 15.20.4219.025; Mon, 14 Jun 2021
 21:22:55 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Edri, Michael" <michael.edri@intel.com>, "Neftin, Sasha"
 <sasha.neftin@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Add space to the debug
 print
Thread-Index: AQHXYO56ANh5Fey07EuSDsiIgTovHKsUBcYA
Date: Mon, 14 Jun 2021 21:22:55 +0000
Message-ID: <17f7910ef523253e4e42dbdc81e0e80cb14c5e1d.camel@intel.com>
References: <20210614072452.480186-1-sasha.neftin@intel.com>
In-Reply-To: <20210614072452.480186-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c6d92dde-60c2-4821-15cf-08d92f7a935e
x-ms-traffictypediagnostic: SN6PR11MB3437:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB34378714E28E005D89121C65C6319@SN6PR11MB3437.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:182;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j2TjAyT94ZffCFNaX+zH+GGqGYxL7JB/vAAxO0wfOS6nYdbzxTUDjb/4aSoCjb4c1WCZRV7J8oX3ajXIdCquEiY04kTjKTKQAtAIVZoL3vY9hd2Jan8KarqrGUoPFatHI35XUwmkxWgmU3bhvXcBYWBWgaLpwJhj0aQ678KhDx2Pz3JWAY4wUFbVGbGhh+uqW8FW3xpZU+1145qXpY8r5AjBI9PD4PKhC1DqaAwq8bR240H0T9jJXXzxVXe0Zc6GnxsdExHWsVVeYJu0DxeqV2ohS1hHSsUtSk85quQMFuf8KAxB7bsNsZ92v3k8RLLvZyMxN7qYlFwAa0peQxn5zqHyCkNg9khMNZ9Xt399zLzKR6B8vQ4NeNUsfLzXvndz1MXSfnoF5Bq9EWLCVdvT3F6G5rqxyMCUXIqi+symgykGLUuiL7XKPNdr41EiARc30DGlKz4Hdk1QXZoTCrEsohrbkjwwZbmKVeobTwlINaNBM+bT7wT3BZ9aw7gUnaJhFl9cNpDgmEthJWhwizQTudJpOYVelOevxVNAcMCqbk5FeyHVzw+qll+g0qVXLqFMb+KZJlU2TbwgiI4YgrC+uSraAIF0yd7dpqeCEumRY54=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(366004)(136003)(376002)(346002)(39860400002)(2906002)(36756003)(83380400001)(122000001)(86362001)(66946007)(38100700002)(76116006)(2616005)(186003)(66446008)(64756008)(66556008)(8676002)(66476007)(6512007)(6506007)(316002)(26005)(110136005)(71200400001)(6486002)(8936002)(91956017)(478600001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZzF6M1gyeXoyV2djak1NQW9tY1JaNzl6RytJcGEvb0NFV0dZKy9ZUjZQOHZH?=
 =?utf-8?B?RmgvUXhhOTdwY2RMYXlYUHpuV2c1Lys2Lzc1TjFKcTZJYVdFUlBCUlRmR05B?=
 =?utf-8?B?MWpEbTcwRnpreG5kRTYvcW8rYkp3ZTE2NlZSMk9hME9HazRqcVZNVjlwaC95?=
 =?utf-8?B?TzE5TTRPUnNIWkFwaG5Oa2Vla09uc2I3eW5PUGtWRmVWWEhBYUlhbU1VTXM5?=
 =?utf-8?B?QlIwNXRlQUpLUk5KaG5UZzB0MUR2ZU5XU3BPVURjVnZpQ0N4eDdsc2Y1VnRr?=
 =?utf-8?B?SEovdnphWERyY28rdmhScXgvYmlvb0ZpMzZBdElUNGpOM3hic3BTcGZySmY1?=
 =?utf-8?B?aGQ4ZnNDK3J2bXdVVFgrTlZJU2p3QUp4V016THRxSXBDZTBVZGRYamdnQUxn?=
 =?utf-8?B?RHJva29PSWFyK0UzRkJKSEJNR1pmYlEwVnU2cndaWEdJTEhpRFhoMHNhSmVG?=
 =?utf-8?B?UjRjS0JqdHJudEhFSzZmbjNVTzZDdmVkZFUrVnI1dzB2TG5NRDJ2SGEvWGx4?=
 =?utf-8?B?aURwYzd1bzIwRG05TjJzQ3ErK3ltMml4YVMvNytycUdySG4zUkJhUk5iVHpB?=
 =?utf-8?B?d3pXcW1lTytMRkxWUFRFR3A5M0NIL09GRVArYUJJZHR4REdkYjlMWkp4emUx?=
 =?utf-8?B?ZkVoQnM2VmZDUEF1bUhJcXN6T1hVZEZ0U0gvM2t0TlRLdURFTEo3ZkcwZ2gz?=
 =?utf-8?B?eTVpV1lFQ2JQY2tSczNjQlk3bG9FbGtqV1hMcGxIa2V0ZTlGMzJvWHFkUm1q?=
 =?utf-8?B?YzlxaVZWSGdyb1RhcWVGYmlSaElkc2VLaUlwRXZiOGtxTHorcTVhRk1FSDI5?=
 =?utf-8?B?SDRHaFB2M1BZR2hBZmZCTnZOZ0lSdkZObWk2Q1BwQ3MrVVdWbm5HeXVBYlVh?=
 =?utf-8?B?cTAxMWlIRW1rTytzR05iMjdSTGhDcHVVdEVhUFM3K0dyTnlvRUFqdWorV1Uy?=
 =?utf-8?B?aytkQ1J1b0RiRlMxS3EwSllGTmJmYjFObUpmdTdIRDdJQ0ZveC9HKzBDUkZX?=
 =?utf-8?B?QzJHSEQxVkpONkRiSVJVdUpsRzAzT3I2djB0Wmw0RXhYejN5Tk9yaUNlK2x2?=
 =?utf-8?B?VzNnbVN3R2F1SXlwNWxZZXNGOTZSOUp3NWpxSUZQQWhXZ3pPYlhmR0hpSGVk?=
 =?utf-8?B?LzM3RllsQU5UL291ZkhDZ0gybE9WRjZHYThLR3lxT0ljdCtGMnFlRFoveGlX?=
 =?utf-8?B?cjFhRmErdEVvaFZtS2VmRTloYW96Z1pITGs1ZXB6ZktlcVc2dkJHQUIxNlB3?=
 =?utf-8?B?NjlvblNPbHZsWVkvaE5rZkU4TUxnZyt1ellXLzRmUEZTZFZwQXE2NU1RdVFt?=
 =?utf-8?B?akkxTEIvWUEwT2FHMHpGMExtU0lZODdmR2dFUVdIcVdkejFmcW1QZnBqcHA4?=
 =?utf-8?B?aWRTQStuc2J3ODJ3K2hTUDZkQTZBSHZtLy80RXB2c3VoTll2RXJndHltTHhz?=
 =?utf-8?B?UitKZFdId1BBQ2M3VXBLTHBod0hVNDhvUlM1NXVvSEtGTFV4cmlmaGtQblBS?=
 =?utf-8?B?OWx6bGQ3cXArUnBycU5kT1RjSDlLaTkvSCsreU02OSt4dnByMFJuUHd0ZExu?=
 =?utf-8?B?WUxpUDdmaVhwYWxJUVhVejFWdVBnbWFKYlRkb05YT05mOG5EdkZaekx1M3pi?=
 =?utf-8?B?a1l4ZC9aVVk1Sk1qcEpSZyt5bzhneFVVcXIwNEVhSlFnNXliakhXTDU4aVJQ?=
 =?utf-8?B?cUZSZ2hmdkJjYkpRQkdBR3JzOXp5NElyRWVJMEJUTWFvaTExVjd0dG1iTmJS?=
 =?utf-8?B?MStEdFJWQjlnSmxoK0pHUWtWdkJ1OGZLN0FESnRPYUtNcmRKc00yZG1aekJV?=
 =?utf-8?B?cytrM3hZZVBpMTZ0dlRlQT09?=
Content-ID: <DCB76BAD670BF046A4D8AA004B3FE2B8@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6d92dde-60c2-4821-15cf-08d92f7a935e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2021 21:22:55.3808 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JZZwMXM9faBzUZk8RKnBe2moTztYKj2TXIFaAlvMJD5F5167LGE4pi/AuDtLgBP/VuSFCHXc4hfJdpvGy2Z4Quif4xV9cMP7g6WScXM1SFg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3437
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Add space to the debug
 print
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

On Mon, 2021-06-14 at 10:24 +0300, Sasha Neftin wrote:
> Complete to commit 3cf31b1a9eff ("e1000e: bump up timeout to
> wait when ME un-configures ULP mode")
> Minor fixes to allow debug prints more readable.
> 
> Fixes: 3cf31b1a9eff ("e1000e: bump up timeout to
> wait when ME un-configures ULP mode")

The Fixes should all be on one line.
	Fixes tag: Fixes: 3cf31b1a9eff ("e1000e: bump up timeout to
	Has these problem(s):
		- Subject has leading but no trailing parentheses
		- Subject has leading but no trailing quotes


> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/ich8lan.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index 5b008c88beb7..a3cf0af7aedd 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -1271,9 +1271,9 @@ static s32 e1000_disable_ulp_lpt_lp(struct
> e1000_hw *hw, bool force)
>  			usleep_range(10000, 11000);
>  		}
>  		if (firmware_bug)
> -			e_warn("ULP_CONFIG_DONE took %dmsec.  This is a
> firmware bug\n", i * 10);
> +			e_warn("ULP_CONFIG_DONE took %d msec.  This is
> a firmware bug\n", i * 10);
>  		else
> -			e_dbg("ULP_CONFIG_DONE cleared after %dmsec\n",
> i * 10);
> +			e_dbg("ULP_CONFIG_DONE cleared after %d
> msec\n", i * 10);

nit: Since there will be a new version, can you put the 'i * 10's on a
new line?
WARNING: line length of 81 exceeds 80 columns
WARNING: line length of 98 exceeds 80 columns


>  
>  		if (force) {
>  			mac_reg = er32(H2ME);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
