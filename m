Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3795597D52D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2024 14:03:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E7EA66F535;
	Fri, 20 Sep 2024 12:03:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m9MNC902kuIl; Fri, 20 Sep 2024 12:03:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 353846F518
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726833799;
	bh=AC/4Kx+Z/bHVEc9gwkp7JxUV1njz6qy1J8dSIQ7wE/w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b/H+2Dtb0yikV+UX+YRfheH9K2PzDc20vF3QfHehoUOaZTSvAVCkM1YID8K3/B7dK
	 3fCNvP5Sa0NCRAFZgqgrUdgUcdJoXyS4gDVNPwzlsMt5fQeHTj4ET/cS+pdTKRk7qH
	 ncxk4WOlIFjQ7NkKie8bGrHTpzZmbBSowXDslaErINVmIZw6qfLiPqY7uwX6cuU2MW
	 qNPDTQDFBXgEk3JoTNU7tHHv+0sRSbDFcixLce/VF3fu3q6CKmZA8oNw/H9cJ+1OI6
	 zF5T0psoAIqPl/o6AA9VjkW8qckNCh0Vr4QVMlsBlyfFcjm9iHZgXEhZe8wlKdOAbo
	 0fGxnyHisVgkQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 353846F518;
	Fri, 20 Sep 2024 12:03:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E67D1BF414
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 12:03:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 18D07401D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 12:03:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0rCnUWUJjCkQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2024 12:03:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D0CC24016B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0CC24016B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D0CC24016B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 12:03:15 +0000 (UTC)
X-CSE-ConnectionGUID: 1OBBfQkZQLy2JQ0VSlMlxg==
X-CSE-MsgGUID: JRmqB+VKQj+KjvM+Zl8DZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25780361"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="25780361"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 05:03:15 -0700
X-CSE-ConnectionGUID: aW9E7y6HTEi8K0U210K7RA==
X-CSE-MsgGUID: VZPfVMWbQkyOGs6TfhbQ0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="70315181"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2024 05:03:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 20 Sep 2024 05:03:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 20 Sep 2024 05:03:14 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 20 Sep 2024 05:03:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EXHxujssoeeiUdACi21AqWH6VNrEc2Z1c3d09+1zUmcC3K1HYdShnqvccSFzc6G41+TLu7WoBg94QmpJwdOKYx4wvwRFWDg2VWpVj88My0oKK+xMj2CUVa7YNt+ohOgYMR8Q858ceiVwpHLWQXVPGKWgaxCUGw1gWCS0J7uwqkRjhItFTHmef62dJ4gsFgaXfbpZ6xinb6iZjHOxUfDHQEQxmZQZAKkXGw8kOpHFRejWrwcH+OTXXpCtwY7i7ABkHpmgOhqcusfhA9GfLx3a8gQ5RGNIxAiwfXgnUsFlpabEsCbQzy6w3wBKyhJHmdQ9bG88TrPh+99E4Ll/wb6dNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AC/4Kx+Z/bHVEc9gwkp7JxUV1njz6qy1J8dSIQ7wE/w=;
 b=FXQT0B5K+w8/4PAyVD4f7AFZbtVhw6aENHmhXYOlVyZii3w/dbbohnzuusihgKxAkXHpvF1y7afQNt3/C2IUoJXK8rg1d5PmiRrzssVWJ/MCINBwPnhDr3qGWn4Oc+viIuoDsJN2ms2ZtPvLkHjzrez2Jo5fERnZBCUAOcCRrgEgLPkoGIEvrdRLBOUzGjxc8mfeaLIF9z67i5UMebU4tddkj5r+BvI4DxPdfdDYYZkasPQLE1lf7MtrpzD7GsmqaSLbYxZIxwC+OvVL3hAr38JRE9saMXjcnQInZ4SIUCUpzikoe73HE25KLc23GD8beAVP8Mx8CuFHPdR4TWXweg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DM3PR11MB8681.namprd11.prod.outlook.com (2603:10b6:0:49::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7982.23; Fri, 20 Sep 2024 12:03:12 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.7982.018; Fri, 20 Sep 2024
 12:03:12 +0000
Date: Fri, 20 Sep 2024 14:03:06 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <Zu1kelo0Wd20pyjf@boxer>
References: <20240920115508.3168-3-marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240920115508.3168-3-marcin.szycik@linux.intel.com>
X-ClientProxiedBy: WA2P291CA0019.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::26) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|DM3PR11MB8681:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ab71f55-ad6b-41c2-28f2-08dcd96c3328
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?vYMin3pwefn5Vvp359MjeDZSoxhuOnXaB1Bf1gJ6cGjI7WsVOsUGKJICDuHi?=
 =?us-ascii?Q?ZqvVSyJ6avmgi0DKNJ1T0vvXBkaeEOpbizvn3gIsmJEREUnp9fL41pJeVvhW?=
 =?us-ascii?Q?mBK2s54r3DNXjS+eyNyTukUlU/Z6hBXMjVwvpOFfKfZe7PlRFD6X9DfVscKj?=
 =?us-ascii?Q?+eIK4IQ4BaE48xGQVwxeZLExU9cO4AslLmtza76Ku5Y5GhSIrivUZMZ53JVe?=
 =?us-ascii?Q?F+lsB1u1zid1RCCEw8mE+negEhAsTnsrGpL7k4W5LHWOt+JvoBUSbYix3D0V?=
 =?us-ascii?Q?6lnNGpNpX6V/oCZj9cwQLukcveepLzQc8rdhN6QgpXxKlygaeeRXvSsUiZ9Y?=
 =?us-ascii?Q?jg+AX0LOLAwuQ4qHriVU+pCkz6hoSjQS88MQc8O+zCXhb2E0DVDd4Q8ZyPfd?=
 =?us-ascii?Q?wjNVPoquwe+HZ96ShHZHfkQyzRS0+XtQzwZ99EvF2LXwJU7pxsIHilRvQldw?=
 =?us-ascii?Q?QmNyUL/VsrnOCdDiVozJKumnsObtceQYFNyR7PbzaQT5al9yerM5L3FoPIgD?=
 =?us-ascii?Q?X7X06WcTqcxNRvn8NvXFn953hK2tyktkuqFKzn7apFDeg8SuwZkNCWMJHLYR?=
 =?us-ascii?Q?CjbJAEOB14QKIM+ODaaMekZUcZQ4Os2EyCJHXvtzxd0WAa/L7XXjKB9SXyMz?=
 =?us-ascii?Q?i10px6TKglnGPV1KL16zYGNsgI3EcnV/olkvfO5Y1Ahz9dQYZzngbv5UZke6?=
 =?us-ascii?Q?oVLIN3nmQJfkI43dYVOWkZHXvjxyWKRMqQ+/l1fcJEwdpq3Y4P68GFfCfvIT?=
 =?us-ascii?Q?CnqNEF88oIHCQgaarYNA+eAUIMS5JYS2/POBey4VC02obcari/rsdk/OANgX?=
 =?us-ascii?Q?UT/pBV//+tRchK62VI7ZdQR54nRHcElHe2iQwYQM7L+Aod7K+jsh3zyDvt45?=
 =?us-ascii?Q?9OPGOeG8VvidF/DBLoxIGIIRUhhAqkrbVYrDymo9ESTRZLN6jxXi3lSuGDiT?=
 =?us-ascii?Q?5rucXrG9K5kcuHoLKAlJnSaYOqR4M7IlUZ6+emem0U2u5obCrv6YEtfObKqR?=
 =?us-ascii?Q?/67cfH8r+xsfXlbZKUBWtopG4RkL1aD4lWuJrVD/r2Mw4nzghnYh6q/liWCo?=
 =?us-ascii?Q?Cv562uBiDL4Stl3GZFRZ2fYEY6ebcXQFzjy/SpCh8RkKU/KNHuNfa6mLwddC?=
 =?us-ascii?Q?tGni0e94WK+ZuUO6PGwQmyljuvMXYXZEjiYoOytzWmNt21AZ06dXq31NG0ZH?=
 =?us-ascii?Q?4XP1Jt8a0tQEtPXuX0OCiiTplJzWkqgX64dod04RfyV8z8HdXhhtO1QcSZMf?=
 =?us-ascii?Q?qtfuM1gxNIDqM4Zi2WLoRUPj9GVWtFhqLPulOahI1tLhTT7dCrxvrib9qkuo?=
 =?us-ascii?Q?4Ry3WJavKE60rFQrbfPMW0IWK99ANrUCFseEKtZBaJ0ALg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sx9SmYKzOK6TA2sZlHtjQEMkwZqvTSBsi3cYOf8LzscaTiObPtxgiPMxePgS?=
 =?us-ascii?Q?OVxOOOahmJW8SgJzbaH2Z+Lcg33fo3ZkLE/6w0gPUvKMNbu682iHX+Ucm8DA?=
 =?us-ascii?Q?jvDni1AKzdWJ1Kdga5C9GGz34/X82ng/SbBd1O9PiEdYab1QfSSZaMcplrnE?=
 =?us-ascii?Q?Qv83k08eonveJxi1dtLitUjKhfxDfZ5vZ88O0Tg0EEXnznexro+rNU4rSp4q?=
 =?us-ascii?Q?ZaANhbvZ/d3eGDhKhOURU1BgCDSQUrnoSy3xCu9ghiHCK09m493Zx8jcfIFH?=
 =?us-ascii?Q?z4IWTm251CznCn7Dn3k708viPGggQLj/3JsiZGHZZPFa0VGvIujBEvlkrxMF?=
 =?us-ascii?Q?eyY/mse+WxGDywdcSYd1r/HDjmvSsSn8Psokcu8maUWjwIpkhK0nsIkdxbTE?=
 =?us-ascii?Q?S1gUP0MbMshdX08k8Q9LPdXxt2t5rVZaTiqJBNyAceW9rRT1oR5wythwxWoT?=
 =?us-ascii?Q?p/HrP4g70H0yQ8YWsVDKHHeHHy19/FOKnU25R18yTfGG+S5la0RPFKwhQOwi?=
 =?us-ascii?Q?sv9zzePkG1CY0UlyiyLZd5gHzZo8AuuvMCXOcMaMofVryS4rqWlBHajqmRFU?=
 =?us-ascii?Q?oZb1Mb2uG02qtw0XYbHufsFipM+n9Dosc/MPE5vAZgHsMpKEozZrcKCq89oR?=
 =?us-ascii?Q?klpmAL6N2lnNx5LmNuYKdiuRf93vAHgsvQjdlMCgH+CLVdqpwxD24gc6uIZH?=
 =?us-ascii?Q?9RYdKoTbhg8iNLhhkJUXTy5CQv1R8heILb6lx/fHeqL5PPATeplZwKJ2J3VU?=
 =?us-ascii?Q?KweBEIJrmCKHeY/Xa3ZnhMS1ADcEqLImPrMi2x+WKp8uWwQEnCikbIvJHG7s?=
 =?us-ascii?Q?ezqwN9O2psxc7RLfMTetATXEw/S9PRU50qYUPUdfrsqUg84zvNqeZsL95pSC?=
 =?us-ascii?Q?hcQaDPMtVzPYyCeevjYiA7ug56E5Ebi/zhBjXN7ojm9zEjkFcmiUNtUkpr8i?=
 =?us-ascii?Q?rme54hnAqiHWdRKX5zd2Z3BtZXxD8nR+bFsHPKvftgAPyHR/0glR+6rwgGpg?=
 =?us-ascii?Q?V6HIqOrkuCKI1yOoD4xSyEeVQpGaeHHeKUSCX2NRlGOakX0kv4YPU82jwLLV?=
 =?us-ascii?Q?/8YBE5zjjvxpSYd8Vx69AnlJa8R3j/XyfTuYYzCVuvgZMxLPXs/67xx6tV38?=
 =?us-ascii?Q?vVRmQkvqEt5rM/8byQBto6d1mswRck42/bukr4VJi7H4pPS42WZhnVjwL2uD?=
 =?us-ascii?Q?jaxnuSvHRiSO0sYAN8Z/FKyZWEBoL8kdMXa0k0t2MuL4AJ9nxgzMZMouCM+z?=
 =?us-ascii?Q?jFWGQ8r4noZaxgyfyxcdmqGc0L9p7YkJsXfkLmOR8erZn1p8u5fESpPN294i?=
 =?us-ascii?Q?0h74cXBeYbbPm7QJx9GanDCX+2+IQg2p1nVMTCwTlhCfcfcRQDl/7c0K5HRr?=
 =?us-ascii?Q?zILlmTLNycXhqtZjuLtN3RbY1US2kxk4j4nTvNMCMP+REpRVNrQycAlmLMxm?=
 =?us-ascii?Q?thBf54IZGAmR5SpUqdHoPU+ecwfH5fYOmL5sWzGAlgnrjWx4nXR0zbEDWYKz?=
 =?us-ascii?Q?Ngr8OxIbMQ4WLTAPgF1G42cEDtJnCYcBR2o7K7TbHOpCtb6CjCfKnHmAD9TV?=
 =?us-ascii?Q?0EjEEu4CisN2TgRtrfZpqU4eRjeDoYM4TccPmcMTE9oqWwo1dB/3+QT1Seuz?=
 =?us-ascii?Q?ww=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ab71f55-ad6b-41c2-28f2-08dcd96c3328
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2024 12:03:11.9153 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QexH1N3sRlBRVHNy6PEwXVu0g4hIzoShZ+JNCY3MKOkEM4RjxnsEpRX8wRpSgtLb2DqhlNBX7KWHKP8wc4ZvkE4Scv6cbj9azOJShX8o3e8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8681
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726833796; x=1758369796;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lYlgIQQnfukdaWZiXEU5rZMoqfG4fijRw6jyebPaKxs=;
 b=VTC1M8s/YDK+iro809yniNqtMw9bPGUi1pjIA1VgQktYCpYNZqOh9k/h
 C4CZQyyZf/2x2SYWkFhbCWzGKFxEQLjF5XKWCUj3j0pxsHZ33lJNtT495
 wAkmKgefrE1Ic7vUqYkUBNaiiap0WN9dl8UKSI2APjTOi7e54MB6NHCFB
 D992f3ouLbjP0KeBtstR+o0EpP3JkF1mSavQ3sjISHBKjacXagTI/Kn3T
 bAgW8zGppj6VXjPDt2vKO4Z0Znxs7NFgePFtPm44HmAKCyXQqMeie1jpl
 iJLJSoQn01vKQG0Fx9v4JpXweZjaugjrd9z62rULeFcmkvfMp3r8Kv16J
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VTC1M8s/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: Fix entering Safe
 Mode
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, mateusz.polchlopek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 20, 2024 at 01:55:09PM +0200, Marcin Szycik wrote:
> If DDP package is missing or corrupted, the driver should enter Safe Mode.
> Instead, an error is returned and probe fails.
> 
> Don't check return value of ice_init_ddp_config() to fix this.

no one else checks the retval after your fix so adjust it to return void.

> 
> Repro:
> * Remove or rename DDP package (/lib/firmware/intel/ice/ddp/ice.pkg)
> * Load ice
> 
> Fixes: cc5776fe1832 ("ice: Enable switching default Tx scheduler topology")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 0f5c9d347806..7b6725d652e1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4748,9 +4748,7 @@ int ice_init_dev(struct ice_pf *pf)
>  
>  	ice_init_feature_support(pf);
>  
> -	err = ice_init_ddp_config(hw, pf);
> -	if (err)
> -		return err;
> +	ice_init_ddp_config(hw, pf);
>  
>  	/* if ice_init_ddp_config fails, ICE_FLAG_ADV_FEATURES bit won't be
>  	 * set in pf->state, which will cause ice_is_safe_mode to return
> -- 
> 2.45.0
> 
> 
