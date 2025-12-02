Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C77FFC9ABC3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Dec 2025 09:44:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D769580804;
	Tue,  2 Dec 2025 08:44:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5-453UaJjFgK; Tue,  2 Dec 2025 08:44:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 012F48080E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764665084;
	bh=bHXlNVmhdGJpUzbuRGjjRwpcBnXarR4HA0A51Dob3WU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8EBoHQ+asQH4aj7pt4M3eJcKvVr+1kmCzccsp6xO4WWBqPFz8ugp4XbiL2RcnBF9s
	 CcMFVmfUAkZSV1uj9+lWK6mrpOPi3FfLC5SelsTuZ2JUw/U69OZJmDzTQU5GZ8Fhw+
	 SBH4X0X9nxaOsa8n5cafTZUHJ94zjPBNf0jRIXS0ifS0dPZdco/YoGX8ALdcPv6V+N
	 V1WyU8oaoQP05mkmmsuGZYLTLSTwEbeK00jfuR2EFiOPLEZOz6xcvny0BMp9HSm0lV
	 IPUPJ4T/Kfpz0y5GIno4enIRp3k2ymEnZbEZGC6OddTTQ24ls9qO9MN8hqO2XfQKoX
	 zsd91o0nRtpsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 012F48080E;
	Tue,  2 Dec 2025 08:44:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 91C831BD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 08:44:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 72E20402A7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 08:44:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lpUCM_HNUAT0 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Dec 2025 08:44:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 645FE40298
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 645FE40298
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 645FE40298
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 08:44:41 +0000 (UTC)
X-CSE-ConnectionGUID: kOs7+g1GQMCSweZB9oW4NA==
X-CSE-MsgGUID: CslOvZBxTL2URbxeygxRww==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="66511534"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="66511534"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 00:44:39 -0800
X-CSE-ConnectionGUID: e56nFS9IQT60wruy1Cwx8A==
X-CSE-MsgGUID: ANmUaMc+RAyt9iHBBuEJbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="194145661"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 00:44:41 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 2 Dec 2025 00:44:40 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 2 Dec 2025 00:44:40 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.67) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 2 Dec 2025 00:44:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t+2Z7vhmD0wdeiWhtWGIi2g2Ro8wreZt3oNsuK9YArafDxb6TFePk3cpdghKJGjwCa23P6bsS6FxypYXb0q7cXR4xUzOABuUykBVZp58HS8doI4l5UU2gB2C1S1k/6MW0GpOmLHDE0mR3heWpHEy2ZNBq5qEDSJvVs+3DIbpoXfI92nRFExB3F3E8JOPgjYacWS6O85SRiZlhDrQYDpb3Wf6Ufj1cr2R/tvxexg6OFa/d1vPxX0/sWeM+RF+ROc2eH063VXCJU5QPhgnuNnCDWs7OlvCs2ocqMYQVf5N8rmCYTTqZBOgTY9kFCDHIOit+pANdNUCaSlIUgOEThg9gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bHXlNVmhdGJpUzbuRGjjRwpcBnXarR4HA0A51Dob3WU=;
 b=HBv6xhfxZ9uQ4eS3DFp7FW5LiGkO6Ar50aL7faGDHtHjwK9MV/bMTZjrYKQBRhO1/ESUyqRRrAh83obOvoFQijpOq8iY+SxivPllb5OkSxtG1QPmfBHPJUtjV1m7g487fuWnHqo+atwN1Hccwb93Ytm/pvihYBp4XcHEeDbAsdFVDmBA95wLakhX2DZBQuETu53Zeb+F46GQLTQTt9FTCDstB4HDdC4i4h15UIgj+nx0BWI/uaApClp/mDF2eErVQYw2k7gxQDoFmzXcKPxknPF9erYqMnAgtoNfPmCvVhqIj9NsxGnhinTY7pjjojpkIaMyqVKVjXLlTpE7i3cN2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ2PR11MB7548.namprd11.prod.outlook.com (2603:10b6:a03:4cb::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Tue, 2 Dec
 2025 08:44:36 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9366.012; Tue, 2 Dec 2025
 08:44:36 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: =?utf-8?B?TWFya3VzIEJsw7ZjaGw=?= <markus@blochl.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>
CC: Richard Cochran <richardcochran@gmail.com>, "Bloechl, Markus"
 <markus.bloechl@ipetronik.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: fix ptp time increment
 while link is down
Thread-Index: AQHcYg1cF5jpEwQlR0a3sSG+Z9UcBLUOCcQg
Date: Tue, 2 Dec 2025 08:44:36 +0000
Message-ID: <IA3PR11MB8986EAF08887FE162C7F9DB7E5D8A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251130-i40e_ptp_link_down-v2-1-8d6dfc10a661@blochl.de>
In-Reply-To: <20251130-i40e_ptp_link_down-v2-1-8d6dfc10a661@blochl.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ2PR11MB7548:EE_
x-ms-office365-filtering-correlation-id: d3af783e-a366-4c7e-ab71-08de317f063d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?dFlOWXJPQWhJVGNDYkV2cFlHQVJNQnFobmV2endVZ1F5My9vOUYxYld4YUY3?=
 =?utf-8?B?N0hTZjVFcEJ1TUE0RFlsTStlME4wdVFLOG9KQXhlT0JUVHQzemtJQTNhTzJI?=
 =?utf-8?B?Mmd5ai9qM2dmQmtLSVgvMVdWU0s0RXZFaVVRbXZwNXcrSDBjTE05SjdtL0R1?=
 =?utf-8?B?YzhxV3pKa1l0ajMrZjdsOVBhVlRYV0FXVzRqMmZyNWVyNmFnUmlGS0VSYnRS?=
 =?utf-8?B?QlVuQ0tLNGNWUmFFM0JhdkFyOEFlOTc2MU53QVJYZjlzSTEvR0FyNVMyajJD?=
 =?utf-8?B?QzNiMHV1eUJHR1VGbngxUkVSVjE4aUd4TzZtaVhVWmg1MWdGQWFPd24yUUVz?=
 =?utf-8?B?eTJjeGZUeXVQK2dsanplR1hRbnlhWHpTVXBtdXMxcXd2K05DOWV0djJtOEtG?=
 =?utf-8?B?RGRVOGVRbEhXd1JyUlBaQnJkdDN2RUZxdVFaQUQrY2NjeTYxK0pMSnphRWZW?=
 =?utf-8?B?TlJLaHE1b3R2TExsTWo5amtJWXlqU3dMOWtCQ1VNMHhjZjdvUjVzSkg3V0Nk?=
 =?utf-8?B?WjFMNGhJMXFkdHhwUXlqL0lFejE2OEpISnc4QW8xR1RrTWJnYm8wOC9IRTNZ?=
 =?utf-8?B?M1pLN1pKblNDREVpakFnWnhnMVNHL2hObTVablZLSWNKQnhsdHVmbDhKZnJO?=
 =?utf-8?B?a3pKODdNRzl0ZEkvUUQyMm9WdjRHUkNielFJN1FCNXFvTG1CaWJqVGsxQ21p?=
 =?utf-8?B?TXNBdGhHTXNJMzRSQklPL3d4ZkJzODRMTGpnTHI1QzdSWkwxWEZvT0svZUlE?=
 =?utf-8?B?WjFzTEtpMENTY1UwYWZxWlZTZG05ZlROQS9ycGxiYzZzbjYzbjlOSnZIcFVM?=
 =?utf-8?B?SlYzNjBDQWFEaHZ1NFdlV3pxd1EwOVJlUkt6TEhRVXpidmQyNXZqaWtQNC9S?=
 =?utf-8?B?dFNXZFFpWEN6eTVJSjc2MDVUbUh6czYrMzU4MmIwTGNHVnRITklqZ2N6a2RW?=
 =?utf-8?B?TU03eGJKSlFxZmp6QmxyQk5WWUgveGJQTmxSSkEvTDhNZlhvK3pUQXVIQXZp?=
 =?utf-8?B?bXF0STRGYVI4TUREVEhRMHE1QU90cC8xb0NZS1NkYzdaamh2aERFbi9yWDRu?=
 =?utf-8?B?UWhvWHRLTjZOQUVpWjBDckJ2emRkYkdMK0EwRDhCZ085TjFyb0ZJMmZCOFZw?=
 =?utf-8?B?WlNNYVdZYklNSnZESWxzejV4RUNycmNlYjQ5TklCSHZRdHZ0OEZLMzZVbWZJ?=
 =?utf-8?B?blNFS1NKbkg2K3B3cGdja3dIN3BqckZ5emYvblA4REZvOUhOKy9iRUpKOWhX?=
 =?utf-8?B?dGVlaEhmNlhIaVd6cHpQcnNuTGYyTDcrWmwvbk8wQjBRVUpwT3FkbUxsQThP?=
 =?utf-8?B?QVFZdFVmQndVblZDVWx4WEg5Y0J2TnVFdEJJNUlzNkx4cGo3TUNXL3Y4T3R2?=
 =?utf-8?B?bWRWcldKeWhTOUZIV0h5Q1ZEOWcya1RTeDRiaFVoYnY4aVQvNzNxRXJ0VDE5?=
 =?utf-8?B?ZGVPcWVzWG1nbkhUTmNmVkVSdXQ4Y2I1cFB4aFAxMXJMMmNUUmtxb3ZGOXpq?=
 =?utf-8?B?ZDhkenFab0lkOVYrdnlhK3FoejU2UlovNE5lME5pWjBRMGJKaC9MckpYQXR0?=
 =?utf-8?B?aGNyRGRRSW5UcmFYV0I4UklpSkR6YTB2UHVlUitkK1Q2S0t1dHVuaEdjQ1N3?=
 =?utf-8?B?MVRWbnlIeGRUS1FwUzEya1hpMjE4R1kzTlFEVytBMWdZdkVqZkFqV1lZRGZR?=
 =?utf-8?B?emtJeERSRnl0eXJuVEVXY3RUbnhHOHp3ZmJvMTNrV1cxQWxpNUpFandleXhr?=
 =?utf-8?B?TFVrZVZsR0VOd3diUkZyVEx3VWk2VFpDdTJZeGV6c0NqVDFhWktQNzhKVnVj?=
 =?utf-8?B?QXpTL2xsZUR2Y3pabkVnM3grTnV4NUNsdG53dktTMGVhQTZpNzBmV1gxTmxT?=
 =?utf-8?B?TTVQbWhpSEg1ZXpYdmVPUEdMVkJJZkRWc0ZkTzFyTWVvZHpKdDBHYW8zU3JG?=
 =?utf-8?B?YnlWOWhpR3FlRWc5Vi85WUMvdEQvdkdDc09KZjRMUmU3Qk1nNzh6RkFkT0ZV?=
 =?utf-8?B?Y0dzRFR6MlBMenBKWmJnOFk3UnJ2c1lBU0VCeC9GWkF0Q0plaHl6d1pUNXU5?=
 =?utf-8?B?ZjY1SjhqTjYxNTUrMlJsL2hVd09wMHQ0aUNlUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TE5uZ3ZlUjc3K2NEbTFhbkYvamFRWHRLNUdPNWVDWVFjVENHbmJjbkdFZ3Bq?=
 =?utf-8?B?SUtwdzhoNGVhaytOaWRKcEVkbUVuMUNKblpsa0t0bjh2am1PMjFZa05EcUdF?=
 =?utf-8?B?WENTZEZGSklzcFBPakhUOWlzZ3U1dndlYWJ4STRYWTlFT0lidVZrVWU3dWFH?=
 =?utf-8?B?Y0w1aXVYdkk2UzRHWmMzVjlKZ0d2S1duUHhzOG1PSnY4SngveS9CbEk4eGlL?=
 =?utf-8?B?eXVtZ2dyaHI3ZlltS0hZU3pkdGNWZHRUVGVnVytDbnZJYUFzenRCNmpsY1RX?=
 =?utf-8?B?dmZzRzVUclFWd3g3QmRYNGFDU21PQXh5NXJOdS9PYTFBbzFQU2hNT29yUVNy?=
 =?utf-8?B?TWkzczdranRlZVNNQ0hUWlJrbzg4aXdZd3c1cE0vZG0ybEp1NjRNemU5ODR6?=
 =?utf-8?B?dnNwU0FkR3ZvK1MrTTVjSjl6WVJxZVRoWHJTYlZXVklUTy9WNnNXU1VUQVFS?=
 =?utf-8?B?VjRPa1VpUU54TG1zSGx0M1I2QXp1UlIxKzVLRGRZb2lSclVYa0pZT3JDV3hY?=
 =?utf-8?B?TXZsNmE2NitUOFpxMEQzMGRWL1ZvblM4dmdxVDNEa1Y2UVNTTUVHamlqa0pC?=
 =?utf-8?B?V281TWNGcFRCaDNtb0Z4bVJST1JyR3NCY3ZzbnZrWXlhVWtQaXBMTHlzc1l2?=
 =?utf-8?B?MmlnbEhvbWNSaWJLUUYvamQ0a2tTeWdpSkJkMWlIWDFaeHlRN1VuQitCSUUz?=
 =?utf-8?B?cHN6MDR1T2tGeFFtaCtUWG1BdGlIcGEyb1lKbWQyM3IrOUR1Z0ZuQWN6THVO?=
 =?utf-8?B?ekY3amtNdG02OGh2VS9mR3hHV0E0cDJIdEhIUFZUWEQzWnRwL0xPUUxNaU5m?=
 =?utf-8?B?VW5CL1AwWW9VK3FGcnMvNGlIazZBSVhEaTlLQmJtY0RtQVBRbHZaS0RFdy9x?=
 =?utf-8?B?NTR1VWJ3ZCtPQ3FpVytqenYzeE1ncTVOdklMZTc0dTdyL0dJQVkyS0hEMkgz?=
 =?utf-8?B?ZGxoNzlVV2p6elZRcG1BYzdkTFEvejBCclZkV1JydmJxdUdERGhhTkJ5SjJN?=
 =?utf-8?B?eE4vZW9WaXF0OHZQU1d6U3VBc3lKUzkrL2phSG9JNCtFTkdqenFHMFppc29a?=
 =?utf-8?B?WjF3YWlDWkt6bEpDM25zSkw5TlIzRTd6RDFoV3dlU1BzREs3S2JTVHBDQWZX?=
 =?utf-8?B?bWNRNWVFN2FYUlJCVXoxVFZtaDdXZEh2SlliektrUTZYTTNZRjJSelBtdUp3?=
 =?utf-8?B?dTZrZS9OeGlsaHFzelpNS0ZCbnl6WGVVSkpTTjRFdW9kNjB0UURBUTgyTGVL?=
 =?utf-8?B?Szd2TEN5U29ZUzcwNUZyU1FxUzdvY29YOCtZbUIxUUlEQ0NkSXlaOE1VZmFr?=
 =?utf-8?B?dUFEaDhzbEdGMzBIcm1sazY4bEplNGwyc1lybXpjLzZFRFRZd1FtTXZDR2wy?=
 =?utf-8?B?NE9OckhqdUFhcEQ1OEtwWUdJWDV1NWh6R3ptVWRleTdkNjBSN1liRVVQdXBM?=
 =?utf-8?B?SXE4VlA5M3dtNlZ4SWdHTStyVzQyTFg0a2ZLZS95eXJjU3lNdE1qSG4ydEZM?=
 =?utf-8?B?UWxmbkNQZ2JkZXE0MDVLbk80REY1eEdVVEZjMGtVZ3RaRmczOHdWUnU2Uzlk?=
 =?utf-8?B?aExGUlVTU1ZmSXJxU1l3akUvRHljZERLdzgwME9rMERBL3o0djRYaGZQdnV6?=
 =?utf-8?B?S3RBanVScmFSNW9zQ2NVMHN5MFNSQnZ0MHQ4RWZuQnRkQTVJTVZaRWRmUWE1?=
 =?utf-8?B?WE9tdDhjQUQxN1pLSHh3SG04YUxlaXpHQ0pBUDFYeGNLbmN5YXhFVTUwTGhC?=
 =?utf-8?B?L0x6eEJUdVlEL0FhMjF4WU1EZFVGbkFINTR3R0dkbndWZDhaZDBqWlpXb3My?=
 =?utf-8?B?NTYzelE2WDJXdDMwM1JybXBMNCtaZ1NzM2tPbm94NENwYnJZaUUvNEZ2OTJ1?=
 =?utf-8?B?aGgzaHpscXdkYVQ5c2lobFN6VEIrdDdYc3ZIcmx3V012UUcrSkZnd1g3UG1N?=
 =?utf-8?B?R09TOStDQndnZDBrc3dZU3RMT0NvRDhCVTk0SWdUaTg0MXozbEpiR0dPMWRm?=
 =?utf-8?B?b0ViRUp0YUN1WE1NampDRTdpdThEUnQ2bG4rc29vYlYrMHpJS0gvWVV2bld5?=
 =?utf-8?B?QkpBUk9aVll4cGh2UVRxa05BbUdEVnBiNzB2ZFJ4NExNTTdXL1Q1RFMySjNL?=
 =?utf-8?B?WFFHTENkRi9xNUZZRi80M2FXNVBxUGVpZVJ2a28yUUFzbUQvOU1KUU4ybG0x?=
 =?utf-8?B?cWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3af783e-a366-4c7e-ab71-08de317f063d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2025 08:44:36.8425 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rmlXEAunb+QN1pK3lXpwj13fhABNIzk6ue0ygdBHJiFdaHCFPeYxIxo8u4D6HisSi/nP2rmBNwWAizoFDpvi3C8TW4+26zMT3ZYG1c44PsI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7548
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764665080; x=1796201080;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bHXlNVmhdGJpUzbuRGjjRwpcBnXarR4HA0A51Dob3WU=;
 b=V7h/SQGKXOZXCaNGWK3MTuQUg1EigpTjwqq12oSq4BUS6EJY2fpWWnLp
 8VIoCcKFme8n7oLtxcXzWpBMb1BgHSXjvMZ6z8E2ByJUkbxlsA5ARD0LJ
 rM76wAu+tDyjwctRWyMowMn/hqYynpq/TgbWdaIfe+tD8BcttFxn//nNE
 BwARMngeyTex5arAkfY4VxU1JYFXqUfRTwIGykmQWwd0Jmo2Oqh/r1G9z
 wS0ZfBR9VpNSmKLw+xqF+Oh2LvHIfSnV5s09WmxNmT3TfAnb6jYgWV2jb
 qQPXAryuHWrIMmDeZxDnVINv/Y7W9DddAK1N8SOL03ENFTzm44VzuZbis
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V7h/SQGK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: fix ptp time increment
 while link is down
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWFy
a3VzIEJsw7ZjaGwNCj4gU2VudDogU3VuZGF5LCBOb3ZlbWJlciAzMCwgMjAyNSA0OjI0IFBNDQo+
IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRz
emVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgS2VsbGVy
LCBKYWNvYiBFDQo+IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+OyBBbmRyZXcgTHVubiA8YW5k
cmV3K25ldGRldkBsdW5uLmNoPjsgRGF2aWQNCj4gUy4gTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQu
bmV0PjsgRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPjsNCj4gSmFrdWIgS2ljaW5z
a2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT4NCj4g
Q2M6IFJpY2hhcmQgQ29jaHJhbiA8cmljaGFyZGNvY2hyYW5AZ21haWwuY29tPjsgQmxvZWNobCwg
TWFya3VzDQo+IDxtYXJrdXMuYmxvZWNobEBpcGV0cm9uaWsuY29tPjsgaW50ZWwtd2lyZWQtbGFu
QGxpc3RzLm9zdW9zbC5vcmc7DQo+IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5l
bEB2Z2VyLmtlcm5lbC5vcmc7IE1hcmt1cyBCbMO2Y2hsDQo+IDxtYXJrdXNAYmxvY2hsLmRlPg0K
PiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggbmV0IHYyXSBpNDBlOiBmaXggcHRw
IHRpbWUgaW5jcmVtZW50DQo+IHdoaWxlIGxpbmsgaXMgZG93bg0KPiANCj4gV2hlbiBhbiBYNzEw
IGV0aGVybmV0IHBvcnQgd2l0aCBhbiBhY3RpdmUgcHRwIGRhZW1vbiAobGlrZSB0aGUgcHRwNGwN
Cj4gYW5kIHBoYzJzeXMgY29tYm8pIHN1ZGRlbmx5IGxvc2VzIGl0cyBsaW5rIGFuZCByZWdhaW5z
IGl0IGFmdGVyIGENCj4gd2hpbGUsIHRoZSBwdHAgZGFlbW9uIGhhcyBhIGhhcmQgdGltZSB0byBy
ZWNvdmVyIHN5bmNocm9uaXphdGlvbiBhbmQNCj4gc29tZXRpbWVzIGVudGlyZWx5IGZhaWxzIHRv
IGRvIHNvLg0KPiANCj4gVGhlIGlzc3VlIHNlZW1zIHRvIGJlIHJlbGF0ZWQgdG8gYSB3cm9uZ2x5
IGNvbmZpZ3VyZWQgaW5jcmVtZW50IHdoaWxlDQo+IHRoZSBsaW5rIGlzIGRvd24uIFRoaXMgY291
bGQgbm90IGJlIG9ic2VydmVkIHdpdGggdGhlIEludGVsIHJlZmVyZW5jZQ0KPiBkcml2ZXIuDQo+
IFdlIGlkZW50aWZpZWQgdGhlIGZpeCB0byBhcHBlYXIgaW4gSW50ZWxzIG9mZmljaWFsIGV0aGVy
bmV0LWxpbnV4LWk0MGUNCj4gcmVsZWFzZSB2ZXJzaW9uIDIuMTcuNC4NCj4gDQo+IEluY2x1ZGUg
dGhlIHJlbGV2YW50IGNoYW5nZXMgaW4gdGhlIGtlcm5lbCB2ZXJzaW9uIG9mIHRoaXMgZHJpdmVy
Lg0KPiANCj4gRml4ZXM6IGJlYjBkZmYxMjUxZCAoImk0MGU6IGVuYWJsZSBQVFAiKQ0KPiBDYzog
c3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPiBTaWduZWQtb2ZmLWJ5OiBNYXJrdXMgQmzDtmNobCA8
bWFya3VzQGJsb2NobC5kZT4NCj4gLS0tDQo+IFRlc3RlZCB3aXRoIGFuIFg3MTAgYXQgMTBHIGxp
bmsgc3BlZWQgYW5kIGtlcm5lbCB2ZXJzaW9uIDYuMTIuNDIuDQo+IC0tLQ0KPiBDaGFuZ2VzIGlu
IHYyOg0KPiAtIEZpeCBrZG9jIGFuZCBjb2RlIGZvcm1hdHRpbmcNCj4gLSBSZWJhc2Ugb250byBu
ZXQgdHJlZQ0KPiAtIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTEx
MTktaTQwZV9wdHBfbGlua19kb3duLQ0KPiB2MS0xLWIzNTFmZWQyNTRiM0BibG9jaGwuZGUNCj4g
LS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5xX2NtZC5o
IHwgIDkgKysrDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfcHRwLmMg
ICAgICAgIHwgNjkNCj4gKysrKysrKysrKysrKysrKysrKysrLS0NCj4gIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2k0MGUvaTQwZV9yZWdpc3Rlci5oICAgfCAgOSArKysNCj4gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eXBlLmggICAgICAgfCAgOCArKysNCj4gIDQg
ZmlsZXMgY2hhbmdlZCwgOTAgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5xX2Nt
ZC5oDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucV9jbWQu
aA0KPiBpbmRleCBjYzAyYTg1YWQ0MmIuLmVjMTc2ZTk1NjlhZCAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucV9jbWQuaA0KPiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5xX2NtZC5oDQo+IEBAIC0x
NDg4LDYgKzE0ODgsMTUgQEAgZW51bSBpNDBlX2FxX2xpbmtfc3BlZWQgew0KPiAgCUk0MEVfTElO
S19TUEVFRF8yNUdCCT0gQklUKEk0MEVfTElOS19TUEVFRF8yNUdCX1NISUZUKSwNCj4gIH07DQo+
IA0KPiArZW51bSBpNDBlX3BydF9tYWNfcGNzX2xpbmtfc3BlZWQgew0KPiArCUk0MEVfUFJUX01B
Q19QQ1NfTElOS19TUEVFRF9VTktOT1dOID0gMCwNCj4gKwlJNDBFX1BSVF9NQUNfUENTX0xJTktf
U1BFRURfMTAwTUIsDQo+ICsJSTQwRV9QUlRfTUFDX1BDU19MSU5LX1NQRUVEXzFHQiwNCj4gKwlJ
NDBFX1BSVF9NQUNfUENTX0xJTktfU1BFRURfMTBHQiwNCj4gKwlJNDBFX1BSVF9NQUNfUENTX0xJ
TktfU1BFRURfNDBHQiwNCj4gKwlJNDBFX1BSVF9NQUNfUENTX0xJTktfU1BFRURfMjBHQg0KPiAr
fTsNCj4gKw0KPiAgc3RydWN0IGk0MGVfYXFjX21vZHVsZV9kZXNjIHsNCj4gIAl1OCBvdWlbM107
DQo+ICAJdTggcmVzZXJ2ZWQxOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX3B0cC5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX3B0cC5jDQo+IGluZGV4IDMzNTM1NDE4MTc4Yi4uODlhYmUyZjIyMjE2IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfcHRwLmMNCj4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3B0cC5jDQo+IEBAIC04NDcs
NiArODQ3LDY2IEBAIHZvaWQgaTQwZV9wdHBfcnhfaHd0c3RhbXAoc3RydWN0IGk0MGVfcGYgKnBm
LA0KPiBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCB1OCBpbmRleCkNCj4gIAlpNDBlX3B0cF9jb252ZXJ0
X3RvX2h3dHN0YW1wKHNrYl9od3RzdGFtcHMoc2tiKSwgbnMpOyAgfQ0KPiANCj4gKy8qKg0KPiAr
ICogaTQwZV9wdHBfZ2V0X2xpbmtfc3BlZWRfaHcgLSBnZXQgdGhlIGxpbmsgc3BlZWQNCj4gKyAq
IEBwZjogQm9hcmQgcHJpdmF0ZSBzdHJ1Y3R1cmUNCj4gKyAqDQo+ICsgKiBDYWxjdWxhdGUgbGlu
ayBzcGVlZCBkZXBlbmRpbmcgb24gdGhlIGxpbmsgc3RhdHVzLg0KPiArICoNCj4gKyAqIFJldHVy
bjogY3VycmVudCBsaW5rIHNwZWVkLg0KPiArICoqLw0KPiArc3RhdGljIGVudW0gaTQwZV9hcV9s
aW5rX3NwZWVkIGk0MGVfcHRwX2dldF9saW5rX3NwZWVkX2h3KHN0cnVjdA0KPiAraTQwZV9wZiAq
cGYpIHsNCj4gKwlib29sIGxpbmtfdXAgPSBwZi0+aHcucGh5LmxpbmtfaW5mby5saW5rX2luZm8g
Jg0KPiBJNDBFX0FRX0xJTktfVVA7DQo+ICsJZW51bSBpNDBlX2FxX2xpbmtfc3BlZWQgbGlua19z
cGVlZCA9IEk0MEVfTElOS19TUEVFRF9VTktOT1dOOw0KPiArCXN0cnVjdCBpNDBlX2h3ICpodyA9
ICZwZi0+aHc7DQo+ICsNCj4gKwlpZiAobGlua191cCkgew0KPiArCQlzdHJ1Y3QgaTQwZV9saW5r
X3N0YXR1cyAqaHdfbGlua19pbmZvID0gJmh3LQ0KPiA+cGh5LmxpbmtfaW5mbzsNCj4gKw0KPiAr
CQlpNDBlX2FxX2dldF9saW5rX2luZm8oaHcsIHRydWUsIE5VTEwsIE5VTEwpOw0KPiArCQlsaW5r
X3NwZWVkID0gaHdfbGlua19pbmZvLT5saW5rX3NwZWVkOw0KPiArCX0gZWxzZSB7DQo+ICsJCWVu
dW0gaTQwZV9wcnRfbWFjX2xpbmtfc3BlZWQgcHJ0bWFjX2xpbmtzdGE7DQo+ICsJCXU2NCBwcnRt
YWNfcGNzX2xpbmtzdGE7DQo+ICsNCj4gKwkJcHJ0bWFjX2xpbmtzdGEgPSAocmQzMihodywgSTQw
RV9QUlRNQUNfTElOS1NUQSgwKSkgJg0KPiArCQkJCSAgSTQwRV9QUlRNQUNfTElOS1NUQV9NQUNf
TElOS19TUEVFRF9NQVNLKQ0KPiA+Pg0KPiArCQkJCSAgSTQwRV9QUlRNQUNfTElOS1NUQV9NQUNf
TElOS19TUEVFRF9TSElGVDsNCkNhbiB5b3UgY29uc2lkZXIgdG8gdXNlIHN0YW5kYXJkIG1hY3Jv
Pw0KDQpwcnRtYWNfbGlua3N0YSA9IEZJRUxEX0dFVChJNDBFX1BSVE1BQ19MSU5LU1RBX01BQ19M
SU5LX1NQRUVEX01BU0ssDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgcmQzMihodywgSTQw
RV9QUlRNQUNfTElOS1NUQSgwKSkpDQoNCg0KPiArCQlpZiAocHJ0bWFjX2xpbmtzdGEgPT0gSTQw
RV9QUlRfTUFDX0xJTktfU1BFRURfNDBHQikgew0KPiArCQkJbGlua19zcGVlZCA9IEk0MEVfTElO
S19TUEVFRF80MEdCOw0KPiArCQl9IGVsc2Ugew0KPiArCQkJaTQwZV9hcV9kZWJ1Z19yZWFkX3Jl
Z2lzdGVyKGh3LA0KDQouLi4NCj4gDQo+IC0tLQ0KPiBiYXNlLWNvbW1pdDogZTUyMzVlYjZjZmUw
MmE1MTI1NjAxM2E3OGY3YjI4Nzc5YTc3NDBkNQ0KPiBjaGFuZ2UtaWQ6IDIwMjUxMTE5LWk0MGVf
cHRwX2xpbmtfZG93bi00NzkzNGY5ZTE1NWQNCj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gLS0NCj4g
TWFya3VzIEJsw7ZjaGwgPG1hcmt1c0BibG9jaGwuZGU+DQo+IA0KPiANCj4gLS0NCg==
