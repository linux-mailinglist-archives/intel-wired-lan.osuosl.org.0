Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F21A8A786C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Apr 2024 01:12:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC9A28146E;
	Tue, 16 Apr 2024 23:12:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2F-pmAem79eT; Tue, 16 Apr 2024 23:11:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8948081467
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713309119;
	bh=MmEfj/BFbOClSJxLsKePDBiv3d45Jkdxf0xqvuNd/K8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MGhb6RzXZfq6pa5Qe5i9usSaCI8Qw87hNF4ahP5xT6mGllGQz3GExFFfbhj0Q8p6l
	 XdGjd7VuyPcKxnwHNYzJSrrc7bFVfUgFHdtW8MX6AAM6wjuGWJ7dcLPQ6cOCvUSWrJ
	 RFPGziRI5HOQkMq766gapBZ8uRta95evDJpsfpZK/rqR6laPyNxuXPzJ00hcWSX+Zg
	 r+hPbobg1+7Tz7xu8bve96w3tpeBAJUKaAqhN9zgo2Ac5Ep0aTDunCON5fSZJNXHjb
	 tUBDVj4kUCzGgR2YOuE19Drix7AjGsu/okT40wzQ9yBCrHU17ojSDzZ9phrjlZxmmr
	 M6JHG1zOpBwkQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8948081467;
	Tue, 16 Apr 2024 23:11:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D0D71BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 23:11:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 173AA4026C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 23:11:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VEvrudL2DNoB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 23:11:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=tony.brelinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E2D2340245
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2D2340245
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E2D2340245
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 23:11:54 +0000 (UTC)
X-CSE-ConnectionGUID: rDNYXd40RfqWKyzmfeZDpg==
X-CSE-MsgGUID: z04Bp/MmQQ66NcscISGPFw==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="26292730"
X-IronPort-AV: E=Sophos;i="6.07,207,1708416000"; d="scan'208";a="26292730"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 16:11:54 -0700
X-CSE-ConnectionGUID: y5pV9CKsQX2a47j636nkjQ==
X-CSE-MsgGUID: B6AwO1aoSQyvjMkPEILXbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,207,1708416000"; d="scan'208";a="22474941"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Apr 2024 16:11:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 16:11:53 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Apr 2024 16:11:53 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 16 Apr 2024 16:11:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DOMtixRUHv+fnucDPRAxPFPo9ymt6xKZYXEUahOe0wOZrnSJmVK1ZsgNJU4uEOCq4bDuXg5wwdgVuYt2LC6fmSI89br5Y97Vyu6M0xSUX7NZoqU3QqWKi23QEcj9Qn26y3SD3CX1WprzNiKpVn94I58SfpCYGu4mir2QOYeUc6X77JS4M/0wjebciLH32UqaaGyaXQIftK5HMbWAhtRcVnNRC4MpcPIjIxT0c3CXN5+twueK85yCFUrLXiev1f5MAtlPVZKjR7WP5HNBba8Tb9gkQkcm3XF4d0E3IPb7g4/xmHVhKfTdD+CxdHLh1TMYx/2Mcc+fBkzoIjQrykgmXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MmEfj/BFbOClSJxLsKePDBiv3d45Jkdxf0xqvuNd/K8=;
 b=aSw7ODCiZo2JgP3RlpRaTfbMXh1OfWfPro41rEaWcqktCn7cjEFbvNZfCmsGoWFrfHZvdW3aB6x6UXs2UwZGoTlcfPHXKUc01X2tWB4aeGs78HAps4MPi8vij9+E1fMucY5AUkFnFSkLOg0TXQVfNrJWxAYEUaHAZRUF9hv/REf1EnGNK7hu48ihwPdPj1TQ/Qo/ym10EfQFTrAji/TG9m/SPYx+cpav1p/i02i37Jy3wFTQGETQr/9u5Ry0epXDUvAzUvxBRxFOZ/JYcRXEjzGvwfICHxr7gPmDtC3TKMwiB1OEQqgyxL7lwlSQCYiEMCvBxGEDLhxOaoaSrkL4ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8115.namprd11.prod.outlook.com (2603:10b6:8:12a::12)
 by IA1PR11MB7823.namprd11.prod.outlook.com (2603:10b6:208:3f3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.50; Tue, 16 Apr
 2024 23:11:48 +0000
Received: from DS0PR11MB8115.namprd11.prod.outlook.com
 ([fe80::4cbc:6f18:8a83:eba8]) by DS0PR11MB8115.namprd11.prod.outlook.com
 ([fe80::4cbc:6f18:8a83:eba8%3]) with mapi id 15.20.7430.045; Tue, 16 Apr 2024
 23:11:48 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: Erwan Velu <erwanaliasr1@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] i40e: Report MFS in decimal
 base instead of hex
Thread-Index: AQHaegg6neZffGD5e0S+FmrljmaqmLFrshmw
Date: Tue, 16 Apr 2024 23:11:48 +0000
Message-ID: <DS0PR11MB8115E4BC956EDCC0EF61DB7B82082@DS0PR11MB8115.namprd11.prod.outlook.com>
References: <20240319141657.2783609-1-e.velu@criteo.com>
In-Reply-To: <20240319141657.2783609-1-e.velu@criteo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8115:EE_|IA1PR11MB7823:EE_
x-ms-office365-filtering-correlation-id: 118f9975-ea25-4651-65cf-08dc5e6a97dc
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HrkfOHg11hw2mRRKbQxawqsyA6z+ROrVk230k+NPfNOxmmwoIEX1Jxa0g/bQaxmbyM9LLi5fwq8VN4fD63yAyopiPC49KGFZxJj0kPoEVy+n5eVOIGOm8vCAJn1L1EFBcVtEC273uBjy7CeBZQCRvBkX0TkwbImsMZRNwVR/WT2Tn0VBkcQVxk/qVzi1xglqltO+wZT9EtycjWN9PytbHHkqKKqyCBe+JB67zp6x6PF5A1+X8CkYdj37dLngE5tXkLs8EymuCnKrsZ9YFmELKnL9DHhfUiFMN4HVEWK0P1WonNIE65wpbjjNT37atgLloOAi7SE9Lix9rh1bmO4+ltB+mhb8wuAeJ2RjVBjQmijLBziWKjST79Y1MLez8ouqpT5OTzjCWVuqdG6HbyK5rTgItAd06pv36VU1Pu+OHwbAtL7/OF75QtmYghXCUeNnI413gS/+VHypKMfel5C7zqYiTp6H4efJ2EuxblosOtcuBQlXwPK4vOks14IUqf0U+LTyefZywItx5D4839ad1MzaY842vE9GvKj4gPrqKs75Y26LA0Yit5zd57rylbj74/8zYRRoXZ9uMjkew0ZtpZWqi9M7ZivFux9aVKyfn2DmJebz65v3XfV2yvX5/O6bQgRbr+6/vSrQyR38gsFEEZxv8fIRPkruiKJjedLd+eFLeGDBp+DXUQ3ggyQa9+gx3W9Vfbbzq+xPrrJZOTNthw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8115.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ptnzhPTpFZ+CKZJ2BdTs+JDZgEEwF1sUnkAYm/M5zz1wehb2Vv7udF6PB44C?=
 =?us-ascii?Q?vb8uQEmkDbFMGy+7L1X8ymUNHaPB2UElti0j0nzGNr7CutP2XTG731jRG3Bd?=
 =?us-ascii?Q?4E5xOqO6RSORORxafHxh0G+RdHCb0ufk110IrcrVakGaJH6GDiOX3F04E4SD?=
 =?us-ascii?Q?cMOOb4IF3Ix9SpqccAYg3YgbY0Eb3OuNEoI8CpGLG0GIJ49IG+L8Pu1zNM4V?=
 =?us-ascii?Q?z+L7deN4IgHk5I+5VBAxN9alaa+aj8r2hBwlU1+86Hs8HQP5xWTlD70obP7l?=
 =?us-ascii?Q?K+GkjUXbaUDdDJ8x99TQwhc/vb5lODn6tLQvomTs98VT16Ku5JiS3r9yhoU6?=
 =?us-ascii?Q?pLiMcilo5nuyelU6G9nVWhHthDk1nmyj8FfHti2lrExzxxnFkM7rG3juT1vJ?=
 =?us-ascii?Q?coyVRC6SU4CVI6ObqAgZCMhs+OC//JX/kfxt3cA8g3ci1ojfHAkaZ3yDxUqH?=
 =?us-ascii?Q?RzwAk8dl92My4/n7QD3XmqmHcw1RzKaaJoyjREHfEdNsKPHgLjG8eqwqSEwJ?=
 =?us-ascii?Q?tj4rB+vKQDqAkjV2qPvG06KQddKf9Ad6GM1A+W1fBdjKXHXb2YVMcQXLC4ek?=
 =?us-ascii?Q?LtJ98Y3uFlzMPZmQBxp/2ng/D/tg3gi/Lj44uRhugIAQH+mFp64sMAAx12tH?=
 =?us-ascii?Q?5Uc9Qi1QU2JtX9pI9kkZEXByK+0KjojSAowIXHJJZb/ogUCiUJ3soCy5GKUo?=
 =?us-ascii?Q?yUER743JMZRZkxBnRGdotZhXLIFefALbOjXD+iRIBYQks/iYURD7nrkjTE/B?=
 =?us-ascii?Q?d/jHrBLnSnarSnknV1HOyn9Ya+y4ykNcfX+nZh1ZbdMoi7P5cCZ0vzte0r9m?=
 =?us-ascii?Q?zS8UtF/OAjdC8kbb/w8w22QSmH07YEMLNZCRCUum0J80AzvM/S0nQLVCkRYw?=
 =?us-ascii?Q?sd7Rc0FuqXfUnZzl2/JrsOJqH/CncSvwUN2Ppol5mFl5XpIALWDDD1i1iSxK?=
 =?us-ascii?Q?YBT3EvACUNtvRfhCBfIn/uPIxrtFlzB8y90bl14yLEYv0nVDELQdmZyOa1yx?=
 =?us-ascii?Q?FAqt04ztwvIzHXogQmmbSvz5ZZGyLZADx43EDHYqO754CI2FTyq5wsD10Kj7?=
 =?us-ascii?Q?0DdJ1r9PhB6wMe+4mVbZonVgIH021zPyegTgapdAlayGtXeQpTkgDcwmqok9?=
 =?us-ascii?Q?oTft/VE9ePUG4lGJCZlH05oRh+ertpQJAXipqgDeHkhSAWMhRGfXg5Z1mpFs?=
 =?us-ascii?Q?QMmKvm9MDtC/YtY6UBQDjKCwE7ZvNWCWR5+9j6vwornVCU8iBmBFsEOUq6r9?=
 =?us-ascii?Q?BUNkEE02JIFCl1l4wfACGhUrSDAIwePYIf3ay/UKSLs9Mq8Cn338JED8bkj3?=
 =?us-ascii?Q?iXUzbpju9IcxdhcgZlHI/8AziDWeaRUy8QcLug8MGYhI/M4JEdz0FLZH23P7?=
 =?us-ascii?Q?UFQXu7beU69Cgm1Nx/ZUJeMpaoI3ouS5K5zd3j1PLeIsPonOKPPV4nmCh4QN?=
 =?us-ascii?Q?k3JFoKvk9Bb4y0L36kD4S2RcwgJ1Gno7yUFeeKF0o9DdwSDbmTdCFkMpuKwh?=
 =?us-ascii?Q?4KnHzKnci3paNg6FHopLhLd59vBrQLHoil5yKoOXJxw7zD+P0EZyShJfIk3r?=
 =?us-ascii?Q?IQJUL8WTubAhpYsZNkFLiBNueKVFKf8FUqfhS5AO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8115.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 118f9975-ea25-4651-65cf-08dc5e6a97dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2024 23:11:48.6926 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hkh84HHn7oyJHkRj6fNYKPVH2ziXZxLV2VdNm5QNRQPeUuHLqBb51VoHPESRmokkGiAHwAH7IRw7qOYiiBE9agJtdekMroeEzjkH+QF/Mqw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7823
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713309116; x=1744845116;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qEkKHUwV5jGatM3QdKIA5AJj+husC7sqWxD/laf9XTQ=;
 b=LXJRIK9e3pkehMrxPGjpWVgdzOOsYQvALesbBBNobM0Su1HNyPN9D0H3
 rMkijd7q1xU+nQPWm8T0u1o2ES1wiHfq2ueuxq3agDvsFx/pnbmQ3/DQc
 5fm27qD7jhwtPLhQMi8dhgKkE58I08vAcV91cTMFH1i9HQVP9blqCWmIb
 hzVT0y8yfbcNjBpKsJeU/9iYf2Wy3h5n+8AxGsKihbid3qMkBybMhHhxJ
 jCZAchlqNi28/ojvH3G3CwNg2Wvdheo1qk8XKloDZFdrY1sbMcHqmybdO
 jg4L8nCDXHcPUNmH5dQvYKoLHaVpz2ulVmRLtIcqWwXSGIXC+pHZ/XgpB
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LXJRIK9e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Report MFS in decimal
 base instead of hex
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
Cc: "Velu, Erwan" <e.velu@criteo.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Erwan Velu
> Sent: Tuesday, March 19, 2024 7:17 AM
> Cc: Velu, Erwan <e.velu@criteo.com>; linux-kernel@vger.kernel.org; Eric
> Dumazet <edumazet@google.com>; netdev@vger.kernel.org; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; intel-wired-lan@lists.osuosl.org;
> Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David
> S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-net] i40e: Report MFS in decimal ba=
se
> instead of hex
>=20
> If the MFS is set below the default (0x2600), a warning message is report=
ed
> like the following :
>=20
> 	MFS for port 1 has been set below the default: 600
>=20
> This message is a bit confusing as the number shown here (600) is in fact=
 an
> hexa number: 0x600 =3D 1536
>=20
> Without any explicit "0x" prefix, this message is read like the MFS is se=
t to 600
> bytes.
>=20
> MFS, as per MTUs, are usually expressed in decimal base.
>=20
> This commit reports both current and default MFS values in decimal so it'=
s less
> confusing for end-users.
>=20
> A typical warning message looks like the following :
>=20
> 	MFS for port 1 (1536) has been set below the default (9728)
>=20
> Signed-off-by: Erwan Velu <e.velu@criteo.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>

