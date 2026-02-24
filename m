Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFszD7rknWlDSgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 18:49:46 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8963418ABCC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 18:49:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3649160DD4;
	Tue, 24 Feb 2026 17:49:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q-WOfVs8ZFxt; Tue, 24 Feb 2026 17:49:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90B8F60E17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771955383;
	bh=3U7Rjoa17vLFD4dxJ3H4HvOxaJVmqMRfkQGJu0+19UI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=u8zWFqELLEMEdNTXR9OJTh8iFwN44SFwxBKQdmz7zFUwo4d2A8vm4R6QZxN2lwk+L
	 NJHcdOjfXmBZ2c2QlW1gW643/2tP7qcAkj2gqFjqGdqjpsOGTXkYBkvibHe83WvApd
	 0ozQ/KCUHoSA5qCz6+RexfKG1MxUTSmah0iYp8nu7Ru5ZYl0DssygbmZNwS18a3aIh
	 EBs5DcAnQJD8/mh7M+nMTSKRjQf2gVqxr9Jy5iTXZk9q9KyTEccuYYAqgzEHUHEumr
	 OzsIiAO+lz2wHSlLzJNIxlG43nzcVLJf5CxIdXCvv9P4EzQJpIqT2KoL0czYovxw2Z
	 Lkr+gTJTNG6yQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90B8F60E17;
	Tue, 24 Feb 2026 17:49:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B694E249
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:49:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9BF6040ABB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:49:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zb09a2TtGd8S for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 17:49:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CE43840AB3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE43840AB3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CE43840AB3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:49:40 +0000 (UTC)
X-CSE-ConnectionGUID: PLwljPoxSSqhSDatZZKH5Q==
X-CSE-MsgGUID: 5MM7vZjCRT2G9hpsuRirkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="72883452"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="72883452"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 09:49:40 -0800
X-CSE-ConnectionGUID: szUqkOP7TnaBL/spUxFxHA==
X-CSE-MsgGUID: KMfHl3dzTBuHVmiDWGa/Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="243892141"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 09:49:39 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 09:49:39 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 09:49:39 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.37)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 09:49:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lzGyVJhX8epfQgAVsuHtKPe35NYUp5v/0Yc/21tMZ5rtA9Cf9I6+7n7Ic58sujxwVzF0uA6RYW1I5VImOEe15OIqPeZvqWpiKrmGzDpvrrrvI/PU1tuCdQlyRKlFz/wBipMJFlehQ4EGUe1CE6nN/9UnbzG6Av50/aKnE1W+eVdaaJX0tQ7X2ZpZudvsnd2Zd++AnKiJHDDDHuUil7T+ZHEHUgl6Rbpm3rsZMIVNx+XHROY687KXW2YVvw4n39D9FXegJZth7tUFosgkO4EXSMlOYXigpDLW1T8akJqlq1NfjsaBuibsPTH1cx0J+jfeRiMRjhJgfiM2096KIvS2Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3U7Rjoa17vLFD4dxJ3H4HvOxaJVmqMRfkQGJu0+19UI=;
 b=gGHQsaFRIQiwHHkbSVBuOtEUlTfeACol/YFc8PHtHe20wXZXcrybc14wTeo2LEKBYuhCUybqFlaL0SmGuhJEkJuwkl2krMpvQt322kRg+Wc2vep3ZV6n+47ayscUA2yKbXXrtilwfRVoXHFwjZqfD6c+thIaThF2GCg833QfodZEiDnEtFrMoDZQrz3Hy30rpf4/ohdxLNYFbahfN5N1zNx6LCBIyd8Lnxdk+zJd1YhHBSyqI9f89+e7RSRa15tfOcCujdgxh9QRyARm7Jn3XRt/aaoh6qP5LZ4Pme1qwm0R3EpApnBz19oAJvaS+m4lC7d0Z1yghvv33Wt8gTkR8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by PH8PR11MB6729.namprd11.prod.outlook.com (2603:10b6:510:1c5::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 24 Feb
 2026 17:49:30 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 17:49:30 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, "Wochtman, Natalia"
 <natalia.wochtman@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Czurylo,
 Krzysztof" <krzysztof.czurylo@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 01/15] virtchnl: create
 'include/linux/intel' and move necessary header files
Thread-Index: AQHcV8kGWRlKP/yRUU6aQZTp2FpGa7WSs5qg
Date: Tue, 24 Feb 2026 17:49:30 +0000
Message-ID: <SJ1PR11MB629759DE8E81FA48568ED7269B74A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-2-larysa.zaremba@intel.com>
In-Reply-To: <20251117134912.18566-2-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|PH8PR11MB6729:EE_
x-ms-office365-filtering-correlation-id: 3e97db68-e5de-4641-aeff-08de73cd0fc7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?4E+RIJ3qPaImuHEgWHVNvjJtPT/pfb9eqUPs1z17YcmXVmq7090sNndNJYUX?=
 =?us-ascii?Q?xZGmhtbW99CGxx9Jk4UoVGvFbiu3r1hos/1/xJ1NlAy/BSg5Rso58Aq2clDk?=
 =?us-ascii?Q?xjvplWA4BP0b9GMu++SOR49djVxQoKVKSLUMVO8bhk8mBFu7ROHRIhULWNtQ?=
 =?us-ascii?Q?cIs/ar3dKufso/6LqSvbXAKPMCVHm3ic+Bi8sZEc2DcqX0Ge/UZp5JEtPsL2?=
 =?us-ascii?Q?usuT9nPN8ufVEtJ6586eeLWkd1A1J+sLUXWxURSww+FnyFlhVfUCAtJOwwEU?=
 =?us-ascii?Q?ysLpSjeh5YyGb18O/nKgD6Cud9yf79KiVdNTXRd472+OwOUrT4qtIrqec/w9?=
 =?us-ascii?Q?ax3dT2SGE2mpQUv6O2wP7NRt4NrnZgMvQurUwm+nHuR8e71677WcXbP2GbLz?=
 =?us-ascii?Q?mS0ms2+9wlpArA6fwx7f4hPvkd6DVEdu+Rr9Dm6vsswtmfs2uj8k7slG/RC3?=
 =?us-ascii?Q?olKYarGauDSTEx9CgiXjYzs1HGoFQNBFx09tk+UFlR1sfMN85lVLSlfnB1fU?=
 =?us-ascii?Q?gG4HXttG4wWkCmG8MMzfsNY9pU8LBieSBD0dHLBO4InleStBwhV/JKuYaD9c?=
 =?us-ascii?Q?X7rCq/2K5LUBxIGm/R6n5HkNODcyA6KwKrDcpTjguC3lWeZJ8HlUU+zAUteU?=
 =?us-ascii?Q?6ePQz0FLcsW1fidMdOnRomJIk++44epyVLssq6i2On16QXoJxQq/iTeE2gES?=
 =?us-ascii?Q?XKXmBfTZCjA0vfmALfbJYHn0Ew0jAnth1rudJFcYyGnsvGpPB+S5f8vNVdtW?=
 =?us-ascii?Q?bxiDNqo1DLXMDg8SuGpreN/8uHHW+qo9YVse+YivC7y+++tulAmc5QR4y7zN?=
 =?us-ascii?Q?1WxUCtiRkb8GBT8Zet0UINLx5+MTdicKujqVZXasHvlL3mxTH41ykSvGe1j/?=
 =?us-ascii?Q?NdTJVLtymFHqv8C7QZpLhiIwibMTkkr+lPLuRmgNWvTgmoSd0xEt94fEeAW5?=
 =?us-ascii?Q?YsS55sRDcU7xWtGWLUfyFyy1NI71EvqYfhcqLwKzrHUY4rKUubFM7SQHlgda?=
 =?us-ascii?Q?N6xRt4PWMFxZsAkYYdDQV8U+bZQ5x0/DdRuU6wsBtRSWr3+ihR4KEcXIjmIQ?=
 =?us-ascii?Q?ILB4k3gUVkIu0tdIIlDLgtq1KJDcmVl52yGWNnkiACgmiIRdKHpd6JjDSGLl?=
 =?us-ascii?Q?jAknWnBIPGeNhsypEugftawWC6JO0LbDxLhasLQqJ4QWXQknyCqrOS/E1w6p?=
 =?us-ascii?Q?v8hHoAw1AOiIdz+PYgmLnml7CS5Orfeki3Y5aqM0nBzJnAUK2BHcAIjRVmNq?=
 =?us-ascii?Q?MuG+FbIcD3OhKA5Y1YBLWxGh5wBGdN2KkeojbBPrt3i79lGQDiEkORnOcB3o?=
 =?us-ascii?Q?8j+HgZZKARnDpAMA4yBHppgvpOHhnweN8e42gV2P3fjXCjfOvBKfjwahvGmE?=
 =?us-ascii?Q?AfMFvvFZy/0VE26M979pj2BDaDWeaTkKQaufXcQI/Jf2oc0OYJ+ZjBdEC5D9?=
 =?us-ascii?Q?LgiUBprb8NBzf8SanQhPcpsnaSkHSMIK5iuMtLvusXWpvX2PkjxVXVNDsWvm?=
 =?us-ascii?Q?lLWUzn12JA6Ay88wMncpq5hUNuBsCbCjW4+8Mw1GYFBOxKL1qOQe8AucOZQZ?=
 =?us-ascii?Q?G3/X9NZ5jOyA3XF8SzY7xcS7q/KzdhH9QYnvRcGuYi2dqwBIazYOyKw10a1w?=
 =?us-ascii?Q?KYu9dG97aKJ4b/OBm5EhyN0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Uk9OEsXYAk6H7o0SQKAmv6rdeuo85JnOsisr42MqRCY8biChmWVJKzLmtL3v?=
 =?us-ascii?Q?ke4CWq5H1mbA7qfusCcW//j493KYXczEWUxquN7Sqf9skBaylSFBjY+QQ/yA?=
 =?us-ascii?Q?u+ah82GYUT0GEic8XkhHMAZOnIEjqngQD6+k0ZSSE3ImPFC2XLGw9ZtsRfWQ?=
 =?us-ascii?Q?HLLN0KdYP6NEmSJU3oQ7zTJJjEOSATFQl/J0FN6kW/o9ghwtweky1qJCTzfO?=
 =?us-ascii?Q?7WAFhGyD7L+X4WYrAD3VGM1iJUotPyS0t48mdtVNl2RZfmM7bEATnYz7TwC0?=
 =?us-ascii?Q?FBGq1l+/BLJL/9d8l1FWXmK49blFgzJdeK+9bsdQwFbaYycAKAetV9S4c5eN?=
 =?us-ascii?Q?vLwoebHzVMM/XlHI9qqBcimDS80ZnsuTMEvTxDG4RY29W3vFepO0enYbFxj5?=
 =?us-ascii?Q?fCgKqWB9ViuO31qy2csRm2BFW3K4q0vgNALCR3ug/w6pT/oF6+RpVN96To5B?=
 =?us-ascii?Q?Wl8ZR3XVns49EcMDmdccu9q2WG8CQhDQnrBXi0a2we4eZl4qoFLgLNDV5Wix?=
 =?us-ascii?Q?0Gg6hFBzCdaZ9/ETB87l5TsxCHkgGQObENGoVKaF4JikD1uRZJ7v0sG/youn?=
 =?us-ascii?Q?1N/ZSyzFXiNeQQbZGZnjqUxrmsUK3+IQx/W+8vpiu0hldLlLQWjyH5RL/RlV?=
 =?us-ascii?Q?8aMe1R1XW3eHJ7yqq4T6bIwAty6BzclPuEV07ILP9conW/k0R+F9drUBVKmw?=
 =?us-ascii?Q?jcFnIIiy3/Er1OG3f9Q69KabI85jLJUSMsM6exbFMyIQL+HoEwIvGuBJrVti?=
 =?us-ascii?Q?W0fmb7KbfhVtsqGJfcaP9ZdVzmWAYL4uXws9+OHLqZ8TpaIPAZ0bdh6I8XIS?=
 =?us-ascii?Q?VSEp8VlRe1InLWgAAMRT8hYzX7oZXh4Xtf54g5byBxpTNlWYX4QKwtK0jwSc?=
 =?us-ascii?Q?SMMEg00isj9S14oEAu0N3eBul/K4aaOYZn+w5y85VovDdTsZVE3p7spl+5np?=
 =?us-ascii?Q?jOBcyYrANpHuXE5Wopaeb/wnauTVzLBbliogn3SbH8kA+IxEYJYCGzHC7ZJi?=
 =?us-ascii?Q?okErYLcTj+EefRmApmI4PnwkwbqkX9c0Sbjq83NqnAbNlV67/GRCad5PIWZy?=
 =?us-ascii?Q?mXSC06BQzL6O9eSTULvWtIk7ZXb6cRdjBdebQmSJe2RYYNgpxktdY5Vu1J+n?=
 =?us-ascii?Q?kqLdy2pZAaOqP+hrnBi6OL+UIWKdP5YffK7o4uO/OyGkU3W5a6GDEU2U7jEN?=
 =?us-ascii?Q?uiQmek/7FVQBvOWGJv2cLi2Pskf/zLuQ//6V8YuA1zBkU3Lk/4qSkY2e+dfs?=
 =?us-ascii?Q?M+zHAR6+ifVMYxRLi5U401EleRJOxQZM4Yeq9dkagUz74w4sznlsiWdT9pQD?=
 =?us-ascii?Q?Zg5GSg62wdf9Mr/zOyKSDqnaSNX4EBzYQRvUfq5uKN70fUV5hOpTad19a2jx?=
 =?us-ascii?Q?SIjy2rQntQ0W5hueFuLRvWY4entgt5DuoLmh77CVha9RWzDT1E6taKr55ASQ?=
 =?us-ascii?Q?41RfruoWfLTA+4/o1YSHNvDj/qhiR4tGdw1FHDdSUPC6/sPlLf752EYezkqk?=
 =?us-ascii?Q?MlCJ3FpDxsNJ4x2FZKMKnFoHYW/c/tuBX9RcMfnFyB3g6lkBQ6Vvc9oJOl5b?=
 =?us-ascii?Q?4uOBFx4BJfkM8Y2es6yV9UqjqbW5QUxoMXFB93ery0pc7SWKImVWviS4Iaqr?=
 =?us-ascii?Q?RkpmsfS/vRzEArJCGvQQda24xDBuFshpyLPNrAtuYC4eDXnycGV5cNvscOsj?=
 =?us-ascii?Q?s8/yYD/Fylws2MYvyV/IO8BuVkM78U9e4L6bVJpJHqDjREveun1eM73w2g9n?=
 =?us-ascii?Q?SjZEb4Ge8w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e97db68-e5de-4641-aeff-08de73cd0fc7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 17:49:30.3394 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /v+CuGxjzcvt6+v6KsJQLIf1ColfEFnp3rSIXTYeH6NbuMX9Ny3Bw7+jeOSuXmNMghQnvv3Hao5ojlJDYQ/rWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6729
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771955381; x=1803491381;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3U7Rjoa17vLFD4dxJ3H4HvOxaJVmqMRfkQGJu0+19UI=;
 b=GTcpflj8L4h4Zc/UyLxdcybK4/N+U4FYj8Ehby922tQpDxywxp9udRxL
 PffQc6uqPnR6Tj7B4YrRktKDD3USkEWK6bcGh+d++aDOH1C8lCjxd2EST
 NPgfVwdlHjoOwNTVCt6x26JEdq71qUiaB+eckVUSrV2Px2z/fmRXD2kdb
 zk9knNznwALxn7497ydEqE7qAisatPR8mHncbq7K0UmZTWjZqbsrXOC7M
 I2czjPdvH5qqtTogmBpie3ZIdfYjyQtVQEi5NjjGM38QSxphJc02Y/ywB
 iyHObHbTlfqNZ2mtHZsvKME6XAlMWIUrVrDi9/XGbhFJprxd/awwtjkBU
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GTcpflj8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 01/15] virtchnl: create
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:natalia.wochtman@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzysztof.czurylo@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	NEURAL_HAM(-0.00)[-0.973];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 8963418ABCC
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Larysa Zaremba
> Sent: Monday, November 17, 2025 5:49 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala, Sridha=
r
> <sridhar.samudrala@intel.com>; Singhai, Anjali <anjali.singhai@intel.com>=
;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S <emil.s.tantilov@intel.c=
om>;
> Chittim, Madhu <madhu.chittim@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Shanmugam, Jayaprakash <jayaprakash.shanmugam@intel.com>;
> Wochtman, Natalia <natalia.wochtman@intel.com>; Jiri Pirko
> <jiri@resnulli.us>; David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan
> Corbet <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; Czurylo, Krzysztof
> <krzysztof.czurylo@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 01/15] virtchnl: create
> 'include/linux/intel' and move necessary header files
>=20
> From: Victor Raj <victor.raj@intel.com>
>=20
> include/linux/net houses a single folder "intel", meanwhile include/linux=
/intel
> is vacant. On top of that, it would be useful to place all iavf headers t=
ogether
> with other intel networking headers.
>=20
> Move abovementioned intel header files into new folder include/linux/inte=
l.
> Also, assign new folder to both intel and general networking maintainers.
>=20
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Victor Raj <victor.raj@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---

Tested-by: Samuel Salin <Samuel.salin@intel.com>
