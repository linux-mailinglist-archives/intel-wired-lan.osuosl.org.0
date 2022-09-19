Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E09415BC2C8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Sep 2022 08:26:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 168D583F47;
	Mon, 19 Sep 2022 06:26:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 168D583F47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663568762;
	bh=namnjWwlLha5IjYE6a7/92mBXUxdMZrq2Cq7X5jTdyQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cd/OCuEyvjwBSrNqoe6ofq3Mawd662nfTLbxx3ne12/7sx9ZpxPh+EqBr+QGZSJgH
	 BCMJWut8otYvAoAAhGyVsrtOlZfz+KRtJVmTkLeiB30R6HIQFVHLKbdvsmw4uNZ1er
	 7w/nHptc5VAkG67fj5W91b1sttI9/0azKmTlO+AH71RPQQb0lA4gdLAsuu2AKiA5sm
	 9PVOJzp4NAm8CwnjPu4Knlp23QEtayNexPUbC7hxV0gcZzIoW60Y1dvS2y74wH7VI3
	 sd5+hHTn1KKRfsJDoN6F+204g6ML5nEUBWKHuUZwEgj0plsSp4VdumG99uKOJnNNIU
	 j2YI3uOENqb9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w10TiBujhUm4; Mon, 19 Sep 2022 06:26:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC95683F21;
	Mon, 19 Sep 2022 06:26:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC95683F21
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0195D1BF393
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 06:25:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DCA8283F21
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 06:25:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DCA8283F21
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S_Odk1-PenOP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Sep 2022 06:25:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8678E83F1D
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8678E83F1D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 06:25:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10474"; a="300136836"
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="300136836"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2022 23:25:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="680713667"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 18 Sep 2022 23:25:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 18 Sep 2022 23:25:53 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 18 Sep 2022 23:25:53 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 18 Sep 2022 23:25:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FN+hDF7wBf2PbvyHB5zjt7fJEqdalYlldZJPRTvQ0ZN2fOKlKNh5d0U8chZlaksJzvOASg+Nsx1hLyDoNmqIfMhxv6TnPJdCpI/4mwSmMUjutYsE3+FxXbWuop5F8a8hXkZ0C0jC74yKgPeQbGjEOL5tnR+sagGs55ygMRGqEpF/NWeNFnffL14xETeKuj9aTLIyrjA8UmwcHRmtz4OFVevQeduO28mLwrg2R77F9xnPzWkw0e/U/Mc7TWVF6NAU5DTxMZCiSoKs8lw8kObymmmPqpNHiXVMREZ5vUxby8YpbihlftTs0ADvPoHRJKb8qzJRougdDJcaX2D/4XOhpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pnwDVREhpvrJoW6hR9Sx5ga594A7aksN7PNt5w7J3Ws=;
 b=dmRVvmfo2zVqclzzltLz9qa2wSiTcu8kUHSUTxTUVAzk5N34CgyTWP7nLtSytQWv6usiHuH4gcG7uFlKK6j6avrX4/iRTFbXllB0g9y7YIEyyMtRWtcjNu0N4GRpOVxQFSVjakf3IW/t2eMCqOE3k488ExfsuHl78VTeGRewitqqyZjDYqbza0kdXZlFuLYiPNGi3Hv/1Ai8YojCKjODY5p9ot8/WHRP9kCDgj6ivraBmc4SCx2sQbN7LbaBj8osHrMZ6XUX5ScD7WjtMVTwUN2Dsza1nA85ua9xW6bdqAPQFpk+78pFv0O+qI8WDFvU3hisv/aIjJnYvqrqPsHKDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 MW5PR11MB5932.namprd11.prod.outlook.com (2603:10b6:303:1a2::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5632.14; Mon, 19 Sep 2022 06:25:51 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f43a:da9a:b75d:e4bd]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f43a:da9a:b75d:e4bd%9]) with mapi id 15.20.5632.021; Mon, 19 Sep 2022
 06:25:51 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 1/2] iavf: Fix vf set max mtu
 size with port vlan and jumbo frames
Thread-Index: AQHYx3Y5zQZ7k6AVIE+iG5igL45dB63mUlCQ
Date: Mon, 19 Sep 2022 06:25:51 +0000
Message-ID: <DM8PR11MB56212E0F9B9500E1444EB147AB4D9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220913133836.48284-1-mateusz.palczewski@intel.com>
 <20220913133836.48284-2-mateusz.palczewski@intel.com>
In-Reply-To: <20220913133836.48284-2-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5621:EE_|MW5PR11MB5932:EE_
x-ms-office365-filtering-correlation-id: dd86d1b4-cc54-4ab3-bf4e-08da9a07cc5d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G2qs1JQuRznd8Gbd1fZGvDCSYpy+o7WO3D4pC+m4YggrvE/WdYxxLNY3QvGQtmZ5jVUg04+DqDSf+8gJWlfqXSSF8VWh6gNUrWz61YBcOmJiGAjM9HB/Z8MhmcfUYzMCwPEkYl2YnmWDK8yvF+lTraKIf0ZHQIRtB/NXQubYPLL8fftQqvq+NNESpeo6jbLy/+qdCp6lIpkyJ1Vp2eUmqQ9AHh5t3I+3yrBhnDIMPwrUXajXW6lypRF/Xwx18hT6eiilp1F8rhzhPDZXtfZ+EEse1TZuUrYSd8TDN72kHB0lJJOnSnWcdY0D7/1iOQsqYm/nVgoeSH1pG8xtKXDQdDDHzRHLRd+FNqKx7cWdQnndoADn82S5bmkriE57eEshlEGozOANZD+LNWz1eKl0jhg2Q7uc5v/CNAi6O4qvLkoUQc1scIfTC6ldheGu9z2wTR3BfTciWM7VLBBeP4FG54gvhbkgYTaJaY4oUGvdWvS0r6Z4tKPIReSE67+OEwksw0hnptlJD3e4R3VrMH+jijCM2Ks6BOr1FeI+/nNyJHv2412j7f1Ptt6jfjez25m9Fm+tKrqQCa5Iwh2WVM9iV2RlPWN0KfGIomeJcA3USGo8QeReN/Ys2Qm2x8aMqZ1S5yQ1BJTO1bnklQLc5KT6ahIi5TrwSUHjANpc3LGIo1MlzVYgdZJA2554K5JTJBj+/7LgGMG477PKI+uCciqckooYA5cHmUrmdIXqTZ6i/G8GSGNy5apaozxoKtVO4Iv3KCus2ckPtapy3JiHFiAiyg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(39860400002)(396003)(376002)(136003)(451199015)(66476007)(4326008)(5660300002)(83380400001)(52536014)(66946007)(86362001)(316002)(38100700002)(33656002)(8936002)(122000001)(66446008)(66556008)(64756008)(82960400001)(76116006)(110136005)(8676002)(41300700001)(53546011)(107886003)(71200400001)(7696005)(6506007)(26005)(38070700005)(186003)(478600001)(9686003)(55016003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OqLmRouq3zbp/uSzdZ0pr14jG7bruXpv2nDmJRfC9pwYLfOp33ZYs6lKiqpC?=
 =?us-ascii?Q?DFqGbj4f5yOW6EGMfZpUBYzGPRcFCAntqyhHYBIUukDEFuqXjLVCBr+jQz2B?=
 =?us-ascii?Q?UbSuStTyeuxtxVJKe1TMV6nVXb0SMFwlpyZxd0pNqz6+M/s9j1RSbLotinJR?=
 =?us-ascii?Q?HBdZm4VcdJCHwjrlgcnTbSQeKbrKtBX8iP0v4qQm40G3BNSddsAc3NsZ5esN?=
 =?us-ascii?Q?aeNbPdG4umm2jrU7Mfeo0N6K92Az2NVtZboW0cODpzDonPWZkV9xakX4NFOz?=
 =?us-ascii?Q?t5kKi7a1sk+wGZuQgadz9kJ6WtbotNZlbUDjM5h+chTfsLMlf0uodd6U1ycR?=
 =?us-ascii?Q?xY9B2zLRCB+lWR5NmEePPffanNixZoeFa6vFmZZhSm8XQtao69vrCpGDpoef?=
 =?us-ascii?Q?gwtKp1Enmbai5iXdomtpCbsC6gW5RqVWOOrQXXSbudQd6O2GU8UIBs/TeoYW?=
 =?us-ascii?Q?3EbYp5FSJC0b/KqhWoa80a6Q9LAGkSSh/ELZKJ08ZdBmJohCG93PmpmbLrcY?=
 =?us-ascii?Q?H8wh1urg7DG66t+r6su2iC8gBkZWP9UYUrJwX0goE04ewmhJbzdub7hdObbb?=
 =?us-ascii?Q?8pnz7CzlZ9y1At2AyONmNkUsrEP7xQtM4zXemoZ8KQymkTL2/VeAMQPWjK0F?=
 =?us-ascii?Q?tyy1H5wI+/TgixuaqKJH/lw17RDxaj9rYFsbPJFPLJZGoIGNLoEmE1XG/gp3?=
 =?us-ascii?Q?H2q8F2dvfQmwNcVpwkfrW4cTp9oMv2gzdubzOq/e0CkFakc7MV5F6CUNBVM0?=
 =?us-ascii?Q?kx6UgMwPkn14tonikGs2tgsWX/xkPrXXyD+9Wp6eYA6g2v6cybm4/axl71V7?=
 =?us-ascii?Q?axsmGTHK/5gw5zSXBGzZ5igMXZ/RdF6xvxd7dWhwPqG/6LaguQDtwLkHbunR?=
 =?us-ascii?Q?keTqJTRyMk8GOPekblx77wKagxOdM5UXUtXRrLNaifrOnUP3wLZReWLTqZz8?=
 =?us-ascii?Q?29f1NgTVPEGMdrUwwV+okQtpmbzJ8RniIJDwbmG6PG1jTp/anQAO3gZWKL1H?=
 =?us-ascii?Q?7RxVvq27Fmi3LKrM7H3PFKp9XYqlbmiGzk3Z7Xc26xjPfFHXgVJSdC+oc/C8?=
 =?us-ascii?Q?VeEix+UtYMkvzylPnujaRi1n0c4CqNJ0ujgApO1QvQ6iiXenH+q4llR1741j?=
 =?us-ascii?Q?KAUipMJnQHHM7mFAqws9Ju2ufvYSeVnWBTN+LmsqhzIC2yO/PuEka7w0c4tO?=
 =?us-ascii?Q?gHy9vTImdeRvVt3bo0qwRPc8fWhzAV4R+BaeAIMCUUQN4yGiXFRUWouRHh3Z?=
 =?us-ascii?Q?fYiFtq31MOv9jYazz5OlvcjA1XNajYEo0FhtJ3mkmYYR3OmHH6rVGoduBhT+?=
 =?us-ascii?Q?MgD8Ca+WoE6lit38Lb6obWC11jAWvDIcymG7g3jH0Wr+FwtCahso3vF0GlBn?=
 =?us-ascii?Q?tycYHFzUgCI0fjQokQAuC3VLD5rXdBM1fKg23K6nddrHVLUp2ZSVLvmnk0lZ?=
 =?us-ascii?Q?5T+GA0EnSw2eLMXFiPAcLpLB1bDfxIeWiZS6EWqHpyvc0oMZ2PtMXu4BpC/m?=
 =?us-ascii?Q?5XHBj5LvDM5hVFnf7lgN6STaGQvb+vlgOUeY61vA+A7S+DA/eHtd8g3awOFv?=
 =?us-ascii?Q?Cn+AXhn48ukLeOCXcuRXIXl+MtDd6FnELBI9wpK2AtIfXVGtpoD8dwx0jubH?=
 =?us-ascii?Q?AA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd86d1b4-cc54-4ab3-bf4e-08da9a07cc5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2022 06:25:51.0178 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wgICH3lA28yNQEYFD5HgWp5GjhaZFgNlaWptdt8KwkxgyH8mHVgT6amifZg3sAPFFzu0bxkk6W6Z+v8zq3teo8QvMVzuxxkzmsxPS2M0Xuo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5932
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663568754; x=1695104754;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/wI97kc6u1ChJX7XIGp/i1Tjo56wzHafOfm84aHvhfE=;
 b=Jl/DbgPhX1/PFWGQx3UUTt5DwP1yAPcCGjzLFtqGGw/SRM4hxNlScZo4
 Z7QMdZwiSNPgxPSMwbYqJnV7t9k+jSYZ0AvxgB9TWyJ5V0umVXp7qrASw
 yag2b4SokvnC9roeTtfkKZJAmVZlhksCTsk7Td0LIxy+diqDKnkh3qry0
 0ikimUuZFxx4Um2nnmxQW/jB9fvCYmxXPbwapbkAn6z5kH3pYE20HkR3V
 kExP3rqtyIZW8XtyPerumO4Ft1tqBdmXMdtzEtuXdulQ+IyE9T/O8m8j/
 zqNDPZwbh2ey2vv5J0CYCqya1Ki7XiDVWOODJkJiHoUZ9u9S5yTrUJUbo
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Jl/DbgPh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/2] iavf: Fix vf set max mtu
 size with port vlan and jumbo frames
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
Cc: "Jaron, MichalX" <michalx.jaron@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Tuesday, September 13, 2022 3:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jaron, MichalX <michalx.jaron@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2 1/2] iavf: Fix vf set max mtu size
> with port vlan and jumbo frames
> 
> From: Michal Jaron <michalx.jaron@intel.com>
> 
> After setting port vlan and mtu 9000 on vf with ice driver there was an iavf
> error "PF returned error -5 (IAVF_ERR_PARAM) to our request 6".
> It was caused by that during queues configuration vf's max packet size was
> set to IAVF_MAX_RXBUFFER but on ice max frame size was smaller by
> VLAN_HLEN due to making some space for port vlan as VF is not aware
> whether it's in a port VLAN. This missmatch in sizes caused that ice rejects
> queues configuration with ERR_PARAM error.
> Proper max_mtu is send from ice pf to vf with GET_VF_RESOURCES msg but
> vf does not look at this.
> 
> In iavf change max_frame from IAVF_MAX_RXBUFFER to max_mtu received
> from pf with GET_VF_RESOURCES msg to make vf's max_frame_size
> dependent from pf. Add check if received max_mtu is not in eligible range
> then set it to IAVF_MAX_RXBUFFER.
> 
> Fixes: dab86afdbbd1 ("i40e/i40evf: Change the way we limit the maximum
> frame size for Rx")
> Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Fixed one check regarding !max_frame
> ---
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 15ee85dc33bd..5a9e6563923e 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -269,11 +269,14 @@ int iavf_get_vf_vlan_v2_caps(struct iavf_adapter
> *adapter)  void iavf_configure_queues(struct iavf_adapter *adapter)  {

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
