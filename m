Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC1B62C067
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Nov 2022 15:04:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 32CD481B71;
	Wed, 16 Nov 2022 14:04:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32CD481B71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668607489;
	bh=wJuSkXQdgvr6C7QC2fkvEOiY0su0DU8RR9fOcybgsQo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xGvPOQ99i2XyAbvBDvJt6l7c7+kSmYsUedyT2p3ADQrW7GF2SfSKRLIzMVo9f+WrY
	 eJERlnGpv7BaD4FXjxJXG1gfpp21XRJP3MNnSMLBFJyWcUIpbOrISIVzx/Bt0uPwc5
	 f3dHOlJ1tQI0sq+4xP5sVHrSk92+ALvUUoWyUAzrZ+VJ3GuatdOxFMU60H6fMLmQmy
	 MeKpmvYsHRE1dUvzNtuJLeukp+l6u3VUb156LnuclQfEdKzLPwDuJA/kKmi10WpjhQ
	 82OJmNkvkGuH+bW6V3mz5uxLWk/+GoqOeqfRj+p6RfzOSZ2bt7+k4f03za+o2+uHCq
	 VdqSprK8vhkDA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 90bdkYU-5Gm7; Wed, 16 Nov 2022 14:04:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 490EC81B26;
	Wed, 16 Nov 2022 14:04:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 490EC81B26
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CEED41BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 14:04:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A8B594045C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 14:04:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8B594045C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U1S1GYUKtYT3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Nov 2022 14:04:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4B5240165
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D4B5240165
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 14:04:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="292939645"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="292939645"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 06:03:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="968434647"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="968434647"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 16 Nov 2022 06:03:58 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 16 Nov 2022 06:03:58 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 16 Nov 2022 06:03:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 16 Nov 2022 06:03:57 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 16 Nov 2022 06:03:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iga34WqsHBFW/FUNmRPSn1rR0knB5mcMqE5oeJzUN12RW4yjuzyTK0QwuC7JpGDfrqsltsP2iXgkW+JADCLjc0fKToU9PIIAa8u145dndMb473jqQOT2NclfWkz3Rl5oLbUvih6axnArnRO/fR1ueKVDYgGDQd8/svDtW4SiWlUYdnhorM1VJdySpoqnVp3hxmO0Rnpi6ufQAyXoZBhrnTXHdaLXQex3w8RZffVtiQP618QbQOjvRGQEXVp/YIgrBNbyGXUdkJ5U5ZRhdxjIg0qHdQNiUKKYT0pwA5Udxly55s06m9wE8Ehx/2/aaT0VBp9q/pcQbrv+pp3VkJJ8Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tjAgB6Bq9lv+T9ztFhKN3NEeVtlw0Avq02CqnKD/3Ns=;
 b=RZzkJ3a2392r6lh8lFU0WsqXCB5FulE2eOiH892PdZDlqMIMyoNnEL3R5HBiALY0o2JNPMAHRLAefBLm75GWXn8T1Ile5AKk9IiuiqT8g1B3LkVwcLRJrVnq6VGje2TIRk6mpDMIKepQPxSQmSckEn80mMgTzqv7R44Y+G3cyTcvZlYqWRZaSNntd5iUNQFtJHzM5g4yeqtYAZ1lfJ4zYlCDkkRBhmyYc25ZBn1823M121Web0r4KL1nj05McFXx7hBE6QY6Mb/J04boPmNcwAJ47n5pwfsYZMdw1EotRdjpizqDFNUUAgc7X/C6zf4Y5kU0bsk8xtPk7uttVjnVmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB0029.namprd11.prod.outlook.com (2603:10b6:301:67::25)
 by SA1PR11MB7039.namprd11.prod.outlook.com (2603:10b6:806:2b5::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.18; Wed, 16 Nov
 2022 14:03:55 +0000
Received: from MWHPR11MB0029.namprd11.prod.outlook.com
 ([fe80::a419:6e81:fb4d:9f40]) by MWHPR11MB0029.namprd11.prod.outlook.com
 ([fe80::a419:6e81:fb4d:9f40%3]) with mapi id 15.20.5813.018; Wed, 16 Nov 2022
 14:03:55 +0000
From: "Saleem, Shiraz" <shiraz.saleem@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH rdma v3] RDMA/irdma: change name of interrupts
Thread-Index: AQHY+YWWGmR6c0140kOP4XMw14swm65BlOFw
Date: Wed, 16 Nov 2022 14:03:55 +0000
Message-ID: <MWHPR11MB0029B7EB325BAC3C4495210EE9079@MWHPR11MB0029.namprd11.prod.outlook.com>
References: <20221116062120.15025-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20221116062120.15025-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB0029:EE_|SA1PR11MB7039:EE_
x-ms-office365-filtering-correlation-id: 2b896e0f-9d19-4465-97f1-08dac7db6651
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uN2iOfpyzKNr/Sj3Iuk56twTRTzKKdoDKegpN/lJ/0MojGGaCiNqHVXxxZtFnTmlbGO6t8kzoROpMHRIbA4PCnYzAwI7hkV0KA3NiMdLxv0pyLpIPdL/p9VjZMgdGGLWr6rGtKB8uayWt6P0Qbr5PTM53cgstywDiQZxGVno3Gy5wuoZGyDpgS+5xVNmp0866BqPSR+EWKRYuZuOk/Aaqp5/ivaLcFCez4EXatsOO/shprgyrFpS2dvTlK3DxTwrHQeM7f8/A4XPHg5uqK5wJIa4u2le6Tlv5lwKlfAhBdgMkxNDXDfRuQjnQNeML2veqJ1PjM8yfCk21Jh84cMciz/BWxmXuTgnA2RNuITy8BsmO5+q2f0i7wUSa7zBQOZRjQZap4c/jEPF1W5kPY0twjmEkjljk4qil+sdUtH6yUJfZp7e52bERCGhWws3giXyfOPGu+7YrMWGG27Sos9GmhVayPMPcrX5YjYxfF/RFg854BLMr3imr9C/sS5eOJXl4sxSTDMk5R6ICz6MfsFgsyJvfCVpOFg3Vzek3TW5mIS3GcM55gy18uxGMTIiurHQFTUEaSbWIHSwaHLnv5z4DH+qs8gO/8qdvt7khN5fgi4BfHALUdlktSC1NLPW8Ixs5akUlGm24MmYpfhM70UkxrLc1K/r4MbXCso1THBq+b1nIrtyENSYv61ZT693ahpWgjwKiX3u1kf2cQrZYoOhGRSb5/UuwtOevcEWMG8Ll3vT57zmolJhb8O832GViQ6kKnqfv7aq7F95ZpTevDL8Bw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB0029.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(376002)(366004)(396003)(136003)(451199015)(41300700001)(7696005)(6506007)(52536014)(8936002)(33656002)(4744005)(9686003)(2906002)(5660300002)(186003)(83380400001)(26005)(76116006)(66556008)(55016003)(66476007)(4326008)(64756008)(8676002)(66946007)(66446008)(38070700005)(478600001)(316002)(54906003)(122000001)(82960400001)(110136005)(38100700002)(86362001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2xhKQCw0kioTeHMrI1z5lVlesPA+Ypc+IKdb3R/BH5JtbRgsyzB/IrHDdx+7?=
 =?us-ascii?Q?wxHEfzw8XprRKD42VOI1+8IkeAgGAwdSeb25Ol4pRZeKR4Oo1FmhlLgG+M0x?=
 =?us-ascii?Q?k0bMQHZXwjuxSZwSXr68vTP3Xnwkl05LB/b8PzwAakXAwneI5YfRbdoX3Qd0?=
 =?us-ascii?Q?zy1iiqptV7G7wM59HL2ms2qQgteumR0POFBt/sJQUec8A/FZHbnu3SCQo5A3?=
 =?us-ascii?Q?OSPYRox4Cvmf+m6RIH17SXezyhkUoGzWojjTHrhgPL2ssiPnyspq5dIVPI2W?=
 =?us-ascii?Q?fE8n7k0gHR38mvK3zjE0w704/uXP7WpAShVSltwIQypUgof3Ve2GZ9X25ayo?=
 =?us-ascii?Q?ASfRXupVZXGlwA6nDKHzZ+uHxDfhEXpWEx8qnfEtWMOc4LMq21LZmcvqi4Qt?=
 =?us-ascii?Q?hjf/SJvCeB3UJYkZ4Qr8ReXddjY5tVqOrMKP5+GExvn3u6jDEHPpC5Z8d+ns?=
 =?us-ascii?Q?LALr6Ph62qbsXeWiKAO0vt//rkLGo27t/FH5S9phFsMfOGVb4mM+3ou2svdJ?=
 =?us-ascii?Q?ABiiMrgrbD9zgxJe7oi6WBYDcZ7hRjMU4Tvjq915AGHQl22qEZIkU/5Ng6r4?=
 =?us-ascii?Q?eaOZI1zm/arPwXY5foQzZmNjaLifg3C6KxOKQmn3OVcrac6OXlDjHEPCm1a+?=
 =?us-ascii?Q?U98zfXRFVTYUimPTBIz+NMhx7nY1VHqLxlUlXfyGxSNzYXgdUxJ5RngpSrdy?=
 =?us-ascii?Q?WJySx0o8faohT7sCi9oys2pYAIWJlGhhY33OpIQk80YR4cw7EjQiNKWCmq5c?=
 =?us-ascii?Q?TLnHsFAwwFnO/BQWoFzejToXNP/tk3N7wW/wOviZxCIabyzZUhxQNX6mxcWW?=
 =?us-ascii?Q?FVtUCqCAiN/+OMGWzZEvdRgTO9BEvM1RQQp8A+b3Z1/MaoEQITNLY4DNIa7u?=
 =?us-ascii?Q?CFXzuZ8LCh0RKJQAeY3c05NLDlgo3dU3+ec3zHEMbF4hPG6ZKcaB23FfUuec?=
 =?us-ascii?Q?4eWXEDKCMQrvpf3YoU6lgC+LQZJfMYk8BpvxxSY+a8fb+6KlAdnm3dZj/FGo?=
 =?us-ascii?Q?oc2d4wutItqVVynIK4MBjymXYlPzfKuDigQ6pCmgsyN/Zy+PycMvp/5sBQSN?=
 =?us-ascii?Q?0OLcoOBuytxcGUgs0I5Qs3Y0d8weAewLJxM0e3PyV7BQY41FmGrixwA4nBG2?=
 =?us-ascii?Q?uxRDOd0NvvadRvpSxRw9D37BZnPeGUGWse7p56X6wvUyHbpshXS/LJJrLPBb?=
 =?us-ascii?Q?7f6v/UPtZIpJOicf8sNmckVcOy0HduhQ0yT1dv6fRc1Kuz37a1W7sF4j1PfP?=
 =?us-ascii?Q?0xQU9+1eRwQQEnps6TfT7ZRjU16GIsN2T/oji+R18HzzJ5iReQuM/vn89Jrq?=
 =?us-ascii?Q?sypk6tGr/zVqBK8+tzq+3LsE9XHt2YyJ/u4p8AfnFntjqngxOByeWGB3wrdT?=
 =?us-ascii?Q?F35T2TKvtTnLKapc3ICH6wF6fs9tZZ3gd/rkHfS+0yOzMeKu98wtMlH+81VQ?=
 =?us-ascii?Q?C+USjJh95fjd8Kw/+pZ9eZFmYX3YH9GiVtKpzBp6lvb8Afpd7BhjFXq1ul56?=
 =?us-ascii?Q?AAdVowULKYLOPod4Ns00YBD+WsOolFLUfRvjO3bdKWPd32sgV1J19t+1Fkep?=
 =?us-ascii?Q?hnnfzcPPu9jsC8SNmGGyukiLEPJ1shIOQ1iG4CW/?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB0029.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b896e0f-9d19-4465-97f1-08dac7db6651
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2022 14:03:55.4422 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ktZOnUJoVODOZry2mjKFwJ/4ZqCtkqFldJdvZYzecxciXSK0CHIqgitHvDE5mCQ87i0xxiNhMv/BrKmirR7rTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7039
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668607481; x=1700143481;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+1e1Y2h48YCsr82k/V6VWVi5zGr4enRvxLfAifiFRCI=;
 b=MLvKdZdv9SjPbGksA2dP8BByuctQRsBOpu4gwWJBWAHYmlqJRKKTpMr4
 SnQGuvichvq5g26lks7gYE9RVcbrJJ5A6vNaRMZvC1ZgqmWkPmk7OVh9k
 P46d4uTQ4RuoQvv6afEbLbPSj3ZrzZtFVSGrxvpNzNqWOEIug4cgFmg7d
 fyAwD5yTRFZzGa4h/gO5h7eMoFRn+uom1VzmdFfjOl0iG3x9DaQ+8ZQaa
 CfnjN+lqM+u59ybIoT4AyYdbZMNR/nzhLQ7RsFVyu0Z4e2GyMz/aFop0t
 UnVcjyHVJHjALb/v4l6ltpNpsAYpkHxZ6FtLH8YRM/WnoYuxfi+m/6NQ1
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MLvKdZdv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH rdma v3] RDMA/irdma: change name of
 interrupts
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
Cc: "Ismail, Mustafa" <mustafa.ismail@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Subject: [PATCH rdma v3] RDMA/irdma: change name of interrupts
> 
> Add more information in interrupt names.
> 
> Before this patch it was:
> irdma
> CEQ
> CEQ
> ...
> 
> Now:
> irdma-0000:18:00.0-AEQ
> irdma-0000:18:00.0-CEQ-0
> irdma-0000:18:00.0-CEQ-1
> ...
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Suggested-by: Piotr Raczynski <piotr.raczynski@intel.com>
> ---
> All based on Shiraz comments, thanks.
> v2 --> v3:
>  - move interrupt name len define to main.h
> v1 --> v2:
>  - rename interrupt names by adding dev_name
>  - set interrupt name len to 64b
> ---
>  drivers/infiniband/hw/irdma/hw.c   | 14 +++++++++++---
>  drivers/infiniband/hw/irdma/main.h |  3 +++
>  2 files changed, 14 insertions(+), 3 deletions(-)
> 

Reviewed-by: Shiraz Saleem <shiraz.saleem@intel.com>

I will send this out to the rdma-next when I get a chance. Thanks a lot!

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
