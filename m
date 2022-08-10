Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A7B58EA63
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Aug 2022 12:21:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19B7261034;
	Wed, 10 Aug 2022 10:21:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19B7261034
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660126910;
	bh=IbEHdPsJWAGZwfRapuHxdStNCEhIusCW20sCx/pQ9a0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JO57SfP7JmDNuP94SlCQgzwUg3yzq8/aWsPpDQMRyhxktoBZMFrdP3W/O867+rjGC
	 XLSfvCIKG1E1d87wszlmdqiW4cuL+Qt5YWPaFZFyDArjQi2oBeXzqqQvU/1zOxw6MT
	 MYaLxAXEmGVb4i4+7Tv5wLoDF3JI0b88pUAt8AMole+1YWGZhSJtsp5PYBkYz0e63G
	 YNf1fsbmsFJAU5ozX320846/f7D7Wq0UtYA2o9AijK8T28AXPo3KcDLtt9Pjg0coBg
	 d7kwHClcEonO3phGSYQYcRLjfzLUGtS1gsGQROZbZRZSB1Ww9PvzLJ6z7AlM4TK6PM
	 7mzbokw8q17Cg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RmMz3RH3jd_8; Wed, 10 Aug 2022 10:21:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 093C46102C;
	Wed, 10 Aug 2022 10:21:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 093C46102C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CE47E1BF48C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 10:21:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A26CF4091F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 10:21:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A26CF4091F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iJSvObrUJAJe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Aug 2022 10:21:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3274440246
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3274440246
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 10:21:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="377340558"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="377340558"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 03:21:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="673242515"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 10 Aug 2022 03:21:41 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 10 Aug 2022 03:21:41 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 10 Aug 2022 03:21:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 10 Aug 2022 03:21:40 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 10 Aug 2022 03:21:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gvbb8F+nrT+BcNCnmmc9QP9sU5El7Jjpofg/AVTMenf272zd0Z+yhSX623zK7m5seZlcIoWnQ+6UW30nOB901LxWA9yGhiiK9rLGlb3OFYVtMi1jJRL2nMbCBgRpnV/73zAOKVtrtRtswZkTIbmGLfXMPpuZowIKFwfj5q3IN61RCdgG1s91IYYAcUPiKyNn3loMl1bRs8/hIVkcc/TsP22O1374As7CGHELImLm+Uc+Cj+agUTSZB0JNK3Ye3YEsm//KnTM4YkMLcTt4eRevwxrN/GKXGjcdJVhSftru34XC8WRaQZZpI+Tc3nTieSu8B9gfTRuicjU9PqSrg/A1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LqpMubGcJVKxkTVpY9rgcYhDwTRq5/3Nh6VWQIW4ejc=;
 b=gWjtTtGwBQU9UkeYNCaJLS7nPIVpAprmCnzLWj/T5c4b2y1TgCYOSEYTp7gHtqEKiuHchDgvQQCcASbN+x+A8gX/J16NeBLlyGhv0HoUxAuO3tI/dcCiORGTU2shc/OPA17wYGNKDnr2JyL5YV6tYB+FpJlI8xs7ph/tcAvaueAJF3O6r+c7hvDMRLFhQg+JBQQJyz5JnRkCVo/5kbG7atdrKXo7GnOPk3tEMHS97z0NPyKlquIXTuelToqncfF+SwNZFxrm70OmBgoYQHdZJJiuP1P/jlKfUhwb44zWoJvAnsoJOliOmWijLZ3n2Syd/76C37pAYPkBIEw03EnmvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CO6PR11MB5634.namprd11.prod.outlook.com (2603:10b6:5:35d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10; Wed, 10 Aug
 2022 10:21:39 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5525.011; Wed, 10 Aug 2022
 10:21:38 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next v2 1/6] ice: set tx_tstamps when
 creating new Tx rings via ethtool
Thread-Index: AQHYog7zaZq8gVIPCUuUQAxYRhpT/q2oAbnA
Date: Wed, 10 Aug 2022 10:21:38 +0000
Message-ID: <BYAPR11MB3367E6016F72DB28ACBAE442FC659@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220727231602.1625980-1-jacob.e.keller@intel.com>
 <20220727231602.1625980-2-jacob.e.keller@intel.com>
In-Reply-To: <20220727231602.1625980-2-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8a328468-6a70-414b-4a0d-08da7aba1c70
x-ms-traffictypediagnostic: CO6PR11MB5634:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FRh9Val3NWqs/K0bzepRQHj2xbMnufZxF3RLLQhyYhhKz9pe2nqNJKUoonLKEFyn4+7IvEJFKIdzSixzh/uzC1ZhDqyFUGNwKPUy2wQ8YzNHBhhQnWeWH9DY7ny2L7ziwi71Rf5HbKQBFUcrUP/I8EpNhJh9TQNBlrNj4rpm7ukxTkoRimfBR58j30wxwBJrsAXjlKZXDPIMgVdd/5lRK4fDVsA3Jm6FDwATct6D32dRe3xNi2SR+EstIxxDxx56Cx9Hf9Mo5EE9QmUyAwBR/6Rgw6HwolIhbdKIDnDfsUuawByXAqIssL7hHB9O3wZFsT7yGPdLpjeQ4ZyAwMcWVF3go2bHKYUtMOA3i9UOQmX0CnRl7mX4B5kKpjg19GJ258B96Y+kj8/6dfAH7MmyZxHA3uK85+OKAtlpj4y+bnHGLD8x7RVpNHKqU1tdpOpqczDtdC8ZZE1dg8nNhS7FyKQhUxlk2Eq7asHzRjaH5tSJ9V8Dcw9IZ1JcMSgUkrVSP11gdtDEukH2Asc2IWBoMKsa7LZnSbh/plAEOebXKwO090Qft30q06QcxIIERcVqSYiw8MVyaab2GiQTEROSp9s/TpeSMYddu9miNBz4YbkvQtvTZHL8naR/V6eeg4RDkrZZfg7ywPpkoUn6ICXCFoBJos9qej5jA7Xdgqb9rKkpz8DMHTToBDJX9R1fruEMJVd3Q4ZdOohXqDY04Cv6SImJpIFEwfGOcml5ftJs/BXikqnQdCRalGQOONGHOQtfJLRsQ3MqEkrIf2KH1Q+2Pz37bqJvvMduOX/+kQPfNN8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(136003)(39860400002)(376002)(396003)(5660300002)(83380400001)(122000001)(186003)(6506007)(53546011)(7696005)(26005)(52536014)(38100700002)(2906002)(8676002)(9686003)(8936002)(110136005)(478600001)(86362001)(38070700005)(316002)(66556008)(33656002)(4744005)(82960400001)(66476007)(64756008)(66446008)(76116006)(66946007)(71200400001)(41300700001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9vx8cAQIUp7KSCIJxGEzleeZZh4cLt/5k2M8/mkJwyAqT0rWpwGJklX1X4NB?=
 =?us-ascii?Q?5sCKKkbDnJdBr8pUIUvyJ6cXESa5in2/BJE1Hh0zyDy91ZY0CX4l4vMsw65n?=
 =?us-ascii?Q?dE6RXdahv8oKc1Tvvkp5/bgYyh1mzlH8np9HrWd0GrHgAvBbTrJxV8HZUupj?=
 =?us-ascii?Q?sFOvEv2II9K+7bvqDOmEKsSVzTmxuW4nZZsanH/0zZgRE402ONSIX4cZIVGv?=
 =?us-ascii?Q?DjRTFs5ceK93tn3f1U8DUWu+aBZqaFWbGsDDy4JIGNF9ceFmbvqb+M3l6xTc?=
 =?us-ascii?Q?nJ4TlcOqUe4/U0G4hiPw1nvhjdgO3zvwX7tXW06CPJpvltUWQg6lF2aaiNE5?=
 =?us-ascii?Q?v8zCl/dHjVrFzfDVa0xeJ7Fs80+zcs+g1avLkjLVjf+hSzfl1NaqGA46XEy+?=
 =?us-ascii?Q?kVMVFNEp6hVfMqg/nefQckjel4eO2qmJZCRDquJfnNTTHGy0pyZYK5V1LVD2?=
 =?us-ascii?Q?HCiC27VjHQirqd5VPMGfNVgW1e6HPj3rR2boRa/ZJpsrMfK59k7l9vMKnjIo?=
 =?us-ascii?Q?59IGiKXSHM2gXQoGG+5n2jpykSW7zNfVAC/NnwQoKwvhBTEoNHPD4cuSKxiF?=
 =?us-ascii?Q?kTXodSCslrbCPADCeAaKTgpvGbbGqZ/5JckiEXQmSv9waTXGXN41tf6/rGSV?=
 =?us-ascii?Q?1RYsOATt+oqKpOLMDDxIvddOC6yr7uT7fBeBBbsu2v2ZGAFGERNfGYJfUR+R?=
 =?us-ascii?Q?cqcZS3iy9KH7rz3KemFsXkG2IfwMpWwNAlP0/q0xTgXjC61Ai/z1tLHGEiAe?=
 =?us-ascii?Q?UASYBJysVTtBgbz5ZZSnUQx+4+QTSKT7vJ5VTdW5CLtBsDKni4OYRiC/La+P?=
 =?us-ascii?Q?53fy/r4hxKtt6jWH15Jzsu69DYwSUXKto3mOd79d+SorynJJKpD64aMMVPDm?=
 =?us-ascii?Q?MWZzcG78DJAtpCTX5ttvlbJZHLrjigXLZesCK2PcdzI5sG3faAreui8Qw3I7?=
 =?us-ascii?Q?zaCFCBcP27Mi1wK5qVQMdiujcqhxJIZvsZoKXLMauLzsCMJsak/yme7lBuIP?=
 =?us-ascii?Q?XcT2DcKHfkiElldtHtAqNumiuYuk22ZGuU6MhqH3Lpyu5G+xjuFW0xzPms4z?=
 =?us-ascii?Q?jGEPf72d0RWamWIRx8uG9NKMQQjjNJMDaXX7oV4LRl4r6SjLj3xEMFLEWjQJ?=
 =?us-ascii?Q?cUrKCQAhcVi4yuJsAZyK+beGlNyNxYe1lFnaS//TWJMoECpEJPF8nieDpA3l?=
 =?us-ascii?Q?/Icxnxe+VgkF0pPqbzcUVB/mdllOfCU/gvIjS3i/Bh/lmwXtKSVem47Zx/bb?=
 =?us-ascii?Q?PFR0eNZULVb+2uy878ecgvSh7LjwChD0toZ/Wu9LXcP915Rd30+evXh4Pj95?=
 =?us-ascii?Q?KqPJUyxrR96JY7+UgeXlu1+/B1HcwLhHKZTR8oKvk2YNmdURRqlKpjqDhoXD?=
 =?us-ascii?Q?YPTGBAzfg+WyYt3RQaUzN3zLpf/MvvcjkeRNDswD0kJStFEuRAfVeEHxGipL?=
 =?us-ascii?Q?QTmtBVhgSoC+CJUapQUY+SyKAjMLBLExY4lE8uOVsaOEDCj3l93xcqpyKCTx?=
 =?us-ascii?Q?QJYD0YobCxplWU7vn/3f7zzuLEkU09mqt0pZfQKC8Y6bVdzM2LdHy1OhhHMD?=
 =?us-ascii?Q?SFqU4SsvvrAM9Xf+vWG9qzLO4YZWVmobMPScy5QV?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a328468-6a70-414b-4a0d-08da7aba1c70
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2022 10:21:38.5348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /33m7IEaBisj5lGsjupkeW+mYDqd7nJcOr6H5szJkmWYwvuV/G5+7nF/sJGNA2vYSxGLwJ8gMyn1hp24oIulzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5634
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660126902; x=1691662902;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IwcCv/hUJ2SwATToSlgyMKeIlcrW0koqy+EAAAbao4k=;
 b=jEYn38OqhWiiSMF5yVFuIVFew3k1eHVS0deR8pI5zSyrwh62G1/YAvQm
 RPiMOZYTWytvOIol3f81CHsfT/7jPnui454PJ20CoE0zwLnWqb+t3mqPs
 H23Igd45HzBPHFj+9vpsAib1Xq6TRv4wUhNmQUidDRng+fntKdGHTGG8z
 h27VN2IS4irqecGimpiv/YyeLcBzImlzXSUkqNt/RpxjZJCQXhpgOlPEH
 ZiPO76hoqqJLNm04xOXRxgHLYyhiAYwpe1NtRJVvBFOBcrXBZT1ix1rE4
 XBZWQeO1G6FDpMpli3xIrEiD70azcxcsXZ0IESL9vKeCohFSOci4fsWnS
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jEYn38Oq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next v2 1/6] ice: set tx_tstamps when
 creating new Tx rings via ethtool
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
> Sent: Thursday, July 28, 2022 4:46 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next v2 1/6] ice: set tx_tstamps when creating
> new Tx rings via ethtool
> 
> When the user changes the number of queues via ethtool, the driver
> allocates new rings. This allocation did not initialize tx_tstamps. This results in
> the tx_tstamps field being zero (due to kcalloc allocation), and would result in
> a NULL pointer dereference when attempting a transmit timestamp on the
> new ring.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
