Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1232084F8F2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Feb 2024 16:54:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A8CB941CB5;
	Fri,  9 Feb 2024 15:54:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tltnt1E_yx15; Fri,  9 Feb 2024 15:54:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB4EF41C01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707494085;
	bh=1Tm3AviHaKHZ0mCxNxzrW9zMCFLttjWEHSeCkyipQTM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CsNID5TVxQS94Y9TzYq6E8OCmO4EiRuBEZLwQrGL1yjPLQzOg0UAyY0dItmnOTb3i
	 3RVeZY+wC3SZJkR0V5jTItEEayrioGeTF8wGR/sLtZiIgQ1HUVyW2KTHk//bIENGoi
	 i4SZ4H/WPuk+Ib+2DELD5sVduNEEvTfSHTH33qNBsNpWq1Zmz5LCMS5ocUPv9WAIjN
	 dUSbYBtjsBqgrUgOb4cggh5utnISvaRfdu7l9OOE4A/AFM+0+eOupd+XeUNpdruMFN
	 taIWZlMG2M4k+gvXuSosBYS95zjwH4HSK+++9a1X1QkphNJ3jDZujFMchCGx63k3sM
	 0YuqF//e4+y+Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB4EF41C01;
	Fri,  9 Feb 2024 15:54:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E28EA1BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 15:54:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA4204023B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 15:54:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ou6doxUERzQb for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Feb 2024 15:54:42 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 09 Feb 2024 15:54:41 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 08B7A400F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08B7A400F9
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 08B7A400F9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 15:54:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="1341002"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="1341002"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 07:47:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="2180163"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Feb 2024 07:47:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 9 Feb 2024 07:47:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 9 Feb 2024 07:47:34 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 9 Feb 2024 07:47:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uopb9hkGIkdVhrVSXCkDREDsapajeVFLe7pCP0Hzcx1VNGvMR8Iun7nhoR6EBtgqprbAa+qadOhZDzMBTsZBYkafATjeXilD0qNQNHa1ibLZmLVsKXbFGfIhtn/LLW8JKHdk6LY4it5K2RBoKO+21jv4F2ihRraRkNsM3Vz8OxgCCRzXgVqsUPLRImG8SRn/ucc6OuotJzJVJwBbRZHd1HGKdoCjsIO3BlZJpyzahd0UFuJeYYdS6FT0yAJsGtqA/fEv50bL9e1doyHrcufrYtBOw5VVblwUfQ1yK7jQ55yCj91iKzDBc7Q0VYg7euETH4wKcqmK0PeB35abLorHcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Tm3AviHaKHZ0mCxNxzrW9zMCFLttjWEHSeCkyipQTM=;
 b=Dl9DOhB7FXhErN0a2g06kisu7utQgM4UMxRCgXfD20U1ZITce53dx8fR4tOHFSDzfTJHGd9a7u9G1GnMHAtJidK4Cmxg+6xeZ5N+G77BY7XRBDkWSkeSDuiAe1sgin1P08H+IiBbKnqsFZ4SGMgU0wPK+ISbFKQNQrKfE/+SBUZf6pfjsTD1tVfSwfJQ656avol1X3Y/UdnJBkcybDYA8AI1y7JpydmS0Opm6l6JupkUMvOa7XkrD8Z18F6nyTxBmDOAaLphsQoZPtbAPc0j3QBDRBbEmuuFKVcTMR7kY2yXeGwofa9/TsMq03kzgdUrt85OUwI3Miss+JudnirUVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by PH7PR11MB7606.namprd11.prod.outlook.com (2603:10b6:510:271::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.27; Fri, 9 Feb
 2024 15:47:31 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::42fe:dbf5:e344:f60]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::42fe:dbf5:e344:f60%6]) with mapi id 15.20.7249.038; Fri, 9 Feb 2024
 15:47:31 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-net 1/2] i40e: avoid double
 calling i40e_pf_rxq_wait()
Thread-Index: AQHaWPn0pAB3UxLC+EOn2tfXytwUerECLEhA
Date: Fri, 9 Feb 2024 15:47:31 +0000
Message-ID: <CH3PR11MB831321B6046890F86A0E5FD7EA4B2@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20240206124132.636342-1-maciej.fijalkowski@intel.com>
 <20240206124132.636342-2-maciej.fijalkowski@intel.com>
In-Reply-To: <20240206124132.636342-2-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|PH7PR11MB7606:EE_
x-ms-office365-filtering-correlation-id: 71e406a3-2a9a-497a-2c79-08dc29866d5a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bmJBJumCaM5Mb1injtqaE09WSbBOA5qJZhq+Z9IwkKJ5f4EEwFEzJKMRNCejkcKPtcBQk2zvJxGY2CdKwW4MEGUwjXsUjOPej/k1r7RG2v9ucIuH3A/LeNCUfgCXvXZuE2xcw6k2wgE8C+xeoTRnVKeyr8yF3/WrrkUy65Q8rQKRoJ9uXmtuhhA4i73shoc2TXhH3NV5GnF/o6lTzenlWmV5QWbHOZDUFVOL6F9Ny8Z3I0HNI1IhPG7h7kGhmt4KcPK/urZqMBml9uGuyWIH3zG1hD19P2T9QiXS7dFhqCYJqd70gZhyzKioaPeX7ekYdDpMH4dT1k+bunqBYS3YiXBoX60HQ7m9uuSHeL1/lF3wwkuzxe5oczMWd4d0YDvZzwUitW8Xn5A9OzcvnCTJt6+rH6qNjxL9JvuuFgGBRiuELftYGjQyzA7vUzROj98dQxKerf2SfgzqjPO/Xx3ilYQPwMjl1+196YXWZCEJ+ILsnLYWLFd8iwsRf4VVTgcryQDYuFs84oLaecgw6Hwew7OGgKh1lYz2qoJ7L+9a117CSD68mXLtel7KmWHyGh2lOFmrG5+U2xK1euV3OYRVqP+2otuUQLSL0WswdgrtrtrfSyP9MGDcBaIAf2X5lUog
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(136003)(39860400002)(396003)(366004)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(2906002)(55016003)(41300700001)(107886003)(26005)(478600001)(38070700009)(4326008)(71200400001)(54906003)(110136005)(52536014)(9686003)(7696005)(6506007)(8676002)(8936002)(66946007)(76116006)(66556008)(66476007)(64756008)(5660300002)(66446008)(83380400001)(33656002)(38100700002)(86362001)(316002)(122000001)(82960400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3Ns6tFObHJ4lRO0DVUZZQiif6dJAQyeIGswQc6JGvEW8ClDz/pQEBCOdKTBC?=
 =?us-ascii?Q?PzAM/eVV6ToUY0WA0buEHMPO7Be9/tmgWftj/DMOY1+Y0zGsoGeHtWI4CH/E?=
 =?us-ascii?Q?X+1nLKfPDFgA5pqIhjzIVyvDlA2UTCPhX8yoIuso78iYbdfNfXSjXbkqbF3b?=
 =?us-ascii?Q?Cv2LDDv98hCTdem9qY+u0PK+l1wfYDJZGTLAdASNSEcUL0rDUjctmox/Pai7?=
 =?us-ascii?Q?5YRvcfSNek0zV1OnLH9AIqLR8+0bCh/2YuQCDRynitYAMevtDcTM56KmhueL?=
 =?us-ascii?Q?dl4zwizzWA7R97oUWBA24C4K6NU9rN883k9Wpf3LLQC16POrB4Y2OA4ZOPjT?=
 =?us-ascii?Q?ew5FrJNbNbCIIGm/USM7q2MVJIJeaCn18L1S6fPqRaM1tsr3YJx0PGZMJR3K?=
 =?us-ascii?Q?5zlCSU90bj4cPzTazPlrnqwWJ8ZqzwJWNDkFv9eLoUGsiu0szjHMbdbh8fcR?=
 =?us-ascii?Q?CypH3AJMdnzJ/lMMMG/kXHj4ATsct3hgE4pDcfUs5eP8wPKwZpT9tV+/gszW?=
 =?us-ascii?Q?5v2lD90Cbkos/r1aatPpM1khlfJJVSFnuqs6wTHcQeEwUabfzRkLX9/sJjcr?=
 =?us-ascii?Q?abJXoItqVkhXtLyQryhOxWjSQfzb72vLrFEl1OJ1lPDxh/GY7F+IJSHQeC9S?=
 =?us-ascii?Q?NDZgYj3r/0jHe9xrm/ScCWVkjuuXALTNXbEty/bTl3XVD6kmOX17+w/GE6ow?=
 =?us-ascii?Q?tUUrEusJoa32VUEo1ICbHT95divTQ9aIVO/OhbxhZGTzh1Ss+Uqhj3R8dX/r?=
 =?us-ascii?Q?KaarZQUJaNhjWj2+n67Xr6OjUAUBrwGaq3EP9GCv+t0kCUE6tXfdNjkGNJAi?=
 =?us-ascii?Q?Uesi2MmVJXX3SjDHSTJSHBFee/CzZHofvTynEhxLcNA74KQKJa35AoNDcQmm?=
 =?us-ascii?Q?vEl4gr2cR1Zkg/TZOcCtdA73IOqkoYxSahALEZmEc33ij5cIh7OiplpWMPQC?=
 =?us-ascii?Q?TuHzlf8xBvS7sR7b9N6FXLFDeiqxK5++SyUNTDH1OoyVZ7uDtfYko0qYYY8h?=
 =?us-ascii?Q?e3tISefK4rKHx3PRvpUNTnAqa308ty62hjsnynWnmFGNo2Hxr66hkMYMIomc?=
 =?us-ascii?Q?HjCuJemyTvJwn3PDA6QJzqfQsk6op5pgA0iFm8bv2zJl0meQui2p0YbRMc3U?=
 =?us-ascii?Q?37QishROXoWMNzoYbDwItQ9MGXJLUFEzuGaKPW9FY7QWJu41SXheatduxiCE?=
 =?us-ascii?Q?OgzzB4bm9MZQdVBJR2oag8lIBWxXH+cD481WE03ZAcANMPt49abVyhfyM+zT?=
 =?us-ascii?Q?Sp7/ioWoiYsbU/LdFwVR1AW/q78mCirn5bDW9blH+zTDgd7CAD6pfH2E2tSo?=
 =?us-ascii?Q?nqxWcsFnFeS1MaCfPlb1hm/0juf/l1G1jkcSQcbEoykj+BQy9gJAow7lFOsm?=
 =?us-ascii?Q?liwuDd2YH3YIPlVG0ywSIlRNgk8Z0QKyDMtUpjNbdkx2fay1K11Y3zeDb87R?=
 =?us-ascii?Q?H86bzgUjKg4+VOmMcXRGJkcFKaaa7gfaTLdZLmZQk0rC6p/MQ8PK0nXhZcxS?=
 =?us-ascii?Q?Aa2rPLQqUK2zSTdRCVOrI+t7SoOjkzDJo7U+8OuDnDd843rVYhA8dSdXZtpb?=
 =?us-ascii?Q?LfBFP6EsF5gamEdKoFfv+NMGBD9IP0+xdvZd2yIZ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71e406a3-2a9a-497a-2c79-08dc29866d5a
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2024 15:47:31.6424 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZP0kVZlSCU5me6CeR+/MwIktMNKvLl7voDDCbdwI/9yKtgn5LlOrJLyb6HS4IDCLUWdJAige40CaVCXsejmt6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7606
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707494082; x=1739030082;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S57ERb7N0K3GX2CZ9G6nn5IHMZos0xnpWTXVy35amrk=;
 b=Na3TEGFvIl3vig7I9l2bZ8sio+MMT8pPjYl+JImmJna/2zsfdRA2lO27
 olFqSAn4P4BWqvY1vAnzpMkL/Jnv31R3EK1e7dRDtmd/JnAH7lrJUmaKR
 LGJFAikf+CQruIX6JfwLGW/Eg9kW/3ts6xyzbW7c6c6qvR9MscuplKLq1
 jVwMYwM/3BWmZ0+Jp+u8CD83ktjqJz8Z17MM6MG1j/BwervqkoNo2ipDl
 g19zkked4owgVFHTx4B52kRkCWtcdbu1dzqxQdev4ZzUm9MZG3tiBMdNl
 feFQZrW2DbakvcCUhQPyCixkbnlbBvvzkqYw1AmnbwKrWicyn+cTgbJj6
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Na3TEGFv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 1/2] i40e: avoid double
 calling i40e_pf_rxq_wait()
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pandey,
 Atul" <atul.pandey@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Nagraj, Shravan" <shravan.nagraj@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>, "Karlsson, 
 Magnus" <magnus.karlsson@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Fijalkowski, Maciej
>Sent: Tuesday, February 6, 2024 6:12 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: netdev@vger.kernel.org; Fijalkowski, Maciej
><maciej.fijalkowski@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>;
>Karlsson, Magnus <magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH v2 iwl-net 1/2] i40e: avoid double calli=
ng
>i40e_pf_rxq_wait()
>
>Currently, when interface is being brought down and
>i40e_vsi_stop_rings() is called, i40e_pf_rxq_wait() is called two times, w=
hich is
>wrong. To showcase this scenario, simplified call stack looks as follows:
>
>i40e_vsi_stop_rings()
>	i40e_control wait rx_q()
>		i40e_control_rx_q()
>		i40e_pf_rxq_wait()
>	i40e_vsi_wait_queues_disabled()
>		i40e_pf_rxq_wait()  // redundant call
>
>To fix this, let us s/i40e_control_wait_rx_q/i40e_control_rx_q within
>i40e_vsi_stop_rings().
>
>Fixes: 65662a8dcdd0 ("i40e: Fix logic of disabling queues")
>Reviewed-by: Simon Horman <horms@kernel.org>
>Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/i40e/i40e_main.c | 12 +++---------
> 1 file changed, 3 insertions(+), 9 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)
