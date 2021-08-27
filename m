Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C273FA1E4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Aug 2021 01:40:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E98FF40197;
	Fri, 27 Aug 2021 23:40:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rBx9zlHf3z-r; Fri, 27 Aug 2021 23:40:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 95238401A4;
	Fri, 27 Aug 2021 23:40:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0446F1BF420
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Aug 2021 23:40:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E6C724277C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Aug 2021 23:40:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lk-u4q-AJoC2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Aug 2021 23:40:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8D1894277B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Aug 2021 23:40:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10089"; a="217763723"
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="217763723"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 16:40:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="599436034"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga001.fm.intel.com with ESMTP; 27 Aug 2021 16:40:04 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 27 Aug 2021 16:40:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 27 Aug 2021 16:40:04 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 27 Aug 2021 16:40:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m5yr/YbgcuQULEh9NnSaq9cE6MDq5Ae7Ya2VYqThGdg4psUKXSsPib74damm4si/VunrOFTSpDa+/4Q9yviypcM8Uz337EI1dhsfmSk2DA/2XH/bw/1rYI6+UJL/UdAs+SGkkKynWbc4qVzp80Lxc4kW4KZkHzi9sfJa2EUz941mv74bfO1P6NpKmyXshxpP+40ySuNbqKuhYF2HasBnxL7d08rLDnucHD2vQNOK2F807pWimt7333Ftpf1s198+lAjajkBzNfWqx7dHNnaYi+aFb1HBMiJyU5UGxnwC/8EjzUYW2bYbeSXOMbA5RNPS5Rhs4ea3tlA90mHtn0hAmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xXnenENzKf9ItZnCAN4PJrFSzItdtDcPQWCH59q3nA0=;
 b=igRNPAqKTkxZ42H4DDVlcgIukdPYYxlTDK9lwLgTT6EufPJKlOY/yZK9L/ZP+vOR07k34EH/u93dPVmGYdIxQurHoGOjOVkq2ne0oodyBkHhDceL9LheKiJ9RTBHkbt5xZun8igt8VGmV0vqBBQPv0l+h5UwTdsPHk5ArUvFiPiZIA8CPf/tu3JP9M7ttRxv+8aJ2NZGS4B/Vskp8Jp1Qe9zcL/lRu6htqPG9iTjqRzoLbnbSq2gQMht/ivugpgcdjgFU0LZWq24aFS4Gc9HQJR49ndnfKPwLqcR1Qz8S70eXErp44Mx1SA7WH8B1LOBwISMgJ4YkHZ0+5PkHNBh9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xXnenENzKf9ItZnCAN4PJrFSzItdtDcPQWCH59q3nA0=;
 b=WF3IuoW7H8EbVCUCQ0x5+Eu2hgRmQLIFSTJClwNd4v7VN0mAIt8UTuVKzT8XHo7CBoSbyKT9P+MznCMFN36rsBB7+vz1PvjlCm4bvHKmNmxHdW4UTuH942yNF+who/FDey9hohi72Y1GwTTkCcNggFtuAbOJaTIDbW2edckyUWA=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB5195.namprd11.prod.outlook.com (2603:10b6:806:11a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.18; Fri, 27 Aug
 2021 23:40:02 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42%6]) with mapi id 15.20.4457.023; Fri, 27 Aug 2021
 23:40:02 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "davem@davemloft.net" <davem@davemloft.net>, "trix@redhat.com"
 <trix@redhat.com>, "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>
Thread-Topic: [PATCH] igc: optimize igc_ptp_systim_to_hwtstamp()
Thread-Index: AQHXm2cxSBuJgNWlv0ClU8o5SUI9xauIA/OA
Date: Fri, 27 Aug 2021 23:40:02 +0000
Message-ID: <73b1637111236bebeeff08d3275ddd5d1da9637d.camel@intel.com>
References: <20210827171515.2518713-1-trix@redhat.com>
In-Reply-To: <20210827171515.2518713-1-trix@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: davemloft.net; dkim=none (message not signed)
 header.d=none;davemloft.net; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 00dca93c-6c1a-4aaa-6ebb-08d969b3fddc
x-ms-traffictypediagnostic: SA2PR11MB5195:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB51958DAF900669747E26455BC6C89@SA2PR11MB5195.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:230;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ilmHkpeGfvBlGLdZr23bxSNka6l245WP9SDWbxl3zeFhjU3GHEJ/uRLAO03nMM2K24WQuaCtC5lmwTE38rEUMYGp0z53Xzr2nOZoKBthpN5090EvUWyCGwG/y8BHPaiChQCusuviccE8SqEdNSBv3FlkaO7umNWmmxB2YAFszEDCgERqoovlvdGhrUNy8OlPeWnZjJeSpMVt2DIIooW+Bc8YrDAa9R3Dwk3X2KySCehPBm7YtZH3ns/jfdOgMzIb2FrUkVg/Ac0N8qmMnV135uzli1eN998JdTe+T2g1rzBrc8U+Gr/rU5vlRNRu6vyDMqOkvH5TmE7rWykdY/ZHmx1MOpUqpsEr9flPt1C3f1n221WUUwpCZjCFxmTZAT0gH6/Lc0iZWjOWEckKj846uYLqhfOc4lybaEGRjJdVMbqoOlcMnHU0UwDMUSK9IMO+fgOhiGL1nhIT0SyLB9L4rSCCcBLwDK/XVFRvLbqBjfVpkQ74vMkRgyUZ29qMm6GCzoNf9R79CGnmkcdgMszGAjdbT0ZoopClP/ft/kkM3Y0NWXpNG9DSCyF9VvMiT7Sg+2ZToG+1R193QheGRCLWuZ9ew55Ja/L9MJ4ga4vioa+dMRB7ZKw4toRstXe2o52kCLLckT6r4WVpCMX1U5RO3u/JB/XEO4ryvxdi4GZYrdo7WWfDMuQLeXr0G7/d76lFjEOLKUuqmXQYadMSuJOgsA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(64756008)(66446008)(6486002)(66556008)(5660300002)(66476007)(6506007)(26005)(38100700002)(38070700005)(2906002)(8676002)(122000001)(91956017)(8936002)(66946007)(76116006)(71200400001)(6512007)(4326008)(2616005)(54906003)(110136005)(186003)(508600001)(316002)(86362001)(83380400001)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NEx4UDd1czZpZ2YvcFJERG9jcG1EQ3JpMFhlM1pEYUJ4TFhWdWZDRTNSa3Fh?=
 =?utf-8?B?WmZ0bkJQdTZoaHhmT3lDWHMzcW8zNUVseVB0a3ZNZFVYRis3SUFzc2t5OHRs?=
 =?utf-8?B?N2c2UFY2TmpzWGNnSlFzS1BVeDROUjJWeUdEcjVJNnlvbTBwaFdZdGtDYmdN?=
 =?utf-8?B?alJwdDd0ellPeUlDUUNDdmF0R1IzYjQ3ZE5RcGN4VGYzU2x3dVJSN0MyKzJC?=
 =?utf-8?B?dEFudjMvR1ZYNFhUN1BYR2JGQ1JmWGFkSDBHM1IrN0FsOXNOaXYvQUNrbWFY?=
 =?utf-8?B?YjQzYUwxaDl4N01udTVVeXRWQTJMNGI3cndONGd5U3lCUkpvcUhkTFh6cmZR?=
 =?utf-8?B?S1Z5OHBzUVZ2UDRXQkljUTF5MGQ1TzFhYjNXOWVtYUdjU0ZUOVUvZ0R5aDhR?=
 =?utf-8?B?TisyZVZ1V0R2QWxZS0VML1ZFZ1oyTXBCOE5GVGlMSWYreVBsMG5UdTB1WDVp?=
 =?utf-8?B?dHZPeUdJQVdveS9hR3ROclhLUU1RTWduMk03bENIQVJ1L1VocWdQN1ZCVWJT?=
 =?utf-8?B?M1JWcUFkbkpnY21oM2V6NFprbTJFSUM0Ukp5c1VtcmRaLzNuWmoxU0dMbVo3?=
 =?utf-8?B?Tm5GQmJOUEZsYmJvNzdzaGZBN05FdDBBQmVtWVdmblVoTU1wOXhoQUxrNWJZ?=
 =?utf-8?B?OWFabEJFOWk1b0dLTUFHaGtsOGRZNU9EUHBQMHdURGpFZ1NWeUJGNEdQV2hD?=
 =?utf-8?B?anpmUzczTmZwdWRFb3E0Nmttek54ZjhtZGhubWRhOTVYRGVGTENZUVZiZDhH?=
 =?utf-8?B?QmdjS0s1K2poODhET0NoRWd3YTR1YjhrdHphU0hiQlRjaGNpL1VFU0pvbVJj?=
 =?utf-8?B?eTQ4S0J6NkVoNEpXa1h2N1RTWENwdkVBZmZ6OWYwMDR4WjMzMExQS0ZBaTVs?=
 =?utf-8?B?TnQwOFRQYTZSSHorOHRtUzRENFlVWmNUMFJETkw1MlRXZDZORHlaQzVXVGlO?=
 =?utf-8?B?d2JyYXNtK0VjcEdOSk1xdUgxVEc1MHRyZTdseWFLMWlaTmhzM2NEZU9LbVRJ?=
 =?utf-8?B?Vjd4Z0pTY054ZW9DbE5pakZlVkxrYmZiKzMyN0RkWDc1SW1WRndaYmFQMHlm?=
 =?utf-8?B?cnNpTjZUQ3hkQ3Mra25zUVFEVnNmNmNYbmhIRjZ0RFZGUkx6WkJwVzhKUjhF?=
 =?utf-8?B?aThGbzhITFdzUnhEWEFheXA2SS9vYjNDK21vbWc3c2tvZUYzcURKOHUzSVdl?=
 =?utf-8?B?TGtqUTRqd1JBeTlCYkpZUjRiNVB6L3RMaGw1aVlleWEreHMzdVA5ODZxeXVX?=
 =?utf-8?B?VnZld2hUeHRteG9HQnJkYTVGU0NhcnVqOWtSL2VTOFptcDM2WUsxbGxoN0w5?=
 =?utf-8?B?WFNmTUdqYjFWcTBxNnY0WnVVME5lS1RNRXRaT3dYN2Y1QlFhVUF5UFNkaURX?=
 =?utf-8?B?Z2dkRDFlTjJLd0xjUnhaVS9ST3hzci9mYUttb1l5aEtqVC9KSVh6cFZqUktQ?=
 =?utf-8?B?T2cxNFNNU3drbTQ0SW9mNWQySWtjNHN6cXgwVGVhaFVuWlo2cGlUV1o3cEsx?=
 =?utf-8?B?WGk4OTFqaDBtS1QzcUJPVFNJTm90bjVJSGdwK0pib1dCTHlHcndqT3FKZnNh?=
 =?utf-8?B?K0tGNUJMWUVDYWYwSkxDYnpzQnBYb3hMc0thWSt2YjlwL3BSRGdnZ285TEpa?=
 =?utf-8?B?cUI4TXZWYnZueGlTWTdwUzdkc09HZnRYSFVTUm9PV25GbGFEWGJldHU4WWRT?=
 =?utf-8?B?bmJ5c2QxVm1YZm90bnExQkFuZ3RYaXhYWlJZZVFBdC9qYWNNY0ZMS3VqU2hR?=
 =?utf-8?B?ckt4d0l3OVNXQ2FVZlhKM1VoS0Q5ZkVjRXJvLzVHL2NiU25pcS9lSGRxNXN5?=
 =?utf-8?B?eStqOUc4c2tNVGRiRGwwUT09?=
Content-ID: <B13713A3175AFA4DA2D459E6B9D3A747@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00dca93c-6c1a-4aaa-6ebb-08d969b3fddc
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2021 23:40:02.7371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u6P5eYZbrhsSurT3q2oVubHEWyVmvUa6XkT4TgeRkLale1NvifY+gCsfMawPh/LDaGGbdH7O0GxiEItFeFfblcnek6y0tmyo98SxL+wIjyY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5195
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] igc: optimize
 igc_ptp_systim_to_hwtstamp()
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2021-08-27 at 10:15 -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> Static analysis reports this representative problem
> igc_ptp.c:676:3: warning: The left operand of '+' is a garbage value
>                 ktime_add_ns(shhwtstamps.hwtstamp, adjust);
>                 ^            ~~~~~~~~~~~~~~~~~~~~
> 
> The issue is flagged because the setting of shhwtstamps is
> in igc_ptp_systim_to_hwtstamp() it is set only in one path through
> this switch.
> 
> 	switch (adapter->hw.mac.type) {
> 	case igc_i225:
> 		memset(hwtstamps, 0, sizeof(*hwtstamps));
> 		/* Upper 32 bits contain s, lower 32 bits contain ns.
> */
> 		hwtstamps->hwtstamp = ktime_set(systim >> 32,
> 						systim & 0xFFFFFFFF);
> 		break;
> 	default:
> 		break;
> 	}
> 
> Changing the memset the a caller initialization is a small
> optimization
> and will resolve uninitialized use issue.
> 
> A switch statement with one case is overkill, convert to an if
> statement.
> 
> This function is small and only called once, change to inline for an
> expected small runtime and size improvement.
> 
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ptp.c | 18 ++++++------------
>  1 file changed, 6 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c
> b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index 0f021909b430a0..1443a2da246e22 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -417,20 +417,14 @@ static int igc_ptp_verify_pin(struct
> ptp_clock_info *ptp, unsigned int pin,
>   * We need to convert the system time value stored in the RX/TXSTMP
> registers
>   * into a hwtstamp which can be used by the upper level timestamping
> functions.
>   **/
> -static void igc_ptp_systim_to_hwtstamp(struct igc_adapter *adapter,
> -				       struct skb_shared_hwtstamps
> *hwtstamps,
> -				       u64 systim)
> +static inline void igc_ptp_systim_to_hwtstamp(struct igc_adapter
> *adapter,

Please don't use inline in C files, let the compiler decide.

> +					      struct
> skb_shared_hwtstamps *hwtstamps,
> +					      u64 systim)
>  {
> -	switch (adapter->hw.mac.type) {
> -	case igc_i225:
> -		memset(hwtstamps, 0, sizeof(*hwtstamps));
> -		/* Upper 32 bits contain s, lower 32 bits contain ns.
> */
> +	/* Upper 32 bits contain s, lower 32 bits contain ns. */
> +	if (adapter->hw.mac.type == igc_i225)
>  		hwtstamps->hwtstamp = ktime_set(systim >> 32,
>  						systim & 0xFFFFFFFF);
> -		break;
> -	default:
> -		break;
> -	}
>  }
>  
>  /**
> @@ -645,7 +639,7 @@ void igc_ptp_tx_hang(struct igc_adapter *adapter)
>  static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
>  {
>  	struct sk_buff *skb = adapter->ptp_tx_skb;
> -	struct skb_shared_hwtstamps shhwtstamps;
> +	struct skb_shared_hwtstamps shhwtstamps = { 0 };

Need to re-order for RCT.

Thanks,
Tony

>  	struct igc_hw *hw = &adapter->hw;
>  	int adjust = 0;
>  	u64 regval;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
