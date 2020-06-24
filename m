Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BABB1206AE1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 06:09:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7036E877DD;
	Wed, 24 Jun 2020 04:09:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pie1mCY2JAne; Wed, 24 Jun 2020 04:09:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ADEC687716;
	Wed, 24 Jun 2020 04:09:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4E3881BF25F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 04:09:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4917B868E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 04:09:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ExWk0ULun9mb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 04:09:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 073C9868E1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 04:09:23 +0000 (UTC)
IronPort-SDR: 8NJV52YBNtJngAuc7Jeb7AMqsL3jzslwzhnQFeoGFSIgd5jc8ttvUTHHNmPc+6Lo7CV4Gyy66X
 Tnge38ygtDVA==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="132733704"
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="132733704"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 21:09:23 -0700
IronPort-SDR: yA8MIKSI8C4w7uuYiv3e6saMQqw/huNnt4iV4gSKNruKZiBMjNVEoFqArreQi6EIMJd8WV+nX3
 n5luEbsA2ung==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="301490234"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga004.fm.intel.com with ESMTP; 23 Jun 2020 21:09:22 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jun 2020 21:09:22 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX157.amr.corp.intel.com (10.22.240.23) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jun 2020 21:09:22 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.53) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Tue, 23 Jun 2020 21:09:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e1GOubvM57e211Jqtn9o9w9Szjq9EyLY+6f8+P18xIb/TgZfRQ45765lcgtIMXWDidM++AB0zvwwePOy3Nvvcx9vRJ+aC3qu7vEFBxyKyc9ZaY/zcr3aKB4jOtUeSAossD60y2/n9+8jzsUY0SrrclJaPaVsFrUYDUDH9EgGW61YxMKOgUvlkyK/uai6qcVHOLZMZtHiN1erK4g2+SFW0RtNGdV2HeBEwB5Jq4wpD9ELBlsxMQFzy7QZUj0WUn9VSO7o+QBng1Qi9ftjqGdHrdWKIdg0hDZ1XrqzKX6AXZ3puWTUqmiZ7rMjio6gxPDoByelFZTvwzvSaz6LUGwZAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n5eJ+soHEbcEjB14ci3YwS3vzC6+zQNPTBlznxY8+UA=;
 b=P1wZeNZHOyF4/srTcgx0UWt2KvaMS+zyujrdiYwwL+lZqg1TEc+w/nH7KGSZPAxb82fi3VGQzwybNfg/7H85i8tYZQRIrp+3eqWN4EWucQVmK2svx1yTRVoOBtLHqNp36fg7uXq86BcMIbIs241SfstaotLYg8lUJe1GRPkfanS2MJgeLj8/v1C7pNEQIFANbVXzHrLdqllEc89ckodDuhMENyAgwXqdaz+AB8y7VV+rEfBzDTUmQi2hRM/kTjO28VjpWpUyWzWIl3w+V3OduVMUwVDKCq6Y3HtnZoZCMeDGvjPvuKGsxBJgP4Kt4R6efk6rPftYSR6mv3WQiIfZxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n5eJ+soHEbcEjB14ci3YwS3vzC6+zQNPTBlznxY8+UA=;
 b=uBk0PXEmu/fJLP6A9B+AVUJcraSpGYlWlRMZ/srOPnYuNx5nmP73t+Dd+TlFczPw2+WCFarHBqty8jHsHnKIzI8iPW5+tn5OwxHFJ8jl18nLKSyMFlG/jb6DfPnRji0nJ8NqrZJR4EpY4WhvWaQyRtPvjD2UPHw//IFyqS7qI8Q=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3913.namprd11.prod.outlook.com (2603:10b6:5:193::33) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.21; Wed, 24 Jun 2020 04:09:20 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3109.027; Wed, 24 Jun 2020
 04:09:19 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Add LPI counters
Thread-Index: AQHWOmLcA/X5ncuyAUa97uww/dNjhqjnEh1AgAAm54CAAAx5AA==
Date: Wed, 24 Jun 2020 04:09:19 +0000
Message-ID: <DM6PR11MB2890D9D0EF6CBD2B0168BA88BC950@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200604112516.44949-1-sasha.neftin@intel.com>
 <DM6PR11MB2890D64AD6055EB780EF3885BC950@DM6PR11MB2890.namprd11.prod.outlook.com>
 <5a821cd7-cd51-6725-34a3-2c4322ed35ba@intel.com>
In-Reply-To: <5a821cd7-cd51-6725-34a3-2c4322ed35ba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6cc3b31a-ea37-42e4-ce46-08d817f45e9e
x-ms-traffictypediagnostic: DM6PR11MB3913:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3913A61D0653241275665DF5BC950@DM6PR11MB3913.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1443;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hkanfFQgNC0VP32ni48iXKKvIl5iirsx6EyJfKUscq50W9fpmnu+9pVy93En5JoRbvoCwLybejcKr6ecF91xxfgA6GQBBovx6G6ZoKalGF+vSaaXznHROrJwahiuW2Him+920sTL+2Dp+j4VsumVy7Cpi3+9Y0nH3P3gXRC54wuuY6zTOL96K0TD0UAFsnCesccd2qECH/UAJ2KiXR7Ab6URG9HUrq49efrYWs1knzjy3neVunzKSOYFylzxi4s2Atp1aap2OZYqf6iAWsRls9fH+uwzK+4aR+DipXjsJS+xUMg253wtR/aysnHlf6yHXKEVdGQchE9wgxsgPG5oaQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(366004)(136003)(346002)(376002)(396003)(33656002)(55016002)(4744005)(6506007)(83380400001)(53546011)(8936002)(66556008)(64756008)(66946007)(8676002)(76116006)(9686003)(66446008)(66476007)(110136005)(7696005)(86362001)(52536014)(2906002)(71200400001)(26005)(316002)(5660300002)(478600001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: bozFTeoJvGU2G98dYafqI+hcUECX5smggjYDQQui3aSXaaqTs+KfNid0ohvW1QJ8jv4PFi3sduKkcoj0pZ2eA3u6hvkzq5LA5NUvaos/iTpTwLxiS3bWdOmEz+jCcs8dvsTNhzBdXbRS/fE63KcysijuFf6oyIMWxDa5KNLANFSVSV2UZuj758ys1QMKXyUiTC+gozAaJCL9swipowLUQO5ypR1xKgxPkH3xJOmvzJX40i54b2HQRytF+BVCcGRT1tbnSzGS2q/ekNHdyK5Y86u4bA8tuybs/vzFRbKLEdZhhrGE3GOxf7RHwWx8NNH3cm24yChQXKen6iMbJsl9kBlzdxH/KtIH20/A3heFAv3JzglyjEmLzNBcz6iFKjtZq0yV2ldV0tF8sPv7uXpbrs1NbRCd3SUVbBgrrx4kN99c7iM14hTosXXoBOnGd3xXwKMRF+hYM5w2nrLgnyu0vOalKGq8Zhl3Mcj8zd6eozekDcmXqfwpGIpfmA2RdPpJ
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cc3b31a-ea37-42e4-ce46-08d817f45e9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 04:09:19.8830 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8emD6PIh52vO449FsJe6a2hHyMdkEtprmxAjAHuTRiropcuRz1UzD8aF7BDRFEdbXq2SoobshqJnAJkWMfBVVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3913
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Add LPI counters
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

> From: Neftin, Sasha <sasha.neftin@intel.com>
> Sent: Tuesday, June 23, 2020 8:24 PM
> To: Brown, Aaron F <aaron.f.brown@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Add LPI counters
> 
> On 6/24/2020 04:05, Brown, Aaron F wrote:
> >> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of
> >> Sasha Neftin
> >> Sent: Thursday, June 4, 2020 4:25 AM
> >> To: intel-wired-lan@lists.osuosl.org
> >> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Add LPI counters
> >>
> >> Add EEE TX LPI and EEE RX LPI counters. A EEE TX LPI event
> >> occurs when the transmitter enters EEE (IEEE 802.3az) LPI
> >> state. A EEE RX LPI event ocuurs when the receiver detect
> >> link partner entry into EEE(IEEE 802.3az) LPI state.
> >
> > Are these counters exposed anywhere I can view them?
> Just added relevant LPI registers. EEE support only in initial phase,
> many stuff will be added later.
Ok, thanks.
Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
