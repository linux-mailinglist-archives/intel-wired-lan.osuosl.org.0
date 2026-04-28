Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CzeFUKH8GnuUQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 12:09:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DEA48242E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 12:09:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A33BD60FA5;
	Tue, 28 Apr 2026 10:09:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gkapi8HfnErG; Tue, 28 Apr 2026 10:09:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D984A60FAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777370942;
	bh=WHzQp0IysSMlVBNV1PsgNxiJ0Bq7asCXHu0FHEEMvu0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dA835cg/zyN73d0dLU1G/uKh7L9v4RONebu9XhR6nXu1aA8N+k3tfe62wfg8LpXRU
	 3rDTzYcYTUcr+Sj6uo2t0nFJ8SsZNB7sFuCtSFKw0JPwwO31Pg9Xdi9NM+Tlte7yqB
	 vHh68+X3++Us6M5ogeTK2qYRoGwM+oNoFB0Fup0AmV/k2aAg9RqYVokNBSab8ILQAe
	 wBkyjhZiBI/hv2DRR4W0yrzztri7D8DbB1jH9/ijfgnPCaGAbM3Wa4Xdeq8g1YrjwN
	 dr/GjOqTmlPpPYHxCJrTJi8J9JxZdZE83gadB5Fhn1pztKdEVLwgd5e2bLyQQJsQ8R
	 QkhaG5u8lDaFw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D984A60FAD;
	Tue, 28 Apr 2026 10:09:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id F0E0223D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:09:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E269D406B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:09:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NgoMPOM5uDXs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 10:09:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 15DE1406BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15DE1406BE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 15DE1406BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:08:59 +0000 (UTC)
X-CSE-ConnectionGUID: hB7xc1VuTcqP6wzoSaAERw==
X-CSE-MsgGUID: t5SFKT8wRgeHknw+Yszv2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="65805048"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="65805048"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 03:08:59 -0700
X-CSE-ConnectionGUID: vs/RxxgVRvKv2aSrGopZDg==
X-CSE-MsgGUID: b4RSJ+1IRO+++99tVBXkMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="257223162"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 03:08:59 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 03:08:58 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 03:08:58 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.25) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 03:08:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dngB59NXAH4l2B1vnShO7MEoo1+PmHsQPB8VbMv6ly5W2cXR+IXvujvfYzs+Zgct5QXYcZwXV09Pb7GA6/AG9nvrNO1RB++dX1SeOPg7n8o3NkLrR6APGSaR8bjiimV8Lu13wCzCUlmpaV8jclHVl4dH4aSthRMEQnHD9U+0HKtKaju44dhC7MXu3F5Scga8oFx8YjtuLonDE6RIEQcs7RzMYB6p/Xa51Aas5vWNZy0xhSFhXhKdqSD8tWmFh2XODNlZbuorOq+CP4BdJ2m9NzhvyVmngUWN+gtmxlOSe4tyKXlq9GkROo/Sej8hTRiuKFfHDj+2gQaQZZiwW8/xgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WHzQp0IysSMlVBNV1PsgNxiJ0Bq7asCXHu0FHEEMvu0=;
 b=AEFi1BD2MqE7GvVycGu5zDp27wItpmjwHBMoWnhbd2xbcWfsgqbC9VU2b2X9SYVkMHS/5zh2EcfyVgDb4aje9RbFY1A3sSLYHv8FrNNSimsKqgtCndbW3f2GhxIaTarcL5ZhEZFU7VcunovxEtXdDlGc2hsZ3UnJL5qlzBuynUtzo1kZTB5y6BY3O6N5C9aHygill5zdwZRgh2npx+GrAXPhNnKOtLPPv2qkwAMNu4Pv7s7FwHbFhOFG8tWyWm9XOF3DdjP7s3y+of6KuccqAjeL20ia/VVjNK2rqJqu6q09fN7Q8Cwvsn5b+r0NiyeMoqMh/cJgTEo3A6gyk4LfZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW3PR11MB4716.namprd11.prod.outlook.com (2603:10b6:303:53::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.18; Tue, 28 Apr
 2026 10:08:50 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.013; Tue, 28 Apr 2026
 10:08:47 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Salin,
 Samuel" <samuel.salin@intel.com>, "Czurylo, Krzysztof"
 <krzysztof.czurylo@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v7 01/14] virtchnl: create
 'include/linux/intel' and move necessary header files
Thread-Index: AQHc1ujceWe0FhMREEOXauksZkm32bX0QApA
Date: Tue, 28 Apr 2026 10:08:47 +0000
Message-ID: <IA3PR11MB89868E4D9E17649A3C25B2F3E5372@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260428082654.44364-1-larysa.zaremba@intel.com>
 <20260428082654.44364-2-larysa.zaremba@intel.com>
In-Reply-To: <20260428082654.44364-2-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW3PR11MB4716:EE_
x-ms-office365-filtering-correlation-id: 8fc70b93-8d4e-4906-6f4d-08dea50e2344
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|22082099003|18002099003|38070700021|56012099003;
x-microsoft-antispam-message-info: iF6G/egl5ld+I44S1chxCw5iFV4y6dh2V7OLlzre6jIwDI+s7LYL0rYkJE7Xv7ywNEYouEtK5rT7UUxFmUcYCtoHlyxwWCit8HCnEX3v5dPFTXhGFFnVUB29x48KXNp3RQ4Xh1kQK6VfY75o/9dNYkBJsvqEeI/kGbyXrYzLo4wUdhDVAsDxrLy2d3/XGC8MO2nT2K0yYOTSMlHtV8gJIgr/XdmHzpYn9rnQP8gjRzWLlBuhtc9jIaEsGFr3Zku20U5B0F0V/RNzL6AqRUiyJPCpmxue4naHsnFJbyCpTiPLuMoMhihcA8Ixz/BTKYOun9dZ7utrCqUeuIyKWNShXP3PZpxJ8omFKc2Bxn1OqQTjXQ0t17D5jQjThpBgRY6/oZD2sHNSyKzNGY+co+DOGxTrRRl/KVnrlSdVLa75OWuVnNNBheK6FRrBNUqD2cNlSiVVmET6AKDt++bU26LueOkzPCa997IVeblTTVyiRZWX+tYtYa4L0rrbILXHS6bGfF0Q/oBdaSIeaXcRrhbcl4z7Y6Fk3VvmsyRNNUubdS+O5D4lhwerD38rW7lM1YKgTm2urfxjrnrCJTdeiFe9c6jXphQ1JAh5oE96TtmD3xH467r7kYwen5piBFThvyBixBDzcNMXZUcN567N+JG6n+Ro3Y2+X0QerllJOQJEaP8ypn5F0s2V0IF9KxPoBOTCf8ti/NskIGOH4m9uk59cb73TrAMgtTdAqh7VsIBLeJPC0FQG3E6l/Och82Ti8STYCsC8V2IcJB5GQ3GwOlb4PU18WBNKEAYc5RxQ/ElhJFE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(22082099003)(18002099003)(38070700021)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?e2kJ9lkS77FZrjudKQrBPMTiUhcrhd45UzKqiT08HfJ3yV6jlOH1RJ6luvGn?=
 =?us-ascii?Q?jvdkYbu7rXVytJhYzl65FL0PmhYoV5maMHtWq2+suaPuO2Yh+qFM+n0fgwcx?=
 =?us-ascii?Q?UQ3b3ec7QTskhPvhPbwXX1T7WYUrOYUWRiX2/U/XGPjU9nzkM9I7SJFbNO46?=
 =?us-ascii?Q?gqoi3q6tiiriZguU1vGSWpK3T5/nOOYmXBlyxg7ZvcDQL6PEsRGvxZ5OU4Y7?=
 =?us-ascii?Q?skBjzmcXiXjofvQI1JQncCtU5wBYOOsEBKENdLQRJK8OM3eT/HCHsKa/haJQ?=
 =?us-ascii?Q?XUZAnNUQEtnlFiGaHabbXVMwjyLbv2gKIRKSXim3lE96MmzEmbwxJDqyM7Cu?=
 =?us-ascii?Q?x/wyeBg1McJRcL93fboqz33DxhAcacw9oWo3i41NFZvMdhGu3OzS68nSWlI+?=
 =?us-ascii?Q?30bUZWwen9fxXhb6NwxFtubWGvYf8Sm0EqcQPsVy0WL9+eUhvh76j7EftgJ/?=
 =?us-ascii?Q?/NXrfPgN3nG/oAwc3L7wXp92H6P/jwrQus7GqN/6AMd+w6hh9wUieIbPwMT6?=
 =?us-ascii?Q?dCYxw21mTnSmHZt1bwTmH65J4HKGEtvkhVlekn2HYV5KtnIa+SiQ+Fpji3A/?=
 =?us-ascii?Q?HaN4ojtYkNHLrc1w1WwET+CamuwXdksY8JGs0z/dl2kueCg6e+swrlJjZl2U?=
 =?us-ascii?Q?yjDhYy0W0Geb04mZmK5o2FkNKhviudxycyuwwxl4nM+oEIH7xDlzp8BO/70I?=
 =?us-ascii?Q?t4EsL1uKEf9HiEUBMA5JeNI80qWVTeYqo/UU62cfiq9x9INk/wLpRhM36snM?=
 =?us-ascii?Q?yIaH7BNxCg6fnD5rwmi8g+0nv1D0yVntoEW2faic7BqTg8CwkuM7FEUxWxNd?=
 =?us-ascii?Q?Z+ea/Nj9VqXULB51/41eBAf/tWeOyTviMENtLKEP4KijmbzsYe0l4cvTv90R?=
 =?us-ascii?Q?+Ev2u+cA+awWqqbZC/bbcBCPQHtjGVnFA/PpQA84fooIJSfFrtcw08Ust12a?=
 =?us-ascii?Q?tYMzCzRJdEdZfxwkY1KAFnfctg3zqTBQyWgolG2kHkqAdiV5pL+ClMb5vpKL?=
 =?us-ascii?Q?+NVdCZjBpHXvwQI+Zq7zOqJ31t4xEJbdatBdMPkzpWq1m1+Zb16WQuSAiSvd?=
 =?us-ascii?Q?ICCp22xF9cqUtG6Wh4Tkw6Agos+/KPMvlPSygz6Bwf7+ll6bJ166Mo4DC8iX?=
 =?us-ascii?Q?UdPRU7Ez7x72LQZNhYEGc24VfiLqvybV5cK2F1pbZhfVvIogWfrkuG0X6peR?=
 =?us-ascii?Q?vxb7Cf1E20bL7DJC6WnKIcOlD5T+teH6QwwjhBf3BcV3DJTrlhzHTJwBH1rY?=
 =?us-ascii?Q?APm5N6uYcm3pTSdKyliPKDgOws2MbrwDxNO5JLoqb4YA0XnCjr5384SHnZra?=
 =?us-ascii?Q?I1OzikRBBrh5gaUq6UDn423+lxS+FBvqN/lg5fGvybAsiyAnKcDouurtADLO?=
 =?us-ascii?Q?Mvgp/nXk51qPLdkmKUIE4c1qf3kvNc1vbx85ihbJ6mrtcNJGBORHQ2sB9qOy?=
 =?us-ascii?Q?Gc0E9iMu76jm6TAdqsOTATL3j6sMX6zz1X/1FMnSdWwERLRYebaDZd79F2Z/?=
 =?us-ascii?Q?zLynBkJTuH0PSz9MJXrXw4Zw2Bu9mzlexroj7GPk1DFTEaqgUXA4SHjNJM58?=
 =?us-ascii?Q?aMj6Q/4VCuSHWI0tIsg8Oxndi490ocQ2ATuJ+qRbIuKjj6pm8zaEc9tZq4Yi?=
 =?us-ascii?Q?F0TfODH/MGgnsh3d3XmMaqDwWDEigfWFIWcZb1Tf15wttlcxGe1WNGxZh3re?=
 =?us-ascii?Q?Jj7fXVIyk5uiQm2QvHLF2PGgNooQHX7C/Em56pa4jRZy4P7oMFxn3lGHckMQ?=
 =?us-ascii?Q?wmS8vBUcfwrjLVuUFUMFnwECARVDe90=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Bj6ySDB5Yo464nfexdAnoVaFjOVD2kCUgy3EoHISgrRaUGyz+m1U9tEg0GJIClUUx/A+Wv89I0D0UjXZsPppyX8Fg8pOaW5v2evtoK1o+M89S6svPAsRDqVPIJHAlaUPLKwLyMt1SBXZduXgGg1bmhtdhgg/V2VdnTRrS43NA8+KbJmV17uLXp3fHpcIKKTDtgeh+0qRIltrDpnTkLd1Pecs8/7fk5sCjUlf5oMC1GE/eUfU70mRn4i8Pj7rn4FKb/LjrcXuyLQTXy1qHgssy4iyavSlRo20MpnYuwPFRIJNVZKeXxIEfGtIIopz6ulRwcLqkeifb7BfC8SuBSAqaw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fc70b93-8d4e-4906-6f4d-08dea50e2344
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2026 10:08:47.2952 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PhoAc30Vq7inEXGcSpiZcoathFPRZwvHeCjVfoKRSIoRew54JbhbqEF4CKDgbayMloxwftSjdjKZKuL6obIrlN7X3gfYpvgzrcDOyzlN7ug=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4716
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777370940; x=1808906940;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=joGvd8sVzFPjq1xokBZAvnSHRPkzXR+2l2kLNUNtilU=;
 b=KKpj0CZ1vMjDmXRvh6/d2W0V5oLQCJgtN2SQk0sTa3A6PEumlsNZ5UFK
 10SkHjhnUkeV6FoBajSlEBRnhpnrige8tkxVxg7DKMyYmTwUT8rF5rbp2
 FeRM7F5exXHaFFph+u/0Ci3b+5MDiBTRmXSZlUrD1xUrE/L+9Kic9qlw/
 WrWwkpfM6Z+wPkfYC9ujSaiGIvjzMBfiaRcVBA1yBl+EV3108MMWz8sNd
 TPwL79VUi7FXjy1sNcPhECYmlRVfDhW+IbzFrVoQlVUh4nfWmzgNKdCZt
 fm1/ST7eXdo4KLV+0It2v6uidpP4AZfMGFTZ7ejCU5QiUs1AhjwxYxk2B
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KKpj0CZ1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 01/14] virtchnl: create
 'include/linux/intel' and move necessary header files
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 66DEA48242E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:samuel.salin@intel.com,m:krzysztof.czurylo@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	NEURAL_HAM(-0.00)[-0.850];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Tuesday, April 28, 2026 10:27 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Jiri Pirko <jiri@resnulli.us>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan Corbet
> <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; Salin, Samuel
> <samuel.salin@intel.com>; Czurylo, Krzysztof
> <krzysztof.czurylo@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v7 01/14] virtchnl: create
> 'include/linux/intel' and move necessary header files
>=20
> From: Victor Raj <victor.raj@intel.com>
>=20
> include/linux/net houses a single folder "intel", meanwhile
> include/linux/intel is vacant. On top of that, it would be useful to
> place all iavf headers together with other intel networking headers,
> same goes for virtchnl2 headers which will be used by both idpf and
> ixd drivers.
>=20
> Move abovementioned intel header files into new folder
> include/linux/intel.
> Also, assign new folder to both intel and general networking
> maintainers.
>=20
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Victor Raj <victor.raj@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  MAINTAINERS                                                 | 6 +++--
> -
>  drivers/infiniband/hw/irdma/i40iw_if.c                      | 2 +-
>  drivers/infiniband/hw/irdma/icrdma_if.c                     | 2 +-
>  drivers/infiniband/hw/irdma/ig3rdma_if.c                    | 2 +-
>  drivers/infiniband/hw/irdma/main.c                          | 2 +-
>  drivers/infiniband/hw/irdma/main.h                          | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e.h                      | 4 ++--
>  drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h           | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_client.c               | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_common.c               | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c              | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c                 | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_prototype.h            | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c                 | 4 ++--
>  drivers/net/ethernet/intel/i40e/i40e_txrx.h                 | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h          | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf.h                      | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_adminq_cmd.h           | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_common.c               | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c                 | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_prototype.h            | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c                 | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_txrx.h                 | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_types.h                | 4 +---
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c             | 2 +-
>  drivers/net/ethernet/intel/ice/ice.h                        | 2 +-
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h             | 2 +-
>  drivers/net/ethernet/intel/ice/ice_base.c                   | 2 +-
>  drivers/net/ethernet/intel/ice/ice_common.h                 | 2 +-
>  drivers/net/ethernet/intel/ice/ice_flow.h                   | 2 +-
>  drivers/net/ethernet/intel/ice/ice_idc_int.h                | 4 ++--
>  drivers/net/ethernet/intel/ice/ice_txrx.c                   | 2 +-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c               | 2 +-
>  drivers/net/ethernet/intel/ice/ice_type.h                   | 2 +-
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h                 | 2 +-
>  drivers/net/ethernet/intel/ice/virt/virtchnl.h              | 2 +-
>  drivers/net/ethernet/intel/idpf/idpf.h                      | 6 +++--
> -
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h                 | 2 +-
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.h             | 2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_type.h               | 2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h          | 2 +-
>  drivers/net/ethernet/intel/libie/adminq.c                   | 2 +-
>  drivers/net/ethernet/intel/libie/fwlog.c                    | 2 +-
>  drivers/net/ethernet/intel/libie/rx.c                       | 2 +-
>  include/linux/{net =3D> }/intel/i40e_client.h                 | 0
>  include/linux/{net =3D> }/intel/iidc_rdma.h                   | 0
>  include/linux/{net =3D> }/intel/iidc_rdma_ice.h               | 0
>  include/linux/{net =3D> }/intel/iidc_rdma_idpf.h              | 0
>  include/linux/{net =3D> }/intel/libie/adminq.h                | 0
>  include/linux/{net =3D> }/intel/libie/fwlog.h                 | 2 +-
>  include/linux/{net =3D> }/intel/libie/pctype.h                | 0
>  include/linux/{net =3D> }/intel/libie/rx.h                    | 0
>  include/linux/{avf =3D> intel}/virtchnl.h                     | 0
>  .../ethernet/intel/idpf =3D> include/linux/intel}/virtchnl2.h | 0
> .../intel/idpf =3D> include/linux/intel}/virtchnl2_lan_desc.h | 0
>  55 files changed, 52 insertions(+), 54 deletions(-)  rename
> include/linux/{net =3D> }/intel/i40e_client.h (100%)  rename
> include/linux/{net =3D> }/intel/iidc_rdma.h (100%)  rename
> include/linux/{net =3D> }/intel/iidc_rdma_ice.h (100%)  rename
> include/linux/{net =3D> }/intel/iidc_rdma_idpf.h (100%)  rename
> include/linux/{net =3D> }/intel/libie/adminq.h (100%)  rename
> include/linux/{net =3D> }/intel/libie/fwlog.h (98%)  rename
> include/linux/{net =3D> }/intel/libie/pctype.h (100%)  rename
> include/linux/{net =3D> }/intel/libie/rx.h (100%)  rename
> include/linux/{avf =3D> intel}/virtchnl.h (100%)  rename
> {drivers/net/ethernet/intel/idpf =3D> include/linux/intel}/virtchnl2.h
> (100%)  rename {drivers/net/ethernet/intel/idpf =3D>
> include/linux/intel}/virtchnl2_lan_desc.h (100%)
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index e7dc9e6fad2e..8bfa20b02005 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12842,8 +12842,7 @@ T:	git
> git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
>  F:	Documentation/networking/device_drivers/ethernet/intel/
>  F:	drivers/net/ethernet/intel/
>  F:	drivers/net/ethernet/intel/*/

...

>=20
>  /* Only a single log level should be set and all log levels under the
> set value
>   * are enabled, e.g. if log level is set to
> LIBIE_FW_LOG_LEVEL_VERBOSE, then all diff --git
> a/include/linux/net/intel/libie/pctype.h
> b/include/linux/intel/libie/pctype.h
> similarity index 100%
> rename from include/linux/net/intel/libie/pctype.h
> rename to include/linux/intel/libie/pctype.h
> diff --git a/include/linux/net/intel/libie/rx.h
> b/include/linux/intel/libie/rx.h similarity index 100% rename from
> include/linux/net/intel/libie/rx.h
> rename to include/linux/intel/libie/rx.h diff --git
> a/include/linux/avf/virtchnl.h b/include/linux/intel/virtchnl.h
> similarity index 100% rename from include/linux/avf/virtchnl.h rename
> to include/linux/intel/virtchnl.h diff --git
> a/drivers/net/ethernet/intel/idpf/virtchnl2.h
> b/include/linux/intel/virtchnl2.h similarity index 100% rename from
> drivers/net/ethernet/intel/idpf/virtchnl2.h
> rename to include/linux/intel/virtchnl2.h diff --git
> a/drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h
> b/include/linux/intel/virtchnl2_lan_desc.h
> similarity index 100%
> rename from drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h
> rename to include/linux/intel/virtchnl2_lan_desc.h
> --
> 2.47.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
