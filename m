Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDHXM//Hd2lOkwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 21:01:03 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 502F18CD95
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 21:01:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F165407E9;
	Mon, 26 Jan 2026 20:01:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tTkrnvpK1CN7; Mon, 26 Jan 2026 20:01:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF59540787
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769457660;
	bh=TiwZEwO1dIqMmI29YTN/n8E40l/ZVlqreVS3PViEw4w=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HP/lBFAy/hmgk5udZyvvYxJZtLjXr+55aNUejl1T0ksrc+haRBDGq1q0pV0dtZq/I
	 fqps5YMq64ET47uPLfLBZOPSaGVcXoipqLbdPli75FnHDWI7YgSPi7dBYqyuHu/zcj
	 d8gO8eKhybN8oKddTp3xWlrvervsjMrSmNQjJfgFZ+L+hpd1+mwfit1cxh+4WH93v/
	 bcPzxDXa8CVMcdQwKSVjwI9pw3Rl8vdTtqMVTTjWTCby8jg25ELZ3ShO3+xN0XilnW
	 m2gH+CT/8EJcjrXB9IGFk7rAuCm1/9unDt9Opv8o4IF60iubPS4GYqf7Xso0iIKjcM
	 wBTX3Rutgui6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF59540787;
	Mon, 26 Jan 2026 20:00:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 60471118
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 20:00:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 434EE40780
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 20:00:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A7PPIeTp_rtF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 20:00:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3A8E040756
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A8E040756
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3A8E040756
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 20:00:56 +0000 (UTC)
X-CSE-ConnectionGUID: bQyaNKnBTZyp5JqKyIvHQw==
X-CSE-MsgGUID: QSzD9MLrQl+gjUeXI08RHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="81362256"
X-IronPort-AV: E=Sophos;i="6.21,255,1763452800"; d="scan'208";a="81362256"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 12:00:56 -0800
X-CSE-ConnectionGUID: qCWgDosqRMy558sqZ3X3Ig==
X-CSE-MsgGUID: Q7HoRFNlTyuHyF4PDHfGjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,255,1763452800"; d="scan'208";a="207381680"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 12:00:56 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 12:00:55 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 26 Jan 2026 12:00:55 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.23) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 12:00:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d9fG66qUBoKLUEs7NWh5rPPsaphop0q19LVx2PJD8uVGiL5Kx+CbmDQd9RFU/J/srtjDbdfAOfoe/yHX2ESrz0kpDOMNWpDvv9XU1hbMlftzjDMed8eb8Qezdy4DZ/ZFE0wMXrpfLLU2ujYGc9LG15Somkr7+pSr+4t9vRlTwqfJFoKUCqhdqpawsJdoIm+j0oHislAWK7q7oI6T15swqipZ/mPDsSL4VYuWOfSC7bQp56kxmYXgzbFjUMk0c64Dq5IAbwTTBqI9gmBpgJcCFFN2MvkE3Wda1t7H0EQNr63DvATAd8ypWhvbXHA3Lu9319xD4U17vu9Ujoq/tO6OTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TiwZEwO1dIqMmI29YTN/n8E40l/ZVlqreVS3PViEw4w=;
 b=OekTMAeyA0WcPlljT7yOH097JhjvkFj2tSD7LsxT0lQx+mPR5ZdmV3nzwO68aRmVLB1aZ+CHl3IdA3dp5K3tJKYY2wKD/2p2v3FrnPW+nxcaLX7bIQ0v2KhdOuBo1sWgjcnD5xc3DoQkh1Fy1Yg+i8X3788j6BcjHRQfZvUpLDrY/nfFPrp7ZjpLfG9Dfc9z5P7zqFjHTrkppfvkWI80NahZgLW78oT+hp+HjR1oUxClsq9phwIyu+vWFJRmInvj+AQY34jPlkUmSenmJU+q3pjU3gPWzHAQEdmpu4wIt06fcGzITf1FvnjcdzF+KfegiJq34U3NSKrtZZX6HKAQ6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY5PR11MB6210.namprd11.prod.outlook.com (2603:10b6:930:26::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Mon, 26 Jan
 2026 20:00:48 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 20:00:48 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "dan.carpenter@linaro.org"
 <dan.carpenter@linaro.org>, "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ixgbe: e610: Convert
 ACI descriptor buffer to little endian
Thread-Index: AQHcjKPoPa78aX4vpEeKyXf2xCM1GbVgaTWAgAPjtACAAJZVUA==
Date: Mon, 26 Jan 2026 20:00:47 +0000
Message-ID: <CO1PR11MB508925AC362628515F74C747D693A@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20260122164632.112607-1-piotr.kwapulinski@intel.com>
 <aXPU4YQi73T088lS@horms.kernel.org>
 <CO1PR11MB508945D598B6284773B6E9E4D694A@CO1PR11MB5089.namprd11.prod.outlook.com>
 <aXdJfu8Lml_dnjd3@horms.kernel.org>
In-Reply-To: <aXdJfu8Lml_dnjd3@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|CY5PR11MB6210:EE_
x-ms-office365-filtering-correlation-id: d20b9e01-1f59-4ab1-d1b4-08de5d159959
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?BqoKLU+q4iAQJcVi3kBxHDvQ6ts85aQI0qdqvJh1UEQwU8Gm5QOZZleSg06X?=
 =?us-ascii?Q?r6ZWmqxLMbbUVt2+842ISo83SqI+K8PtVtHgxSUJt1zIzIgFjJHugH8ptkBG?=
 =?us-ascii?Q?2bC5B0CEfRqqb6/QL5uxktxPAdd7mRJGJdo9+M01MTCwQsYa2pfsVpN+ThC1?=
 =?us-ascii?Q?VUMon53Nf4rDZ/JhwmAika/649Dlxq9ytZ8zmccQqB8oOu18MVHJrbMV/J7b?=
 =?us-ascii?Q?QkKTDw7XICPiF3IS+csLQ679Z977WEqGQQ5UYfVpkkf2tyENZo+1U2WXFK27?=
 =?us-ascii?Q?VMIYjiiyZdNDexZ8ivB3C6J6nFgLiNpqiGVIwvYaO1GIfQm0p5BrZ8BZSUNV?=
 =?us-ascii?Q?GBdN+5Z5QHpNNBypLqhpkwlelL8kuwejY5c4WB11kco0A8HpD/JFQRMEk7og?=
 =?us-ascii?Q?kG3aa5xwbCLO5oD5/JyhfsKOvrvgqrlaSNX5j+ltDf9K+EvQ/OOYQ+syrdYk?=
 =?us-ascii?Q?+d+hQIVblC55TZTQ6tajvq6yIYd0PooWh5JIQtud4ybe+gbA3t10COh0jQBj?=
 =?us-ascii?Q?VIV0CTZ+uP/js7zQlVfs2GPB5HdZcmfdSsMK2ZTumkMcoHq7ASh9NpCR+qd8?=
 =?us-ascii?Q?xWSvf9/d4xJ+wkW9qHX1MH3nezE8v29T4akQJv7/ggy8yrWqE6xR66AZs3OW?=
 =?us-ascii?Q?B6uC0tjAHK3ujF6x+V5hO/2+BJ7/ERUHIm4DA6BgVKi7v1i6VcGAK7eYy3Uz?=
 =?us-ascii?Q?FQt775xkbxhrRLZKbfbzgHECkHRqsov341FIcMWcMeqQhYhcZUPqS/mfJH5b?=
 =?us-ascii?Q?nsv1RhCRmH14uodrPFWwleD+mjadTxtsaVQxIX0xCJODrHjtFCv1+SCI6h5W?=
 =?us-ascii?Q?NCVMld7rXx1x7QBBTVUVN2kluc8sR2TBUhEd6CJLQ0obgVU7Z1tmgu2WjLCY?=
 =?us-ascii?Q?BiGfbXrot2tkfqU4wPb6KzKgbeR/7JaUkY26MC4IJhAy+iF/d0LJ82tDHIxI?=
 =?us-ascii?Q?Jj4hmyJAB7MOp2G0eXtNO7V/GcMk45Ox2ATzcsd/1pXYtQrzsX1aMNbL9GS/?=
 =?us-ascii?Q?douTWUhSrLvuzmT/GawCxgpzBCI1tKIxZogjXRVFzE9cHUGHzdLpH6g3Tdly?=
 =?us-ascii?Q?2AkAAfZCqfxTBeszVPUFRfYMGC+pMZNK/JGUpka9ELJ/546lPTlmMPXDM33F?=
 =?us-ascii?Q?2mO9tlxrRp2LHcyjyRKn7HXUdsgQ8GDyxH05JJfuqVMkjvkJswo2FfZOYvKk?=
 =?us-ascii?Q?+D0A3Xsvww5pc3ofaOgLQKZe9fK+D5XtbZo6EV7ymrID7jo9k6AD0llDeFGp?=
 =?us-ascii?Q?rmmtrchaR0wGm9Qyn+N9JQs3MXSJL+r02Cm+9GtekMp+Tfdg8FoiH6k2KuIG?=
 =?us-ascii?Q?bDr/jIHEFxS3wYGcVKyd8BVR/47tW4Lua9Mk0PU2MMVjCgMcDAn6/WxPw8uF?=
 =?us-ascii?Q?OLPekS2LHyx3VdoiErV6goGcx/xKQxwgWv+ppdOTWlRR8HXw0MJVRH1M9PsM?=
 =?us-ascii?Q?dOvNrvA4Zh/RJpS7ar/HlneiDPo1bFTZkkNV/IRG99G/8W6QU31k7gRbbY58?=
 =?us-ascii?Q?uTysuNNg+/ATS8qtC+1IzUQo+AP5qGI/658n4se2kErabDrhk5nyZmYSaWlX?=
 =?us-ascii?Q?6owcwq32tNAc/WDaeH9R4M/3Iq2/l8R07c0JgcosVIX9NXf9VFM0eNFSNz1x?=
 =?us-ascii?Q?gJn0WN6WVTgyxm4C0TqSyik=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jM/N8oYUE9U8MJ1y9A3srzM9GrUfkm91hNDouw73w6MOV195NghAojTnhUmD?=
 =?us-ascii?Q?R47yFGqV3Hjh1ea0M0c8Y7XqlZooP96j3oUxzuJvrUv0cejHwC5Ew5s9qbgo?=
 =?us-ascii?Q?AiN1XVO3NxZbC1Khoxov7OI7OSzd9g0Mmwh4iA9w0zz8jyxE895Hr79O+mnC?=
 =?us-ascii?Q?MsHzzyMlcdYf+Gm8gXJWFPMzgTAgZlp7KaKrhjkeS4blPZRzRe0RCMsm4YGm?=
 =?us-ascii?Q?2gJWPiZrFXVArpazwfQsLoUDYi77WtRylu98AxGR2FeFr1NuUGGKG2Z5yLmv?=
 =?us-ascii?Q?ospRvXLMVnsXpCSh5IyA5cuOqj+wJUTch+YClHTTYAwHjqtqKL6iwcxl1vch?=
 =?us-ascii?Q?RVYVTzzffI44065lWzhTkVcO+ARqfYd5HLxhHrM+rJSDaunIgc2uXyG3qK9e?=
 =?us-ascii?Q?a7uHiIsvhw6LCrocWfaQ+b8nyEIBmMF/KYOHg51UeSZPwOQPHxlGA0HNBMEA?=
 =?us-ascii?Q?gDcubuCOx0YS3xlfVi90BEFa3YIGRdmso5r1ELLPYzPgf9TVGoKXFxpw7ZdI?=
 =?us-ascii?Q?ydMxZvfXe0InGeUGnhUpnHEH5suHg8xGtWhtQ+uMhupCDw/9tUiRHiODBzq9?=
 =?us-ascii?Q?j9/A/J5xxlSUpMKkVuM6PzVKPkEBQT92tqLLORfxsxuChx28Ui8+Li2FIdAG?=
 =?us-ascii?Q?fIRa4Cqc4+IeOGxOBTQEBlQzjXYAnQbVvSNc7excF8I2ULIy66ISjRyMkB5o?=
 =?us-ascii?Q?gD4hSYBrpFs3cuA2Dj402t2C7jTtreLPSnlMkHIUCNbTkVCcCUbII2z/bcpu?=
 =?us-ascii?Q?K3Hvw2zD2agbpwkGoOadX0I0OlU+EgPXYM4FTDpk8aFBui91t3PgnY76hlJt?=
 =?us-ascii?Q?eCbOylVQMjRoW+PTqed+7m3MrygZPIvbUZdXAQhds5xDyfkbEYefYMwUWbX0?=
 =?us-ascii?Q?lVUwMwWE4gpbE9dzOePFNEeY3pAuMbMY8rvQZE+fh9N5clWkOD5/GEenJ1XY?=
 =?us-ascii?Q?nGEXVanUbKdtbdxfqUxPcGBAkQzYB8azFu25SdbUOzBO+WIhDJvWAJsp8XEr?=
 =?us-ascii?Q?RjxgVinnOLE1TEp8sxx4nyE4wTzsml6RUM+RRzXyL2/1gmkxL7+tHkCKii59?=
 =?us-ascii?Q?7RtdJ8wmb7df4pdS8nEdQY6n5TUmyfYSkM6ntny1wS8ufgErGsYl+/xBjwr/?=
 =?us-ascii?Q?QH9fU6sLA7P0//n0QFVu3SzdGvMTeh4VkcuVDckigroAr3sJ3lzLFwaymd6m?=
 =?us-ascii?Q?+ggprVJ1GgZpRfzgcPQpjf7luxycFzkwfpjU+OiUBStCff8dnw+2uT0usfat?=
 =?us-ascii?Q?B8XBH/1Jbljd5GlGRIzXto2f5zdjB4LLC5iZGG6TIFUglCcqDR+C/qOABR10?=
 =?us-ascii?Q?F0i66Q541UVIyjDcuHFZQIpvmGP9Xfa1I4P7Le/yWZHjQaatWkKsuWNp4RJd?=
 =?us-ascii?Q?GBYKO+0AhZOhcPeiLCg7/5L91j3p/3lAPlojXYKS1lsPpHi40iDFgaNqXuL3?=
 =?us-ascii?Q?HLKiqAIFj8j0VA7uCyy+ZE1XsT98e8BvULt/IPsCzGw7vtvQCu8QRJKRKEF8?=
 =?us-ascii?Q?5Sw7UKVPgNFyO5QasvGTrP/GUphPOmkBdF1cCAwf0Fed1MP4EaJJgdRuSYCx?=
 =?us-ascii?Q?R8Lg6iMjsnFfGWwtmfJ8WNN/VRhDs1nZn7Hx6G/ifgDgaW0ASmjtVQ5v7TSl?=
 =?us-ascii?Q?dSvUw+qDhuhqeo9XsmF1P1ByFGXEDj4QY2V7OY4jAwdu0uBpxkB2pus1f0pW?=
 =?us-ascii?Q?TXcoERcvBrEHbmc2nKvHR11h1e/M+fjnhHYxGTy7Z8qKBAzwLIPZhzKf5QAS?=
 =?us-ascii?Q?QqUq0UgENg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d20b9e01-1f59-4ab1-d1b4-08de5d159959
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2026 20:00:48.1667 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mV9nhEjYJY4YeEfI0Tctw7pKC987L/g0DdT6UEoegGQZnzuX+bZDa7rO+nUGgPyS9XbUd4fQM2SE0jpnWp2LLmjTfP7fohT3FDBxnR6FGKA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6210
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769457657; x=1800993657;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MNhngjHCeQHQ1pszx9u1JCsUSpisO+t7+LWgrnHQcN8=;
 b=T+9oxCFQks3ra4cDdfT//aWuvWbB4Jd2sRmXC2H4Th+uUfdpSCFo3VXH
 l3f6eV22OABD1e+kogQbM6e1n0+4UxqLt5ZTQTfX5MTdtAnOs2Sh0S44D
 0G/BGXXoiwoMuHpisDZMPXi5TvGnSFKWN8uL6jnIieRpcpPzlSeBvFJjq
 9lWQ6CXNEW7phMj0+cS90QkNio0F+emWtH5D9AQvyg4Ut69GBBnbF2yXG
 x3nVVrq0uFF6j5YUe+PVSqdnzkGNaTi0sr68ISCx3n8swq96wS4Y0aXPF
 pnoyZVSSUkbX/P+fnONIb99uJ5dlht1KO6ZQPIf31XzZoP5zHG1H6G4Ko
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T+9oxCFQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ixgbe: e610: Convert
 ACI descriptor buffer to little endian
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:piotr.kwapulinski@intel.com,m:netdev@vger.kernel.org,m:dan.carpenter@linaro.org,m:pmenzel@molgen.mpg.de,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,intel.com:email,mpg.de:email,pf_hicr.sv:url]
X-Rspamd-Queue-Id: 502F18CD95
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Monday, January 26, 2026 3:01 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>; intel-wired-
> lan@lists.osuosl.org; netdev@vger.kernel.org; dan.carpenter@linaro.org;
> pmenzel@molgen.mpg.de; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ixgbe: e610: Conve=
rt ACI
> descriptor buffer to little endian
>=20
> On Fri, Jan 23, 2026 at 11:41:26PM +0000, Keller, Jacob E wrote:
> >
> >
> > > -----Original Message-----
> > > From: Simon Horman <horms@kernel.org>
> > > Sent: Friday, January 23, 2026 12:07 PM
> > > To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
> > > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org;
> > > dan.carpenter@linaro.org; pmenzel@molgen.mpg.de; Loktionov,
> Aleksandr
> > > <aleksandr.loktionov@intel.com>
> > > Subject: Re: [PATCH iwl-next v2 1/2] ixgbe: e610: Convert ACI descrip=
tor
> > > buffer to little endian
> > >
> > > On Thu, Jan 22, 2026 at 05:46:32PM +0100, Piotr Kwapulinski wrote:
> > > > The ixgbe device registers/descriptors expect little-endian orderin=
g.
> Make
> > > > the code aware that the e610 adapter operates on data with little e=
ndian
> > > > ordering. The extra conversion is required on big-endian hosts. In =
most
> > > > scenarios this conversion is not required.
> > > >
> > > > Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command
> > > Interface")
> > > > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > > > Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> > > > ---
> > > >  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 7 ++++---
> > > >  1 file changed, 4 insertions(+), 3 deletions(-)
> > > >
> > > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> > > b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> > > > index c2f8189..f494e90 100644
> > > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> > > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> > > > @@ -113,7 +113,8 @@ static int ixgbe_aci_send_cmd_execute(struct
> > > ixgbe_hw *hw,
> > > >
> > > >  	/* Descriptor is written to specific registers */
> > > >  	for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
> > > > -		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i), raw_desc[i]);
> > > > +		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i),
> > > > +				le32_to_cpu(raw_desc[i]));
> > >
> > > IXGBE_WRITE_REG is backed by writel.  And my understanding is that
> writel
> > > converts values from host byte order to little endian.  So I'm confus=
ed
> > > about where this is going.
> > >
> >
> > Yes, it should. In this case, the raw_desc value is being converted *to=
* CPU
> order to work with writel...
>=20
> Yes, sorry. I seem to have completely confused myself there.
>=20
> > > >  	/* SW has to set PF_HICR.C bit and clear PF_HICR.SV and
> > > >  	 * PF_HICR_EV
> > > > @@ -145,7 +146,7 @@ static int ixgbe_aci_send_cmd_execute(struct
> > > ixgbe_hw *hw,
> > > >  	if ((hicr & IXGBE_PF_HICR_SV)) {
> > > >  		for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
> > > >  			raw_desc[i] =3D IXGBE_READ_REG(hw,
> > > IXGBE_PF_HIDA(i));
> > > > -			raw_desc[i] =3D raw_desc[i];
> > >
> > > I'm also curious to know what the intent (if any) of the line above w=
as/is.
> > >
> > > > +			raw_desc[i] =3D cpu_to_le32(raw_desc[i]);
> >
> >
> > It's being converted to LE32 order here. But if nothing else touches
> raw_desc is there any reason to convert??
> >
> > >
> > > Please don't use the same variable to store both host byte order and =
little
> > > endian values.  In this case I'd use another local variable, say scop=
ed to
> > > within this block, to store the intermediate value.
> > >
> > > And if raw_desc will be used to hold __le32 values, it's type should =
be
> > > updated.
> > >
> >
> > If I understand Simon's comments correctly, this whole change is a no-o=
p,
> and unnecessary. Writel and readl already handle conversion to CPU format=
,
> so unless you have some issue because raw_desc is assumed to be LE32
> somewhere else, I think this patch should be dropped. If you do have a re=
al
> case where something was wrong, can you please provide details?
>=20
> Sorry for not being clearer.
>=20
> I'm suspecting that the issue that this patch tries to address
> is that the backing structure, struct libie_aq_desc, is described in term=
s
> of __le integers.
>=20
> I haven't dug deep enough to be able to say if that is a good approach or=
 not.
> But if that data is __le, then I expect that some sort of conversion alon=
g
> the lines of this patch makes sense.

True! Iff the structure is __le then we need to do this. The structure real=
ly should only be __le32 if it actually gets used that way somewhere else (=
something like a firmware AQ message?)
