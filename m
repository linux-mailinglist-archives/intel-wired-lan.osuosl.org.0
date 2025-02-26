Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34ABCA4553B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Feb 2025 07:04:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCBBA81EA4;
	Wed, 26 Feb 2025 06:04:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dtahgzZ4VRoa; Wed, 26 Feb 2025 06:04:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F38AE81EA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740549841;
	bh=iSPq0LBdsLH3578EdQDXfhSGKaX8LRlmOefUUvziLTU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GTjdeX9wvHKXW6p5LioMwOsX3i7AUW128mjw7kP9ZOUTbWMTEwjrvvE1dlQT+4MyJ
	 eHgc6aKovBBr9m5GnNoZ2crr9Lb6fdKOiWNAYkNj1jAv9x3lhhw51q66KDtSILbBDF
	 J+znVNAiCWV2eHSOhhQ8fI4Nu18rIRON4dUU2i3JK5lstaqoUjwy86siOX17C8eUqH
	 Kaqi7VF2U9/3TYIZZ+xGE5NtmfOL8rkwIG0O41nwlGTIfU20Se68xMX3NOAxYk3Mi3
	 Nd6mS9ZQ/zqD0uhN7qrZQTO7GQDxouvtx6LJa9oBmzJIOLOkPWSLGK0HnCr/ble8Su
	 oJLwGqHWB5nFw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F38AE81EA5;
	Wed, 26 Feb 2025 06:04:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E191F1ED4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 06:03:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CF86E40DB5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 06:03:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 85Gr5R7Bpj77 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Feb 2025 06:03:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C861D4090C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C861D4090C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C861D4090C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 06:03:57 +0000 (UTC)
X-CSE-ConnectionGUID: jawfPO6CT2SoH1lXV6FyWg==
X-CSE-MsgGUID: Egc3/RxBRoqPb8OoVSbmIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="28974081"
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="28974081"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 22:03:56 -0800
X-CSE-ConnectionGUID: NiTkdOirSreEOUqxY+WJhw==
X-CSE-MsgGUID: F3ckt1euQMmGSK5ZbbSetg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120720916"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Feb 2025 22:03:56 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 25 Feb 2025 22:03:55 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 22:03:55 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 22:03:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Na8QIbU3eMpkfxoxOv0TEwrtuM7hoTLz97RglZdAyW1nZg0lBXb3zrw1t4yj4hpKLoGpws2saVlM/CGQfjwsKqfs7D8Epp9kfNiiqWFyrh011JmSVfdKnnBxtqxQmtT1hEokrFH2WvL0+jTayhrTawI6Y8yxaBlaqpUllKhaVrDOWAQqOwihZPrjZIY4044/h/8wiXzd1ZOYKEUGopmOBvDgPYltsbkVNy0JqoobBvkZk2CSq+NGBeYUpyQ279BEGrXCeOmAvekY21oFBGzj5qyy3Ztg4G2qu8OpAGqOO5S1JG/vdVkHAQWXkfveaDQreHV/wlcYDI9T26CfnJe5RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iSPq0LBdsLH3578EdQDXfhSGKaX8LRlmOefUUvziLTU=;
 b=HLTQWvP7FeFzj/IeIT2+4TVJVH7q7RYxg0UlfyEpnXFdiUWZ+Oa3bOmlmA/XtU9DACkuIoMUZ+dzcCm3gNwD4S8ZddMmfLTo2dD9/hEwX4q72Jgp3A5IkVRLl1tYoi7g0RYVjy7sX2l3uMOstc4jcPjwlS93kG025uqTyPG+iFQAP8y0N2ojphTmJLb5TK3Ux7hgdtIZBvxFxYU5p9xUQSfrwiYTm+0atw+FCTa9axqIPYqnL9JjVDyfH7wsJP6tiRmb0x9OGnBAFma5VStv64ejMBpGxkcyDHWM8jMRrY+VVpWlVyBYWELs6JftUUzDzq0pGq/BFvm71jlKfV7V3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SJ2PR11MB7597.namprd11.prod.outlook.com (2603:10b6:a03:4c6::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.19; Wed, 26 Feb
 2025 06:03:53 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8466.020; Wed, 26 Feb 2025
 06:03:53 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix memory leak in
 aRFS after reset
Thread-Index: AQHbbW+FaMftY4cvGEuf4BGfzLkT+bNZQNhA
Date: Wed, 26 Feb 2025 06:03:53 +0000
Message-ID: <IA1PR11MB62416AB9C9E8B8AEC1F427DF8BC22@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250123081539.1814685-1-grzegorz.nitka@intel.com>
In-Reply-To: <20250123081539.1814685-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SJ2PR11MB7597:EE_
x-ms-office365-filtering-correlation-id: 1424ac36-30db-4310-4a8e-08dd562b5908
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|376014|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?wejNDan8+WGYtAYAZ+I9sF13qMZO3wxXQtOHKrvK84jgTVyGD13bUpgfL7Iz?=
 =?us-ascii?Q?lcnY8iK/KrRqRiAAE3dKgde7i7LQG9UgYFDeUiOtaGyO/43sts05An+EXEIb?=
 =?us-ascii?Q?Y2CqHRaZu/DgLUtxkgu3DGLT+86CBfcxVEdPT8xX6P62jdMpZR+d9gUbrAYo?=
 =?us-ascii?Q?m5RbLHRVDqI9PLVr11HR5s7G8i/4Ith3A80c75RdO/F7vf/rTY8xVGPzjSau?=
 =?us-ascii?Q?P/Plg8Eg7O8CUC/zdtva8loQL6co8UeTiHNH1nSAXcbATRMiY29tnD9YOBy8?=
 =?us-ascii?Q?S+85JMDWGOuyW9FN91SQCwtjxrcf/ltxiMHFlbNB55zrYc4SoOtJ+T6ALDOy?=
 =?us-ascii?Q?uAgE//65X0MCxbOBge92P98bbepsDAOweFl5oDO6Ulgd8zqwZ9X7a5AUUazq?=
 =?us-ascii?Q?fqi2Jy3gNtEtm1ST2jVs3PM+m0KpOsLt3j0n76/nui0t3RMWb/aAC8FmXEsl?=
 =?us-ascii?Q?FD3WKk6PotmM349rv1ZHnfMDFWF2kSk8H4EI6tD5LHoetNrDVJQrbEwJ05nd?=
 =?us-ascii?Q?Ov6vAa0KltVYJQV4IfZ9VbkgNrMo+glbIuAWepoV4BCZZB0BSr66dxaAk83+?=
 =?us-ascii?Q?UZzlzLmsfqfYey+bP/P6hCG8StP7xENBdXkkmk6Vr8Qu7t0FpszYM7CyiRLv?=
 =?us-ascii?Q?A9KlmqNHt3jmXJGuQ/tgTI+3zjDdtiA9CDSVMNx+fRQqUCfLiPJEfCxTUn7f?=
 =?us-ascii?Q?c2Bf6jrp5ps855ctXSeQxTBMVfAy/lGzP0Vuevao9hgtQ2sS2uu/CVVGv+Ii?=
 =?us-ascii?Q?7GRfulf3syeyWfmulWAU49p3+/8lCQJ3qK4NmLCNY91+rLamnbp5GlSd9rCD?=
 =?us-ascii?Q?4kuWX3aeL04XYUafdhw30u1NVw+W7X10sk976Ld0js7weF3M6zBWa6JrSnX3?=
 =?us-ascii?Q?j7e6+pM4pKW+4zKwz1zIG2d6dQ3QEDOim6t0qMzRu3zonELbtbeEBMY3g70d?=
 =?us-ascii?Q?qDPngtXoWm5aMnVtvrX+2DQP4dNHj19RYG2On+xk4FmoFqG0Ld8sCypblvjX?=
 =?us-ascii?Q?BVleYaE49WimpaHZZR3RBDst1jb14Uk7qOmGgkpXav6GLXaBZ7Mh8pAv2TDq?=
 =?us-ascii?Q?64W2J38DQ8hsUt22nrfDWYwocs8IsHDn5thDKs7NQv4kn8wcocNiLGLyoKuM?=
 =?us-ascii?Q?WEh7LasWPpBoA5Qgrrvp1COyrcL3Wkq7vuDvfrSlTNn3456PtazlbnNLu3x4?=
 =?us-ascii?Q?JzW8JNz5oGReFY/ZJuoF3R2euHmtL11E+xSSRUEs2aIP82FYbpQhXfyyq4qf?=
 =?us-ascii?Q?WJj+nea4GOkufj/KJgcuggVhablUHSl61DzEKBoYpc8zOJI5ERm64oiE0PPe?=
 =?us-ascii?Q?FXd5oPmi05eLARdvnR/ZWFE43sYIW35HZ9T3wQn6OM3dbBq2rTF6pox4M6DV?=
 =?us-ascii?Q?FuftQSNWBTmjKdVtBDAbvIGNdafIlUKuepqcXe6jv0kqUClAOR7LC6TbhyPh?=
 =?us-ascii?Q?d1PfMmH3eFOmYo4cYYVjoEhp/noIXq9L?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?F07EP8jE0pNGM9yTeXYNW042Dlc65fTb3cKwQuqUOZmu/k6yh+eaLQgz+EqD?=
 =?us-ascii?Q?aZ23P+e54n9bbALlqwIuFCGQ8hBfeBC6Gvg0wjqvjxMpUa2C/stZoy6hQc3F?=
 =?us-ascii?Q?GsFVj6e9YQ4ybcl8u+qEwcgk/sl1VF+PgzPLG3uBB6HtH38iN1jEdku0oyE2?=
 =?us-ascii?Q?5DyxXme3EBzK08fmaAsFFtP/Ie+PAt1HsttJnHxc1MD2a7qQBListOzPh/y8?=
 =?us-ascii?Q?FJEq3N2r79JX55OeKXL24868489eSWgbwakXzxFFbq2r7uTs24bh3aqDkv5r?=
 =?us-ascii?Q?njJvd8sB5mA2IdhOtGvhbulWX4I0A4N9BbE7LQtYjERHHaYua2w2gnHbhg/3?=
 =?us-ascii?Q?5LTfE+fCHAFtZ36rPYZ3YzW5RE1WBNnoEJR1YQN80p0jAEBR8DKQ33dRJ3Co?=
 =?us-ascii?Q?hexuIqclG9EqcRp7nh6FB6kIb10bI2oPp2j2a8f32nvu2/uXh2jCS6r82wKz?=
 =?us-ascii?Q?yJmyqp4obo9+99XfBUjrPtZGjZa1xRj1YQ+rZgShLVNCuZz6vQdWQv7rdGLv?=
 =?us-ascii?Q?R2hA6MQjZCPxzoohBqwzZ5ikKbiAvi5snvDogBzpTNIeK6VcHifB93iX/YJz?=
 =?us-ascii?Q?2ifXClISa2/EAy6mSqoVOy1UYGHwdJQsMLvGz71KgmxxVLq0PDmKFUPLbE15?=
 =?us-ascii?Q?tsYOYQ5fC1rfPRAyirhpwbmEPi0js7za//icb+ezEurIr+7KfpZ+bjBAz6hU?=
 =?us-ascii?Q?FMyIZbc9dcATJeOegwxraWK1eN7O8cLvHI0HyPMvqRxG81eGFgTDblmsURCk?=
 =?us-ascii?Q?FUpDcRTNHoQG6XjG7gEnEv0FFeM0WWiDnOhXxRPIq89bWsDKzXKUzyxBPAV2?=
 =?us-ascii?Q?W/DwPjgtdcU+FJEOuZ6w0fR+MGM/yoRmOj3vZl9+GBgP7ZLXTvybQCkRBY9Y?=
 =?us-ascii?Q?LCHn3FsUX860B26m97ApCivE4mdFULpXDytajYRbCJ5DPWgGiT9iQyjSq+0c?=
 =?us-ascii?Q?sa22Aj7JTERaozbyilA40KhWKnjmkQ2DK2zV1aEUtAJF71pBBN/m1+j706dY?=
 =?us-ascii?Q?9q/AigL6cmK+q6H1UedoAi0298Xy0idnCeRPARmXsPKrJ7ouxOcOESY63l9l?=
 =?us-ascii?Q?sTQbf6Uoh7a6f55LJNdtpluZHneaLI3OpGkoBH2IJWhVCZGnLJNF47L/tS/r?=
 =?us-ascii?Q?0U0MW+WiABwjN9icaF1DS3ZwACUD3wzwyHGPysSSBSqOZdIAY+ATlXybLvcH?=
 =?us-ascii?Q?3pfMTxHoK0AHMo2w2/d30xy8f0sOxabm4ROgRJ77AFz2BlsVCdLSIEB2QHb1?=
 =?us-ascii?Q?6Tb6UMQNFIwXqOC/7zJkye/SXW4ovfTTPmUz1qlrfCIP3GkaN71ZuG5oaidM?=
 =?us-ascii?Q?tqOPPcVR994Pnl2ueQ2nEF+dk5YLZQMG1pq/COTh05+upzuFMYTSCwK1C8CT?=
 =?us-ascii?Q?YEM8W1BXrypTrBrxGGz6WOBYnfYBYIyUrkR2xaxMViaya0M0dvxXeif0DY2C?=
 =?us-ascii?Q?Sp4qsIOf8Dgg96CDGdeQG5ELZ6yGakcMsFIHbEvHTes4TTAAnw+T3ZRa8k/5?=
 =?us-ascii?Q?FVXTRiKb26XYNWtGtlAlDbN3ByjwpWFeCcNWE0T0fbDFS3igvBSsTJ3lowgW?=
 =?us-ascii?Q?1y5pgjbXkkxmsIrcccm842KZ0UTgzT5rpVW6c6BSHFkC3c8lC65e8YWkPhfi?=
 =?us-ascii?Q?CS5rNV7zevsdRRk57LvSgaRodWXKYWniPP5XpQEO9wUh?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1424ac36-30db-4310-4a8e-08dd562b5908
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2025 06:03:53.3752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fWnZcLba2ukzfkTNIHIRSe/rtsiNKo+Mr9g2DIjyNdfi788dS8U5p+UuqedDN7QmCHiU4XTrg84e9xtBvTZICg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7597
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740549838; x=1772085838;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uJSbj+ywkeVWD8XH1utoBTTQHg84WexC3PPZsJEb+OI=;
 b=HrLx4WHKdcv3M3NrRJQfO1WZ/x0SBXK1youpGPYxNtuYiHGJe6lrdYRY
 sngdv2WEfGCtklwtH8IdXgOGmb+hGdF/Wpb8oeosMS6jgU5A3frbmCSbi
 ccF9yU196qX2nm/7GXWrB+IvA8KCfsyv9dhz2SubZQeB7dU6xet9S/ST5
 Q1E3BC+YsoJywzh7VX2W0MNSPoOi0U5pUp74PRBDWMQKsMEoub4yb/5Oo
 J6mAagjXgrA1yoVhcpJMBD7R75A0Ct3MIZnTwf5I6UO4nXWwIBwppGrbm
 uMY2DrTUM2rMlSkqaZ3C7DLV+lKj6bCL34MBUNIM9qHetBwAbZC/BO2pM
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HrLx4WHK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix memory leak in
 aRFS after reset
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G=
rzegorz Nitka
> Sent: 23 January 2025 13:46
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Michal Swiatkowski <michal.swiatkowski@linux.=
intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix memory leak in aRF=
S after reset
>
> Fix aRFS (accelerated Receive Flow Steering) structures memory leak by ad=
ding a checker to verify if aRFS memory is already allocated while configur=
ing VSI. aRFS objects are allocated in two cases:
> - as part of VSI initialization (at probe), and
> - as part of reset handling
>
> However, VSI reconfiguration executed during reset involves memory alloca=
tion one more time, without prior releasing already allocated resources. Th=
is led to the memory leak with the following signature:
>
> [root@os-delivery ~]# cat /sys/kernel/debug/kmemleak unreferenced object =
0xff3c1ca7252e6000 (size 8192):
> comm "kworker/0:0", pid 8, jiffies 4296833052
> hex dump (first 32 bytes):
>   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
>   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
> backtrace (crc 0):
>    [<ffffffff991ec485>] __kmalloc_cache_noprof+0x275/0x340
>    [<ffffffffc0a6e06a>] ice_init_arfs+0x3a/0xe0 [ice]
>    [<ffffffffc09f1027>] ice_vsi_cfg_def+0x607/0x850 [ice]
>    [<ffffffffc09f244b>] ice_vsi_setup+0x5b/0x130 [ice]
>    [<ffffffffc09c2131>] ice_init+0x1c1/0x460 [ice]
>    [<ffffffffc09c64af>] ice_probe+0x2af/0x520 [ice]
>   [<ffffffff994fbcd3>] local_pci_probe+0x43/0xa0
>   [<ffffffff98f07103>] work_for_cpu_fn+0x13/0x20
>   [<ffffffff98f0b6d9>] process_one_work+0x179/0x390
>   [<ffffffff98f0c1e9>] worker_thread+0x239/0x340
>   [<ffffffff98f14abc>] kthread+0xcc/0x100
>   [<ffffffff98e45a6d>] ret_from_fork+0x2d/0x50
>   [<ffffffff98e083ba>] ret_from_fork_asm+0x1a/0x30
>   ...
>
> Fixes: 28bf26724fdb ("ice: Implement aRFS")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_arfs.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
