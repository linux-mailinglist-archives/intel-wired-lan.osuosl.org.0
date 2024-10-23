Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C35F79AC06C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2024 09:37:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46D9B405BB;
	Wed, 23 Oct 2024 07:37:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ng6mAR8W_xfh; Wed, 23 Oct 2024 07:37:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CFD940568
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729669030;
	bh=+YxyQ7lFhiTUytGVnP3ogQbraE8BqXuxDCwKzASjTbY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PrU5tI+xuSOePx83nj/pXZHe2Vs1j6DrTWy2L5+Z030D/gJDZCoHdyZjVBOzMYIwF
	 JbBm/wDhbPl3tl1bsNFAnT1Jet4ziJ6LD4gYRqYSWFhKkOcLfSz3Fd+dyG8Xt9f9I0
	 QLuYbcRu0HlvFgVnlMLKX8eQJQomLyHIpQx128X7B8rj7+kXDceOcSUrwA+PVfz4Ta
	 2F3qwv0Ntbu5f2gMBXrvZuB8W6MfuFBklabVoQ9SwqardWNoncCv7IjAj//Bn2I3QM
	 AoENjTyknLmYsGRcUdOxl8ArzvH5spbmDEx585fOwIct9oVu1+Pu1naRuiBaAsHuLb
	 c204P80ioOPtg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CFD940568;
	Wed, 23 Oct 2024 07:37:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D79F34C2A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 07:37:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B91C7607A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 07:37:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1imgUWxUZAR6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 07:37:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C4D956078B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4D956078B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C4D956078B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 07:37:06 +0000 (UTC)
X-CSE-ConnectionGUID: iNVFlJyXSP+xrir2Y/q6Uw==
X-CSE-MsgGUID: X9Dlg4+ET8q7VRYMhATlSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="51784357"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="51784357"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 00:37:06 -0700
X-CSE-ConnectionGUID: 6Zdzx43pRNKYc1vml8JVBw==
X-CSE-MsgGUID: 1kh3WvvoRlyReG4u7kUOxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="110951944"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 00:37:06 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 00:37:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 00:37:05 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 00:37:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a6jnVYGiVf6rfGj4Su0T9O1nenjziaWzvuEIMwOP5kVgTuOGsvVdGW/Is6UUlZwjC8y5A5D1K+pP2+SzLpwoIMm3rzuvQFi82GEangMl5ly2jjDgmabHShdvqi/MBs0+8+r6qzDu2AebPelm5+KOShM5/9x7ozVv71vEUbh8A3Mu7EBZk7aaK8cFtZ4RLUnCt1NmtGIj+JFs1XP5LQs4zLDJ6PouP55ShrET9TrXhRKpln5NxsZmp42VTre1ecz8LztzZ7Jmd392I3XgsMRfMKEte2VpTkfUcrWnb5ry/V89c5k6WpI7ipCjlfiwsr6ERVWtWeKC7+jgrlxeD+9Gyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+YxyQ7lFhiTUytGVnP3ogQbraE8BqXuxDCwKzASjTbY=;
 b=lKOxeVH7FlS8+xdeS0/NjXNCeT7+j4SLfmz7tyEiQRqV4FWBC5j7xLzSCuS90Jju8HmY84r11Z0RpVkWa4V1U565cSy3DFkinpWYqeNUhzxutVYfkcEUsHWOFRUaTkL2CTlMEcHIJXYAD+ienw3gn5GIlxgbWee1cKdryD9cZDhaF1+kmuJDzVFyqE9+RwsA3lP+lh+aBv+gv6zRT3Mb9kCc10o1QX+Z7Ll9KqR1PhzTXsr4ASHYbp5HPbU2NvbqMu4PmvpGPljnaLPB7wSOBrsgGWzXr38IpLinNL6zHk6xH+n1+PWzjOJpeA6mfQrmSVcQke0xyR2E0SkF/pQHjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 MW6PR11MB8437.namprd11.prod.outlook.com (2603:10b6:303:249::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.17; Wed, 23 Oct
 2024 07:37:03 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a%4]) with mapi id 15.20.8093.014; Wed, 23 Oct 2024
 07:37:02 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Richard Cochran <richardcochran@gmail.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [PATCH net-next 1/2] ptp: add control over HW timestamp latch
 point
Thread-Index: AQHbI8T+Af2gKLBXbUqBk3x6z/Z7+LKTmo8AgABXzGA=
Date: Wed, 23 Oct 2024 07:37:01 +0000
Message-ID: <DM6PR11MB465719CBAEDA91D1E6F7960B9B4D2@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20241021141955.1466979-1-arkadiusz.kubalewski@intel.com>
 <20241021141955.1466979-2-arkadiusz.kubalewski@intel.com>
 <ZxhbnvaxmV0njtMu@hoboy.vegasvil.org>
In-Reply-To: <ZxhbnvaxmV0njtMu@hoboy.vegasvil.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|MW6PR11MB8437:EE_
x-ms-office365-filtering-correlation-id: 8fbbc265-bacb-4da2-8c2a-08dcf3357c1e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?MwHyMP7YMRjVTjsZEnKP0Y+DWNhsF3GioMLSEP4VlgjCEo8NE6jGtU6fM64h?=
 =?us-ascii?Q?EGXEYJdvT88kBBChEyQUekASC6Modbnq4mLYPkw0K5uQNdoUsFRxmoB/GHtp?=
 =?us-ascii?Q?jKbF5aZ0DlUBwMWDeijSAnIQxjuQbKhsgO6KWlgbJYvV6pZSfgwVwpF57vE7?=
 =?us-ascii?Q?cWZK1osTezLxuMaY9spBulyzTe7C23X+kshhBZW83shn9bY2dq1aZd4aVNsN?=
 =?us-ascii?Q?NO8Qzapm43Lasjr4yNQpm3l8it5oljUaMHY9GkjBDvNUTNyo4kYkHz1VQ6qA?=
 =?us-ascii?Q?cuA8BWG/4LOL3UqmmElUJWtrUFqMZheohvrnTc65vgIIwE60sWym/oE3AjAE?=
 =?us-ascii?Q?hsCOaqUW15UiBC+l4aZ97PcLllWidyd2FmtZL2h8IV+Okg7eICQ0Gxs5b+bu?=
 =?us-ascii?Q?tzSedNzZdNSnCrUDG+z5DQsLbBBwGNJyZiPvUJc/uHpcKHTMOnIxgUYniB56?=
 =?us-ascii?Q?rvaRISskk75bbQ9zEmsLESP5CgdnOlQ4T5QNSIKF2JCr8ryu3SHylkXKNiwm?=
 =?us-ascii?Q?nyxpEYhMbGFJdLH/B6boK/ZgP4XF1rlFtBn1ixUAGc7XK7cfpPY2/CAgiTJY?=
 =?us-ascii?Q?PQN6fcmSUATz0JrOfFeNMz719n7/hLfHnG1fXw1tjDFkoSBhL9dtdg4sWALX?=
 =?us-ascii?Q?OcQrP1hNfnpHsPvHjTHy3jzo4nQc941LvXme+hRYJio6Yfrfv8dwXbRcZvzV?=
 =?us-ascii?Q?J29XxZ08LxzckuQY46T/S06bRWLYy3AdGYqBC6Be1JWacRDIICDgKlI2E21E?=
 =?us-ascii?Q?1ndP/1+w21imJ1asNfvgJYOwoqsFV7kzoTLOAebsQrmg136xUr4X+/4+Fzkp?=
 =?us-ascii?Q?DmNiRdL7VMG+H31AMmaL8TVfkUUIjkaQfTslZppwWxsPHKBUoS6G/VlYF/IP?=
 =?us-ascii?Q?nkPelOR5E2vSgSC1C3IxK9VLYqD5PNAGku4QMVyvXfum6iLvr61z8Ef7Ks2C?=
 =?us-ascii?Q?0UO+nf+5FmWbzj9UNHJL3hjnl/BvZ5f60haSyoAs7UJJuuJCSjxjlmxwaREv?=
 =?us-ascii?Q?Tn1ka+5xwdW9VWpdNfu/MML7oRzHkGZMy9lQczGvgKtog4dVC1DvprGekHf/?=
 =?us-ascii?Q?CPwELn7x4zggzvP/+KzddgaWm9BtURquIvG3QErYaLhkT9k/nmqKDoHzV25B?=
 =?us-ascii?Q?N84hAWBIN4Qw+si2fJLICv47wKn2jeSPe5zMSGaWqJeD8+xyFBZqfVYuh/EZ?=
 =?us-ascii?Q?JTFPHtVM9JrZMjED0rQKa0vdoH3+X/kHA1oMANjp+NHMpUgnMfn7kWHhR3RG?=
 =?us-ascii?Q?XDoaTM3Qk8J/tYrM/4b1owmOaNxFRUedHocPyyfG7+LdA3IN1xDQzVx7LI48?=
 =?us-ascii?Q?hyebPygeNodJg81EOKLAdy+eKmKdedKqNhVywvAPUuwy7UqaeUei99nQ7kwD?=
 =?us-ascii?Q?53TEWYw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+GsM8x1983RJGPN1vKm7xwvQRP7XrFngqxeFjlb51tJYUtNU6l1TmfVJVg4N?=
 =?us-ascii?Q?rw0pNwUbUaS96t3//hwKbPHud48bBFHSsSJ3Y5TN5jrEqgFlfy7fXWFSudzQ?=
 =?us-ascii?Q?F28F/1t6NroT/nuJjKS+G+vHdIDsxhZUHDV/ZT6thxbxt0v6vimshSn3pGfr?=
 =?us-ascii?Q?MLpxx3TfL8fgOXaYA2SYfvl/D2nF54ZRaD0JRLOk8gUNVdM6aDXV5GZxvrH3?=
 =?us-ascii?Q?EQ6FI6LoATkIk0VXKfmLQxE+SPlpD8L6/h7cQviJW5u9cyu6QqiK1yPpD998?=
 =?us-ascii?Q?ve8fPPPL6y8WgmmD8vWvGEjoZXtkdGWWJj4zoFD9cdCd/RgAIJRoblJ6qGDR?=
 =?us-ascii?Q?qvLhK+8uJJMccsvayKjLesJHvl0Y2WExCIAWwy+X1QvC1iqYllNRFfe3xfCc?=
 =?us-ascii?Q?VbsPoFhKUV/5dYe17J+bWi2DTMnZIFpC86xSsBvmMbJNlbmnV89slfujiJ9P?=
 =?us-ascii?Q?+M4HgepkDYdi4sClff8R5PUjZ9xhYKEJPdpM5MlT1lKtlKSAHsqRkbebEWUR?=
 =?us-ascii?Q?xAjMWdJoG45K4rRRj/6/XlPzbz5lY/OvFzAsR8dcB8mEJ9WlIgFDLXgB5Mkv?=
 =?us-ascii?Q?bttzhQuZck6u+ppaHLEoG5nyiiVuXdErJbx24G70Ru4PkqRR74DIAR4c4x1I?=
 =?us-ascii?Q?PsOG34S/j94WGgUWgGiqH1GHxD/8F7t4WCxGk83p61lHM49w8wuz+rH55292?=
 =?us-ascii?Q?Ov5edzBqzj94MXM/ipDE/bfGtShJRq/f3I1m3VQLrGEEUI7DJKcvXu6V2oRt?=
 =?us-ascii?Q?5h8ShCYYdXewyTD+Rp5joq2XFMadaWKn73som+lxBlPQB6g3BVVleZGdnR5H?=
 =?us-ascii?Q?RuQIh2LmB6TCvHDqNVvIzUuPxXgbs/LSvfbXMvL8EhVJrFFgS1g7cDDP6lpc?=
 =?us-ascii?Q?FhWI6k+dHnsIFrFhpYWMY90qC9J6QHoEBe47qPjAscNAFEju/aYnNWnNvIT8?=
 =?us-ascii?Q?g9BVrW4BMaUCO0xOYdjGIX8PZiV/phCFHRci5iKHsiYf+15qKAg9Xj08YkoQ?=
 =?us-ascii?Q?ec94cb5EjGiA/YJEcj6YUSDgMef2CM9w4OE8n+G1kF2s1piTlq4iHnrZGcfJ?=
 =?us-ascii?Q?Cx+xcANDbw1kkSaMAlayf7sgp02POIHgxwIOFT3zyBgeDV27o+Z7CKflM8sM?=
 =?us-ascii?Q?DwOZCMfJyEmzOddRE9ZltywOmZS0NNb60RObwWMLj3skj1S9XfVowTkGEAxY?=
 =?us-ascii?Q?VDKTbs4Rv2wa+k4WY5WA00H4yovus+xDAavNYwjk0UVANA3ueVmEEdXQxupS?=
 =?us-ascii?Q?wze9/4PGRARuGueg2Wgxqux4xF44wbXBv+8+vYFq8RURSMbSdHhkh+MhhzT4?=
 =?us-ascii?Q?3DiKS39m/i4dO6kge9HqCSf2LF2PTdpP2nAIlmOFoBwH3QpB8AAtD90qJEnW?=
 =?us-ascii?Q?51XRRrnEkvl9IuIUtEH75uZi47JJq2IHwfGCj3HTuOMatfpphMjjJ2vC9fPL?=
 =?us-ascii?Q?n5rEe5M5O4Mjeo3K9qxrqTkfqOBmNQf6x9MZL203eDLvp937StyIXrLTTZgU?=
 =?us-ascii?Q?mQb2HZD27v40rOuTgcrFjTBcZtQkM0AoNg6OnK2upj3t4UFldR+cyeNt1CBO?=
 =?us-ascii?Q?Qg+SSxGIsy84hzaEP8syHcdGbEUcjhZyNT3IgiAO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fbbc265-bacb-4da2-8c2a-08dcf3357c1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2024 07:37:02.0327 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OOSNpFAI2AQ6qIehfWJ7ksTaEQ5RKFiz2PJ4KDCk2l7GEhPRdT6s6A0FE8cGGL79jcdzRBd4FQ04qXPxp17m57XwykzYyyq6uwUHztLENdg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8437
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729669027; x=1761205027;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+YxyQ7lFhiTUytGVnP3ogQbraE8BqXuxDCwKzASjTbY=;
 b=dOMUiXZve1AB5k7r1SI29Lrer/3Gze/Wi92DlsrKqq/ebOnrbEklCSz3
 kGDtgpeEmzfU+Y2AkD4cJ/D4g8qi7HfGCT2t/zTTyK1hmZwCVW5Spr5nD
 7PKiLFrdN6n1xOvmGw3SnlZd26HWVMX3B8Mj+7VqakGUqSGd9T353FR0V
 yCArf81BQ42D7VEbGANUA4RXcoCZ+AmWc9AGSakfG4XulEi7+eTEhYWm4
 sS22CouVjHKtAv7/wJniYh5Tck6sMoYez1YRcODgIHljNvykuesZAHugt
 /xpwCUN1GecpgLqGghVL9fhUMqWOs9cMDItf6WQQxBvgdzPupI/H9LT7w
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dOMUiXZv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] ptp: add control over HW
 timestamp latch point
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

>From: Richard Cochran <richardcochran@gmail.com>
>Sent: Wednesday, October 23, 2024 4:13 AM
>
>On Mon, Oct 21, 2024 at 04:19:54PM +0200, Arkadiusz Kubalewski wrote:
>> Currently HW support of PTP/timesync solutions in network PHY chips
>> can be implemented with two different approaches, the timestamp maybe
>> latched either at the beginning or after the Start of Frame Delimiter
>(SFD) [1].
>
>Why did 802.3-2012 change the definition of the time stamp position?
>
>Thanks,
>Richard

Good question!
Although, I don't feel like I a right person to answer this, I believe
This was the other way around and they just tried to react on the PHY
chip vendors inconsistencies.

Thank you!
Arkadiusz
