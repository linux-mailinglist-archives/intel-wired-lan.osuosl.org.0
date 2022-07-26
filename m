Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9B9581363
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jul 2022 14:49:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 126BD418EE;
	Tue, 26 Jul 2022 12:49:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 126BD418EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658839742;
	bh=PO+lFGIOJ++26h9kVlzL5k/4zagoRsA7d8n9nF+Vn1I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zRYd0f3LA/WvqzUGQgHmczSff0eQ/UGjZAfMFKA4lDXzrBBLbjyriqe26fSNed90r
	 FJJUtQLSni9iWgtmqoWL7i7mlAdTVuQMWqq/xksWIPENu8QyLGPB6Jq3kq0GOQtqSa
	 L89bmFQm1hRQQ9DIP6jkTnxdKObkjC1UA01tCCQKV8qbcrvhoiO6uVZQSirU4NcoTy
	 tPdJK6hdmP2Ac9cyDE96KEV6u4yHc1iU8XbLlOHUM87x9zwXU1I77aSG6cw80dkSmB
	 krZ3pyNDSXQssbOTmO8GZvVgrdWEPvhlFxEOju5G7x5zMKiK0wFkXQZUkvYf79JWa/
	 WBDDmNfKjyCBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mp_d8F9g38Vv; Tue, 26 Jul 2022 12:49:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 929CC418E8;
	Tue, 26 Jul 2022 12:49:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 929CC418E8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E4D981BF41B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 12:48:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BD1C481421
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 12:48:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD1C481421
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wUNh6Yt3U-Ki for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 12:48:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8381C81415
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8381C81415
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 12:48:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="274811371"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="274811371"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 05:48:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="599973343"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 26 Jul 2022 05:48:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 05:48:52 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 05:48:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 05:48:52 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 05:48:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FcMaSoLL98UPVzqkOrRNgK3ME3UirrICs7wrOkcSEF3lE2djtAcbjwFc6VOjRh7Gya/TeOj2/Jv4jgYXzekR32ay0anUSg5GUytIveDB5qpUdZe5z9JP66hlOpOsDpq31rSKVLkQd3NZcGIVMEEvOyATSse1inFVAnAZnAoSW0x1YttJBrdGgA1c0Ji8ebWiIMl64kdbU538L6yEwBDPUt/6MRQ0m1XXktDfOKXLF7OL4Jui8Dn2QnFHYEoMkgkdDOjCuf48jDKze/jXJ1Op2M66wVD8+4x2jOMTw08ktjTmeRmariUu7zNZx/g9vJmZXWRZqXX717r9ljDCjN+tKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ix/b3RwWGN96EAmrLuiF7iGAjrJiFmyAq22IAj6briI=;
 b=iD6fNdGK3jjzCPk3UM0v4dkKkcakkqZUSI3LCQ6xnoxEZDshxSyg12MZT6v/VC6bSeOUOUHbf9oJHxV5kGKvgAW/3BXH0zPnvWDihKCBUqUAOkWq24xAdnd1RLidaIPvPbyQyJvUkX1LizTGc3/tTPS+sbeazV1EzG6b24fdjJc+BLpqBJwOj0KkFUJSfImcS/hOV9Jrd+Hl6/BKiuPPptWqZ3koAaSwCz85bilEgtQtncbCagWlTv/fAFM5xDaw+1ISEGNXlV3BUjX7pCFx7yKbylaowM0Y55EHhAB1dyN6PX9HrEGj1jBJ+tHxz1xrOM+1479bo0R0U4lfLKPfiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SN7PR11MB6726.namprd11.prod.outlook.com (2603:10b6:806:266::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.18; Tue, 26 Jul
 2022 12:48:50 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5458.025; Tue, 26 Jul 2022
 12:48:50 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 4/7] i40e: use
 mul_u64_u64_div_u64 for PTP frequency calculation
Thread-Index: AQHYnUkt/I+23TohDES0OpD/ZvEro62QoWjA
Date: Tue, 26 Jul 2022 12:48:50 +0000
Message-ID: <BYAPR11MB33672307590FDD56A0D95C05FC949@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220721213001.2483596-1-jacob.e.keller@intel.com>
 <20220721213001.2483596-6-jacob.e.keller@intel.com>
In-Reply-To: <20220721213001.2483596-6-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 99003859-3d55-441f-f2de-08da6f05306a
x-ms-traffictypediagnostic: SN7PR11MB6726:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z6ps+Bwz2CJ2129mfbjwPgMXvJI7a43FKTs7dqkPYp4xm913NuKxGIbmhHHhK5xqC4OXSeRd86OYdvUIuggEkjpV8B+vXGkjaeLpNvjGRWk9aTeYTqZhqPs2AvsV3Z+m6m1Jugx/3ZJnK3LK4oKU3ER4RS88tAODOijpYFY5Fl3wUjqzkknqeQ6JkjKdszi2lD8y19I56zgb6YJyYNoJCzJtA3hUHYbQ61lHuiwHjirmDWK7sO5An3pqb3pnSfb57bRxDOtFItC2WsO/hnUu0uUXhTKo9RS1RHedqK7eIHBg2GqJDt/auGqpG9xZIYDhzFYAyQ+VA1vjbCQrU7LtHy34fVHRm0g55Q3OieNjQT8lYjYQEBqZrRXo8LvsI0udJv7A98jAew7HWb09GLqrMSzwbDQcTaI7FrItd5HM9DUgeEioV/RvTfHX/azKofs+liJNMck/CzsQ2Mz/ke+lKmNzxe8Iwu+DEO91JpRmBA905zMpscSvflRvOke5l/EegsIZhK2Kszv2uREKXYRN41ELsAyt3LFm+c2o4rvg2mcT+4aW9rpi47mUvLhmJIersdbqKnEH/qCWV6rr9bN2NytJN68HrE6kUDjXNHRhlO042pgbxFsPMd3RaZhrtFZadL20CUYfnsjV+0UzpbhvBVyLYW3yG5Vaxw+KmvevMO/Q/s6WFybR8ME4Csv5XOEVF3b82jH/HxTiGFc7MY32/wme+pEgEI23RqCA074ehzHrIX/q1rHtdmKR+JkGMefycKK6TCPuX6qNG+HmzLKu4D1YIcByb0RXo+m/jdvTD6Uey7Gdm84ALW9TQkn4hJxI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(346002)(396003)(136003)(376002)(39860400002)(9686003)(26005)(7696005)(6506007)(186003)(53546011)(55016003)(83380400001)(8936002)(2906002)(52536014)(41300700001)(122000001)(86362001)(33656002)(38100700002)(478600001)(110136005)(71200400001)(316002)(82960400001)(5660300002)(38070700005)(66476007)(66446008)(64756008)(66556008)(8676002)(66946007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?52G4AoZZu5vEqit7NyGl6GYiPGjXnv4RvWyUWZZNWB/fLqgBpGJF0HvizKxU?=
 =?us-ascii?Q?X6OTaBaun+5H7IEuonL1IyjxbMEk2ZRMjnae3TsenHN6H0oCKSDRr2XqIa0k?=
 =?us-ascii?Q?bCNyoECr+YHozitK86vbHZ3uHy3CW7SOFyT/ZuJnOPFFzXwSMBSiy2Sm3M98?=
 =?us-ascii?Q?vhD9KQgZjFJ587XRoxLwkKXELBv/sprrCqJv9w0aijmwIFAVt/VvGQqggCFJ?=
 =?us-ascii?Q?bP4FvNxc+qN26t8FTtWOMrwgJkU6PwU4TnwoCaTSabHDxnnXLI4rKNCAOwpK?=
 =?us-ascii?Q?N1Uhi9WhXSF5qzKvJ0kNt7QDnyMNgjG0eWgLmjmMKfFMIGvJDFI3w1RH0/JC?=
 =?us-ascii?Q?PRqe6cL8kr0x22grWU6hvVhSmWZCVrzqVKE9EeZCI/FKRy2xyeMSxLiAJfsS?=
 =?us-ascii?Q?LZ6GmsLzjz20CKPJkmqjbK3S68rsTK6DMtsEoCXlyWhfdkEfS/QJiueBsuXF?=
 =?us-ascii?Q?9UGfKlGUzCkpQBkuaIeKurRyqaJvzGjt2FODdtbkHe78taAyH220JHYnvn5k?=
 =?us-ascii?Q?9NXBIfCstFEcW6VUe8z+a/EU2De5MUWhp5wugZeWx8GHenVZOM76gaBP3MgG?=
 =?us-ascii?Q?7lKi/CpWNv3aTEXjXqN+/rfEYgSuEh9BYuifa7In9rBCBaVgg8fDnXnPLCKw?=
 =?us-ascii?Q?Fv2Jmt2jbFQJMkE3DaihSNgKe48LiLmzbtjvcVTO7i+X4lDnK5YJYT6niGOP?=
 =?us-ascii?Q?nMO85kzz8IzEYwK95s2l1A4M7CBoTeCbfgF/Va8+kx1KqgDJYcduhnGXoE9S?=
 =?us-ascii?Q?2KSjZ6LaCNx7cFsbTst2FWFE7rQet0GbAIxUpNJhD3Ebm5FXueRSArKF2/eS?=
 =?us-ascii?Q?Zi6JhOK5RAjy44KM7B3e+C+WS06YEYZVKyleEGU64eavyIxbGX4rrtYd7UeD?=
 =?us-ascii?Q?DibGKnFYdFSQC8ecoTdypG+WwD7+jUott9Jr19yOIpOmYeJwA/Bwe55XBgTu?=
 =?us-ascii?Q?7dUzziaOnddu8TCJ1L5Ar+C7QMJTYpkIsxwqtsIz0dI1i7hHkTqqfEZKu9D8?=
 =?us-ascii?Q?Zc0GDuFMEny7gqS/vCXfjtyX4tOg3MfvBWwGo7xRbF/1SoHxmHJ11rjZfg3k?=
 =?us-ascii?Q?ASl0OIeIKpCCT0MQFye2zYWYXNYWsk3otezW1Hn3pKN+nkSNLTUS+2UshtgD?=
 =?us-ascii?Q?yb6xHxkR0wNE7XwFzI+6piOvsERSVC6aeizLC1OmA/292ld8yi+WaEAguB2a?=
 =?us-ascii?Q?uGezAUwkcxMQU39AVzEEo6HKhYiEkWk+dRpujKqWYUjn89p5GEjkivxKe4oZ?=
 =?us-ascii?Q?34OrTQCeImix+SnYE6K+1Vsy5BPkENh2MSZ4cQw/KeP7AL/sP12qi3dFh4eq?=
 =?us-ascii?Q?a/QvljM4HzEo3wGoYEyfic9IJaO3bldfz8wssYdXHmVRp5t5qVOG2d4I1BM6?=
 =?us-ascii?Q?pBjnjE4YYWHqrwMGgp0GY6UGMk1t/GkGPg9sv/P7sO+fuv9198mWWyvFz3IL?=
 =?us-ascii?Q?4yXn8xkurTDK5IL88hrqQYUVeUDQ6YMmpFolaHKtB6Z/zzlDAKSmBSySWVW2?=
 =?us-ascii?Q?4w2WH3ktu9iyW215SBujiGyaGgvUQEFlVapeHr1E+s58+cXqUOSgT/8VSgcE?=
 =?us-ascii?Q?80WMZPbI1c6xcNIgQpdb4AMVwfUabCsgYGhIh2P3?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99003859-3d55-441f-f2de-08da6f05306a
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2022 12:48:50.3556 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6DpoNy5M9LaxKehUIPQjGzbB6vzbc90cfFNGgc7N52iGaASxCkPr7ASXHjh0F6Kk5pgCW6pKpdSJTxn/mTHJng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6726
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658839733; x=1690375733;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VIfmcRE/75j5KwgJiTSY6M1AaVxogsCgaY6VR670wVE=;
 b=N2Y/pF+AqoqEEXCDzEmrSfuLia/kp5BgeyGzuWLs0/QZbstE7HddvdXv
 eG+InuelKf7FXUrz2iX3R0L5mMcGCZm8WRdR0WBwXC0kSY50gT84OO1aP
 Qs3YF7mfDWcGMRF/8yTnCHe/RW2+GwsdjqJJM4UU2NKAURSFqdNUhr3Zx
 KXaCzwcfWyE+x5xtaeW+VKPJRBqV8jApfcoSOZASCEn4jNuHvDO9tpURQ
 Z5EMMO0EBrXbaxB97GrjK2hvpy7Q4G8Zu9niHrtqmPpAdlXBdwvTWadTu
 Ub51I4ZevgCsa2IFhjkM0kneu8drm3UASJLZiZ+6ohAhauUC8Cs9oPLiY
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N2Y/pF+A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next PATCH 4/7] i40e: use
 mul_u64_u64_div_u64 for PTP frequency calculation
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Friday, July 22, 2022 3:00 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 4/7] i40e: use
> mul_u64_u64_div_u64 for PTP frequency calculation
> 
> The i40e device has a different clock rate depending on the current link
> speed. This requires using a different increment rate for the PTP clock
> registers. For slower link speeds, the base increment value is larger.
> Directly multiplying the larger increment value by the parts per billion
> adjustment might overflow.
> 
> To avoid this, the i40e implementation defaults to using the lower increment
> value and then multiplying the adjustment afterwards. This causes a loss of
> precision for lower link speeds.
> 
> We can fix this by using mul_u64_u64_div_u64 instead of performing the
> multiplications using standard C operations. On X86, this will use special
> instructions that perform the multiplication and division with 128bit
> intermediate values. For other architectures, the fallback implementation will
> limit the loss of precision for large values. Small adjustments don't overflow
> anyways and won't lose precision at all.
> 
> This allows first multiplying the base increment value and then performing
> the adjustment calculation, since we no longer fear overflowing. It also
> makes it easier to convert to the even more precise .adjfine implementation
> in a following change.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c | 17 ++++-------------
>  1 file changed, 4 insertions(+), 13 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
