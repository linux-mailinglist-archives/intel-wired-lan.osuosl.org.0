Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F38103E89E6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Aug 2021 07:52:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4FDED607CF;
	Wed, 11 Aug 2021 05:52:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AUZyHxHFJQLK; Wed, 11 Aug 2021 05:52:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 350AF60809;
	Wed, 11 Aug 2021 05:52:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 56C831BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Aug 2021 05:52:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 428434014C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Aug 2021 05:52:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w6pQKELi9qC1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Aug 2021 05:52:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6BA38400F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Aug 2021 05:52:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="278807550"
X-IronPort-AV: E=Sophos;i="5.84,311,1620716400"; d="scan'208";a="278807550"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 22:52:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,311,1620716400"; d="scan'208";a="503376358"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 10 Aug 2021 22:52:40 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 10 Aug 2021 22:52:39 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 10 Aug 2021 22:52:39 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 10 Aug 2021 22:52:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NxfwHgKrawK2O20/ooFT/o7+s0giWe3UgsYJEot7MrUpz3dG0zwoY9PFwaKwBgao6xZFNIWFZkttxCyq26KPIqCF5gdvKU7zFbdIs8DqxqM5W7S1Z1AXXcZ/5j7wHN9HTJ2S0CvZswAaXjnO6ehO/MEjVX68Zenyu+vgf+s0BJbdsjgi9JRGfIl7vho/y3XQk6pVejsus5rTarfzaDnvuYEcpw4FsneaPJ3/f+U5BYa1wi2HQQ+Lbsfimf92npXWaInFEV0+GHOXme0BcD2nF0TZ8Jd+Ibhf0qtnaosKJJ0nyhglJjpRtRGpPT8LN1oB7+wUx5wvoCIibcyNq7pabQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nPnLCWdTcTjha+fulvcC1fN2jhcktbtpGMaY3q0G/Hk=;
 b=D5SnyBUuCVwctqRO9XJIOiryO+qljW7Ihe950DK9tvetENjX8Fuzegt8VrC+lvrmnujzJ1EhNoHMw+1x202mMxhCqFDSjbB8tm4PxpyAKTgPQdhLUKHRQJXGPCptZlqrzwDvSv0H2hoWg7EmeSD8uNxWc+nuiYACMKsnVnhunyC/V6XJyaGyz6+bXH9QE2T0MKOd3vRZ/g7YTDrSvsA95selFgmDvyvB2ZbV4bH7UnObdiQ9j2ztjN7ppdtsv/OokyQrMlEfw3giMzyggmL2Y80NiT+YMtGfgZFoIfQJtr1vAjjFsgW6XUs5UIthx1YGnk8MkteFldJ708Z91xRbPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nPnLCWdTcTjha+fulvcC1fN2jhcktbtpGMaY3q0G/Hk=;
 b=JEqBwYK1L9Ycp6IkNwXK+56CpEQ0htt+oGKS+ur7y9G9P0pPAH5/TIkEMPcNM6b4RmzOWWK56xIpEvUIm6pblU1y52enxVUOC1sI5AOK64rcVTZyXhgQDTyR/Xn+CTba8VS+ngMI+fyoRn06QHcTb8DUFNdyYWhMPnbj+yqYM7I=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR11MB2029.namprd11.prod.outlook.com (2603:10b6:300:27::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.13; Wed, 11 Aug
 2021 05:52:38 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c890:d669:a46d:eb03]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c890:d669:a46d:eb03%3]) with mapi id 15.20.4394.023; Wed, 11 Aug 2021
 05:52:38 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Fix crash in switchdev
 mode during VFR
Thread-Index: AQHXfJEvotCxdYNb7kOQQfjbL+dkxqtt8OpA
Date: Wed, 11 Aug 2021 05:52:38 +0000
Message-ID: <MW3PR11MB4554C3E41F397A72D371F0B49CF89@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <1626694079-4328-1-git-send-email-wojciech.drewek@intel.com>
In-Reply-To: <1626694079-4328-1-git-send-email-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: acb82cd1-5ea5-49d6-428e-08d95c8c39ea
x-ms-traffictypediagnostic: MWHPR11MB2029:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB20296BF80A67B62E537F0CE39CF89@MWHPR11MB2029.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EO1hD5HjHcbi3lWmiXb4bDc0buFcSrQorgs2BSW1GveUn76ekS+eCR4QReX7wM/UczzQrcsv7DywKV4Fis0Q368WsHHya98ZEjkiCXmMq/4QtevUUwlJdN84le+TAn4Vr3EFrOHG8NTWHvodemuTM62hbyLliYHz37stJoFOucYdGQ5b2gPVnhcKbZcUSJYu4TJToZMDXHWqQR3xHXpnInbpR/kFqbLvyedAV7UMgvMRA1tUeig7zZOYpF/y+nv/X2nFy3iL6g4FjCh/96Td5YJT2K2ikVuFYcVao6hrxeGNuO2jST8LhVzpUtKvxQYkUWGb2Hh0a7VkiOMwWvfHp8THvGhK+pmQKn4dDmDrPnTLoHixP4EnPg8/KFfvY9DtSxgRfY0bKNdilaq5oXLx1eVL/l8Xsvb9CGlKvhUPMnG3Lx/T0CR5irsOggNmdAvB2bc8QE3DulFXMBQt2BwhDz+v2obiCRY5R3GMQH+rFqo1thjG8GaR6BHzmarQg78YRjXoji4TPZzN0dTN9uOHqBU5ktg/NvkS5FmswSBVmAHuPmZZNfsLqOYq7CgyO1bzlnltFxEJryFM1yNgxnfCPiFLF4PUxoDeobGY0GHL85nxLbbbtFDkF9YPbFO0znb6euWfHz5S7EjbQbNf87zsZuUQW8A/RE8nQUcKbbzwYvyJHbr7rLXPakM4+T3W5EUr/JsXjjh1nIjB9h1CuR51ag==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(6506007)(76116006)(7696005)(508600001)(83380400001)(86362001)(5660300002)(4744005)(38070700005)(316002)(2906002)(122000001)(110136005)(38100700002)(8676002)(33656002)(52536014)(55016002)(66946007)(66446008)(64756008)(66556008)(66476007)(8936002)(9686003)(186003)(71200400001)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZnAl8P8oT8CZao9CHz66oo8T7fE8hw2TVmXMjZlSU1Rza9+H5tr2CncijQgB?=
 =?us-ascii?Q?35u3KnDjgdXGhpU702Naf/A73jW3SNuTPFEjtRGE8Eqwwf1RLa5OM8ImlVa9?=
 =?us-ascii?Q?uGIubE/kZTS3v4Ahz3f9azL7zsjRuFou/vhCmY3CoTl1wGZHf8QRZulCVzLZ?=
 =?us-ascii?Q?ZUvLFDjTcyO1xjztbwEiSCc1M/tBoFMaHBzv2UpZPvYdWImq2to1Cd75jGLg?=
 =?us-ascii?Q?/foQYj5RjIAVP1yv4n/GMx+Qa6SwKlpuWwwHsoTa8igCV9s3mGSjfXw5ojsa?=
 =?us-ascii?Q?ClaGR90CSAopsM24mv0fEuq9DEEf4uipuIub2gBHvAXnfP3Ah1uTfehgz0kC?=
 =?us-ascii?Q?bpR5j/7AUbz619UgI2J3hxeoPUKQ4Hoier3xlceaO9dnJWWgx+uovQ+bDAL3?=
 =?us-ascii?Q?MxM5T51xvYdTCDJ7fwAGfC1/qhADSHx3oLyVDA1AR87/4/Woozogwxend09K?=
 =?us-ascii?Q?BRQgdOc/Hfbz4csqVF08vNV2ThSiGtusjc7NE1qblpn8C2+jdI0fgF+dkPkZ?=
 =?us-ascii?Q?6854EkHpeYOOXFCsmj5Uxd8NPaoITjXWGF4f/N2vet5FyJOGr7/Ww3E0AWMa?=
 =?us-ascii?Q?dmG8sZLhbA+HboIs0/XzTtaCfPh3u6yJp9eJGOppklnS7dA0DhdBL7meuVjn?=
 =?us-ascii?Q?OG6umTz1OjP4835WzjxUQXZuxZZfdKTccb3UxU0rLtsNQTX5x8boi4t2Hifc?=
 =?us-ascii?Q?x5wbSATzPghlE4g2mty1lWvdwN79vdorCkJNvAAokMVUr/n83nERHzx5ZYZV?=
 =?us-ascii?Q?4LR+upT1E+0xCwCTrcr2xdnb/HAy03D9fRRQsQjcstvZXnyp3OpKoOWao942?=
 =?us-ascii?Q?YkGhOkvRevsaV7I4lMgIJ2/r5WrxjJok0GauBcPs+SfP/ivomoSkYM7j0l6M?=
 =?us-ascii?Q?J851AhNEkX0eFYJCSlQ8ltVHWij6fUMUzt7rQIQVOxY8Syz9IKztuZofcJmQ?=
 =?us-ascii?Q?hwhpUGycMhoQvZ1i6UKeTL+XOv1XHQa/A1ejd4LyuE7ZMaIBFsq2aWnHO80K?=
 =?us-ascii?Q?VaukOy9Xmn22Z+kCmw08Q4+ULiXl4HJHQLadOuJXZbfILrSPx5XCkul3MeZl?=
 =?us-ascii?Q?P3kvLwnIEmjmozK/ZhjVwwx/BUBhocTXta67w6QyMTTumURFK3jZkNhU1EI6?=
 =?us-ascii?Q?TkXb69VPa0K4pJxBcqahfDsXQN23pYxmj8wpUECe/i/QhqRyvtQpNSzAZ4lG?=
 =?us-ascii?Q?JTeIYgjclfMHh/qRaO9viy/a072ySPVyOy1UFMMa+xEpGb0M5WFaJ3mv7e72?=
 =?us-ascii?Q?F7U6Q1YFGy+laBykk+iswP82KVnuj7Oh+UsIZfAXmgSk+P23PK1+atzuZ0cJ?=
 =?us-ascii?Q?BA0HF3pT56bUUPkEK+Am2MQv?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: acb82cd1-5ea5-49d6-428e-08d95c8c39ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2021 05:52:38.5530 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hkS7NBqDgy2RHRKNxO+1CXHlYHLjWX42RMZXdHoeQiZV37KSmdrYjaefm4U0K7RN9LjzEXO3Xxf/4xi/IzLyUuz3949/xkYERlS8T0r4EMA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB2029
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix crash in switchdev
 mode during VFR
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Wojciech Drewek
>Sent: Monday, July 19, 2021 4:58 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next] ice: Fix crash in switchdev mode
>during VFR
>
>During VF reset VF VSI is released, because of that there was a risk of calling
>ice_repr_get_stats64 or ice_get_drvinfo when VF VSI was NULL. The solution is
>to use ice_check_vf_ready_for_cfg function.
>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_ethtool.c     | 27 ++++++++++++++++++++---
>-
> drivers/net/ethernet/intel/ice/ice_repr.c        |  6 +++++-
> drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c |  2 +-
>drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h |  6 ++++++
> 4 files changed, 35 insertions(+), 6 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
