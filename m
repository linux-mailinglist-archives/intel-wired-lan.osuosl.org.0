Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A175B6E95
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Sep 2022 15:48:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1975582C9C;
	Tue, 13 Sep 2022 13:48:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1975582C9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663076898;
	bh=YaF2FVFGCmHHPdr96povwY8vryIM0X16hHY0YF3cD80=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sECGYl1MCKepCTSec8I4RrArsx+SRosu+/zAjEusm8yI6GCTsRLeaPh5zY4Gw3Ekj
	 EvdvBt/kRMRDhRIScLb0BC3V2WeN9nsrBmO4d+zTXGs5Kv2Y3lk/0l3Q4Zws10gRGR
	 9dshAQImXF2YFjDldinCYAkXFTXejBxCIhnxn4zpdWVUXkLMmfPLZx9lOehdE5amRt
	 TL0LjYi17zBeIp1yNIryQeDKPW5XrLnHyY1Gk+v8JWNALfO6t777GaYqRZNBMPnFTq
	 1Z6Qp1XA5ZvKC+D9V1DUxJryoZ2x9hsNRcrym9euN/drU/6+/42HHjfnb3AO69z2Si
	 KOGKUzf7lmMaw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HOhVP6a22qAH; Tue, 13 Sep 2022 13:48:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 048E782B8C;
	Tue, 13 Sep 2022 13:48:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 048E782B8C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 852B21BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 13:48:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6B7C340A06
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 13:48:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B7C340A06
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EPnWSgZpl8aW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Sep 2022 13:48:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C726840490
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C726840490
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 13:48:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="324385259"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="324385259"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 06:48:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="616464019"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 13 Sep 2022 06:48:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 13 Sep 2022 06:48:09 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 13 Sep 2022 06:48:09 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 13 Sep 2022 06:48:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SJUlYFHeDN4+Aasr3fmidHdNdz8KTijQDtkgQmYnY7cviVafxhT/aBhS/1gsIR/I1LuiK1i9eli2aSmMxmbGGVyqziPEMEcMWj1NYHJaujHIRGWwL/5ztxRxgw4BkuNQWqeSata3wN07bnwf9PS87Ue6HLb3EyhU/V2hEgQbznTzsFFLuMWRkLJzxn2028wuz3/zAPCJ779XgqQzhtDJbWEnX7CZiqZkd3KYsicY663zfBe18IlpEElcC8PwfaVQD9lpkrIhIoRG3vX3auuPxaIX/YqiaICMwCa3Y2G+C3HFb6J/11xKaeWyq1CDFP/z9I1MbUGVu99JFOiCZ56nBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XngbOrK1Ub5nrbwCQV+BAk84ALN13+rhn4zikv9Jgaw=;
 b=hKDzNYJfEuJWOL0xlAP28krgz3vs9i1hCyz6iaS1INpW4pyQAOCov8tm2YgeufGNHyBQsh03JIuabAfApBQ6TuaiOkM+Ez2bB/WKR2M/KHNYdTSWSj/93H+4D1g5kPeET85rh0CmzxAc1PjFw3hDBRPkC3ooKawvcpwsV4+i7LWjAJhI2gAKqaTxeRKohEYBVrmvnYxLolsivwu6U+qpKLUrRlHhxqOyaasOj1o0azEnSm5LHGbhAOxpNhEWgpx7KYTHFwtqx+X4KXzl6HaxdfwzOyWfeQMJaLiBwDIXv71OBd50aa2TUcT77BIoDYLOt5naUxK8r6/7p+NUk734Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM4PR11MB6526.namprd11.prod.outlook.com (2603:10b6:8:8d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.14; Tue, 13 Sep
 2022 13:48:08 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b80d:5e10:abd2:c709]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b80d:5e10:abd2:c709%7]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 13:48:08 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v9 3/5] ice: Enable switching
 default tx scheduler topology
Thread-Index: AQHYw3GCOMJoKOxIH02UMFXR7w1l0a3dZ+UQ
Date: Tue, 13 Sep 2022 13:48:06 +0000
Message-ID: <BYAPR11MB3367B3050CDE09FCA0EDBCAFFC479@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220908105427.183225-1-michal.wilczynski@intel.com>
 <20220908105427.183225-4-michal.wilczynski@intel.com>
In-Reply-To: <20220908105427.183225-4-michal.wilczynski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DM4PR11MB6526:EE_
x-ms-office365-filtering-correlation-id: 1d90e1bd-1140-462e-4fb2-08da958e966a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gim2PZlXu+aA9Xso/8O8bYEImIpS7Ee2KHPGTcuMB/0alpDHv1iz+E/zzKaWyaUq7LaOPZqQcQ2cyCMQiN++QET6NHyO3EweKtaBoxVAVcVD2en6QZWoh8a9KCqUmpNeoyFjiuXUaeD8evpzv8Z1WSfV6aEu2BQmnlS3xWeSuq/WHcPhJoLKfj1AB4crLcNQG0I44WwqWwq97T/XiEhwHf0L3KgOB6W3f7JJHLfFl1Ct6G1pSffqgNmHqf/iKKUTJ6Oh3EMMsYhHN7Z6zW2Py9hs84YpLE/RvSngxZyk7BVpA1hflNLKMmwtC6xVNdcFPr9JgnB+7qyEtbh5ZrGr2QzamVBzh/8nZKy4p/Y8J4o2LXPUt7fCf6h2EVm08CCB+ZAPKmfIvbKb09RII4e914ONQfBMzNJwsvM1vEniaO97MpJBkQRcJrRGB4USvVoJi9kvC+4dbWhPlJSXo/RFI/5BlLk/yywHiWGnlDAS4hgFWMsFYhRs0AmbNLDzxDHA/Giaqj72zIfJVgCIAlBk68ScbH2EhRMs7i7BEiqUDAcCfdTzz3LO9LY45Ik4JB6FjNqa67lk3eWyrp+k4IPcRDlt4Mjgk7VQqW7AHuTEVDnEmtGkqX6VFefjBJMSBJSicIARBWcO0yRNnm8UgG9tsfNFspKEobDGm9edW7+Kl51d9nJ4juK2VNDgfdGj+Vm2uAZYsuo8iMmeCVy3TTxeoy4r9pbBeZ5MMDLJv5Jgx7T1eIvqB7Id5hcVvbUBUXl5+dx0UtzucjVeRzeJb3ADEQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(136003)(376002)(39860400002)(366004)(451199015)(122000001)(316002)(52536014)(41300700001)(76116006)(82960400001)(66556008)(64756008)(55016003)(478600001)(66946007)(2906002)(33656002)(186003)(110136005)(6506007)(38070700005)(71200400001)(8676002)(9686003)(66446008)(66476007)(5660300002)(38100700002)(8936002)(7696005)(86362001)(53546011)(83380400001)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3066o32w2aYdbtzq91Xs07EHLUk6ztnJo9M5GUvkLiYi19dYRx5HtKhOEUsi?=
 =?us-ascii?Q?sbqH6FjZJ+Q8hLGYMuDTN9hKYI1jPdzsqaHfOehfyTVUn3ChNzsszBbazp3x?=
 =?us-ascii?Q?5xd6+A8yKy3uPIB1hVrsm9UYWEJNnjA+tqThAJhst5udmjNNn5AC5mkxTgFE?=
 =?us-ascii?Q?lWJP8Nt3Ocnpz4j7pMkVg3p3qjeEdLIX07PlczSL0Jf7IswbXtbCgRTFGV6i?=
 =?us-ascii?Q?e+CgvthdFCJ28b+LvrhOm83dteqObeFgBZvwsLEXIkz9xS+C+ikgBJUmKvba?=
 =?us-ascii?Q?JHfnerkhmb+djkD3kDuWEqqFASkBbtFFx+YLkO0xUuCZx4ZzAK1dVJ9NUUpF?=
 =?us-ascii?Q?GQL/1pMz1QRTCmHPG+VNvioks91O3IKIdOC5QzLOLFgei0Zaktep/T3lvpsu?=
 =?us-ascii?Q?20REt36Yze5n3/rhjc1igeZVjQ8GVOawIsShq7W4KoKb/cpoLUQsqryND+F7?=
 =?us-ascii?Q?/sD9T6zaYg6nAeVHkUOZzDltoHeEEuScnkxDGAr/GHWzUONgDp8+SMvp53oM?=
 =?us-ascii?Q?WlMosht5ZOBcfJL2wYlYAT93m8j3Q9ixiNAm+VyUHu2zFgKpYil89ILx6Rdy?=
 =?us-ascii?Q?4NU24mY/wLcj45pDNdJKv9FkUyxqe/8kxrgj3ji9JB7hCa0aDfcC7Hru7jKz?=
 =?us-ascii?Q?Kej1wtHvB7KHxWgA1M7v3exVCOVR9kup6dNJ05qPEjDjmZVw42DVklpvT0Ek?=
 =?us-ascii?Q?tZLippiYea4c9Fnqlk0fMZS8tk1M7XCl25ZCl9otDmJbMIFHJ/i1wrTVLd7V?=
 =?us-ascii?Q?3iWQu4F0v0nWHCY2ohijIcqrHSL1L0kCWfD1QjNsWIHdlAS3Bt4BrMkyWPPb?=
 =?us-ascii?Q?PzBeqJbcTHODUX9M9mHo3ZBO9+WhKYSownRn8lLWmfFUE3b1tN7bziPrsjD5?=
 =?us-ascii?Q?1N+yBNljsK7L86ZHD4cTf/ConSKShpd5zzQppA90sUP8giMuLU7IVuwTT+YQ?=
 =?us-ascii?Q?i/8P642Ys0QaCFGAbsiQoIlon1TWQMsZN43WpPFVCwODadhUPgjTuLv7EUNR?=
 =?us-ascii?Q?CELVbwmr7kFjv5E7pg+zm0z/XBsc3VWG876bvIQGmduS118tNgTGN4mx+z25?=
 =?us-ascii?Q?7mMGw4fGCfizL2IAnhePKK+DO7D9dx0SWYUkPNSA4akXfgo4y9nLx9mrYVPU?=
 =?us-ascii?Q?KPl5B5QKcrUw5k93odxzE6uueFV0uYmEB2PfRFI+Fu1qnB3+suxlIeumi3lr?=
 =?us-ascii?Q?z5JHmF9cJYWmY0U94A1PeCkrSSxEbOha0B9CSE39ylCcm1m5fB5zJSp/1COi?=
 =?us-ascii?Q?ZhbHWaBb8mH5zHsC6Hn8It2LZKppQj2SwYfFPU3xpqNyoHZNZfUj5tLH5pXa?=
 =?us-ascii?Q?3eRvcTk8l46Vs32FtuS0Q6ipbIsOMh5SW16ei2NnRPvRD4fpDg2CehZaQ+bG?=
 =?us-ascii?Q?FH0F3RqWHNKVjcMpFFQFX0UCR3iQIU3tLcI/Lg2BvcsdljOVl92PtDojOTYq?=
 =?us-ascii?Q?Cd3YrJFmUIEePFaPwHuFVBdtCGPBTC5tKupfPF29u0XgqO+HtRQAAoiF2vQ0?=
 =?us-ascii?Q?w3JoM5OqARAAHpMpPIUzxw2ZUzFAkWk5tgSOOxhW/YMSRcvVvpbu5lm2oIde?=
 =?us-ascii?Q?3KCOX0vljsoN19oJJjVI7Wx5vpR8JrORw4a4/syq?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d90e1bd-1140-462e-4fb2-08da958e966a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2022 13:48:06.7322 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4F0TLh8RFoHcKFK2uXxWkcN04FvjKSeCGxUODotdo/EaQVdbzSOozF89pZfYIowJcXM/g9XEvlbRQ/wGEIsiWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6526
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663076890; x=1694612890;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=olEeEpbEPV2fSNMNXg/tJAoe9NRs93CJWb1AQ4whnS0=;
 b=JSoA11hdGBENwQIwobqTnqRcQWjyXZjOOP0noL5dkFM9WzXwWCo+eSlm
 nnsd5TE2dmj5A2/5OVLfEtcsgICMQ9HuaMWdj8FSFM02vRxC5e6tAd59g
 MeVONUF0HBrDHF/FlAcOJ38SGYpsgEqocJgJuNAJx9hsNYYkGcpCnyhJp
 V4/7c3mEfRlljTvTMxqA0nDbm59M6x45l0/sN4CnBEVNknylB0YPZHVhp
 WzuFDsd/P+S7beQx6uVbqG7fOeAPbDH3ArCTvtQrdFJrCNOgdPQHEVzGU
 zVOrRKHF4c2o4KXY+rW4blzHeE522O4Qh7e87kRFqS2j8ESTpd7qsnR7n
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JSoA11hd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 3/5] ice: Enable switching
 default tx scheduler topology
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
> Michal Wilczynski
> Sent: Thursday, September 8, 2022 4:24 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v9 3/5] ice: Enable switching
> default tx scheduler topology
> 
> Introduce support for tx scheduler topology change, based on user selection,
> from default 9-layer to 5-layer. In order for switch to be successful there is a
> new NVM(version 3.20 or older) and DDP package(OS Package 1.3.29 or
> older).
> 
> Enable 5-layer topology switch in init path of the driver. To accomplish that
> upload of the DDP package needs to be delayed, until change in Tx topology
> is finished. To trigger the Tx change user selection should be changed in NVM
> using devlink. Then the platform should be rebooted.
> 
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c   |   2 +
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    |   3 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     | 113 +++++++++++++++---
>  3 files changed, 98 insertions(+), 20 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
