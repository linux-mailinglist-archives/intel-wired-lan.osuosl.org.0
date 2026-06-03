Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Y7P3KSoJIGr0uQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 12:59:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8ABD636C7B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 12:59:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=fIwH4Q+l;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CAC0615F3;
	Wed,  3 Jun 2026 10:59:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xIw9oLWYzOsy; Wed,  3 Jun 2026 10:59:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D126615F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780484391;
	bh=JQjaDwMEFZdHMvfpADZncjCAVrGquZAG9R6W4E/bSwU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fIwH4Q+lBXqHTZEM+tAwCaQ3/+fy9g9jYFbs0Knu5gyM9cCWSmM6jZ6YdzA7OVkqc
	 OXaJkiQ9iiNE5OvlS4zVSLvbU0CVjtDO8bTQpRB2AnD93COwzVFfcVdssqBa3n6n8/
	 EbNfIqqBef65EN2rDdJye3X/eylyGIePbPkWhu2PMFIT3XNJLe4bPKN00Kq8Y+V+Pu
	 8i0ZwRCbT+FU87R4gs1hsQh/DEmySqzmfyMJFJ/N7ILhKEastg8nX2d30cR3KNvK/o
	 4sVU7WaJ7N1mDqxbxOq9nrejEc+Xw1zb12kWkBPD1/bKjRBCK17Aj6QgJ3n0hY83FC
	 +xz0bBIknFR/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D126615F4;
	Wed,  3 Jun 2026 10:59:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 603A2192
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 10:59:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5279D615EE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 10:59:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QQuKWrnpdiX1 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jun 2026 10:59:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 855F1615CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 855F1615CD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 855F1615CD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 10:59:49 +0000 (UTC)
X-CSE-ConnectionGUID: 04GnIxOpQqysbnsEdivHMw==
X-CSE-MsgGUID: tJQOQ47iTqGDgy8qfnfgTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="91971128"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="91971128"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 03:59:49 -0700
X-CSE-ConnectionGUID: +aMtNN86QnymMyR1CEIEsQ==
X-CSE-MsgGUID: hFpDPPXpTVejLDa83XXVww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="248137009"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 03:59:48 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 03:59:47 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 3 Jun 2026 03:59:47 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.0) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 03:59:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i3QGC9YCPfw9EVXHz38IVc8XBfVWyzf3TBnI5LyaNYyAWHpyaZofeBvPviINmo/xHpVR79tTXTxpS4CBJbFLw+2RV/lwFzWRhJjJTtawFakkg7Fg3OOdEg5/PlO9vUv92ImR7L8DO9Z5CdUfJkqoSA0UkG0+kiEW8ShlxxzksuVYzkp6YJoxapg/96UzTkyYsuxSODmVz8WxUALcgNF4TIjtsdw6U/AtND4MabOLiawHLZoUc77WXPaGb73oP+qeCLeLyk9+0JQ83hoj5grDKTpLRQQHEhZk+fkgOKF9nU0pprtgr8GIVZqI75eu9WbDbgl2sHYwGB8IexMTAgQ3rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JQjaDwMEFZdHMvfpADZncjCAVrGquZAG9R6W4E/bSwU=;
 b=jDdGahHUqNL3BR02+bcUswiYHhyMeBJ/zyPu+rIs1t4lvKAhW3Bz5MAnmYpCK3yceFmaZjXJ2O0d2GF9EFsexPPdVLKxrMHp7jlhq+IvqboFBu/K2YZrodr06/j/81lWfaWndPsjJxV7t892/2JYc07NRDIZ7V1CCs2qSMFTBnVdDyXl2NGlQ+Fu7+avcoKoruhT39lPBRV49azSAvbYzb8dyVZdvMqv8yN7mnsUM4JWN4tkHR4xpgY7e1P1FRfP1LV4/vP9faxEPntKi+V41VNBJHPfVO84p+/70OhQ5000rWeoQzjTXVQLj9g0m9o5RCG118LDx9kB173uzAasVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4904.namprd11.prod.outlook.com (2603:10b6:510:40::10)
 by SAWPR11MB9759.namprd11.prod.outlook.com (2603:10b6:806:4c9::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 10:59:46 +0000
Received: from PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305]) by PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305%7]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 10:59:46 +0000
From: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>
Thread-Topic: [PATCH iwl-net] ice: fall back to SBQ when LL PHY timer
 interface times out
Thread-Index: AQHc4SxwJKb39a/hbUK+clHDauCzWrYie0IAgApRopA=
Date: Wed, 3 Jun 2026 10:59:46 +0000
Message-ID: <PH0PR11MB4904D00194D4E001282B4E9994132@PH0PR11MB4904.namprd11.prod.outlook.com>
References: <20260511095830.1095984-1-przemyslaw.korba@intel.com>
 <c6f6311d-6d14-445b-b5cf-e92ad8c17b27@intel.com>
In-Reply-To: <c6f6311d-6d14-445b-b5cf-e92ad8c17b27@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB4904:EE_|SAWPR11MB9759:EE_
x-ms-office365-filtering-correlation-id: 5140ef48-15a5-40e9-838d-08dec15f396d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|3023799007|18002099003|6133799003|22082099003|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: gq6dNacO7yOHNjI1ghjOU/3eS3N6pe1iIDI/cHjboR9bvk7gnYrDoF2+p3LDu0DCOmR/Atpw3y3eV/3tTtwcdDW6OqtQWUkGSmpZbq3eDcMAAGuIMjQ8s4xEh+iLLdlUyH4MjH4eUPLOGL0/3DcNpVvv8W/CwIcl/Trtzeel3Bu5Pwx//Fmktmu+x9fJhF/aCCPkbBxvmftiuYdaisdVfv5kiIdaB2nx60whFL/uzG4I4ixcz46xgsIj3IoJQQ4xYmZEcvap5nJoSZ1B7FKxg/h19c0uieWI4xMVGT+kFMFPWSITAVF/6rN88xijjAfQykW8Yo/VeNVh/jYH6JFw2xQDkmJh9RE4ZtOZJiFlpXnPKemx96NjaamJoVmqkeUIMXAkqbSh8SCs0DJO+rGZ1GsYRMGFQOKCkN8jPnpRycZatv0KrkcXrrW+Wy2ubgmxN43NkF5Qm97Hfdem7x5+IQFxeVEuR1jrypzLHH9nTm1tGDU6+41DEUJH/RqU+/vNiijnLNEYrreyUNnWzf+2oF5PS7muPb8jiIQ+7VeXSZt/MbhJi43MIcB43BW+D9e8zdw3vjsU0ss35wwf/FCR/HjEZKOzBoF0QEvnKjWlMTSLem07Q7LfdW+qtUyp+421IlPZXkIgcrtIMOIPuwMV0KfS4M2YrT2r/ELc+abddu5ZaxST6rYuHk3CWQaWLNrOkNlihSAhkWoeLZM+DozIft8JNpquh8QeF39OXCGFN9R4gyl/Ja6oQCKHuyGJMG4/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4904.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(3023799007)(18002099003)(6133799003)(22082099003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T1lHdU10MnBsMHV4ODM4ZnlEcmFCcnE1aG92SDYrNmlIVndMREdKMDZEcFJH?=
 =?utf-8?B?MjAyMmVRd3BHQUpSY2QxRUo1OUwwZ05TVVJWZ0RvRWw4VFhDd2FzN0NDRnlF?=
 =?utf-8?B?SlVUTFFUL1lQQ3lWekRDNU11NVBzNlBHUksyMjUvVDdFb3BQd1JnTDJaT0Nr?=
 =?utf-8?B?ZFNLaFJtRTkyM1RjclM0MUEzVDZkckF4Mis4eGVkZG5MRlBlVWdYbjBIakM3?=
 =?utf-8?B?S2Vwc0xZbU84RFJtTTlUaFdLcFF4THlVSlVtdk1OckJDZDVXc3AxdmJxdHRr?=
 =?utf-8?B?Z0hwSmd2dE5uT2FtTUxvaWZkODUyQ2ZTQnh6ci9hZVE4cDVNRVZtTkNjTDIz?=
 =?utf-8?B?NEhPdmhnem83bzRDNVVwQVdWUE5JVFJNZTI1T2liaTFUL0h2M0RrNEY3WFgy?=
 =?utf-8?B?UUtMa0NNOHVDM3pjVUIzZHgySGVNcEhSUVpidkFLWXdCZ0NtWTAzUnVWaUJL?=
 =?utf-8?B?MnB2K0FxSEdxcjNWbjIwVytXcWpxS1hoYzVzQW41SUlzd2NSeDhQV0d4cDJN?=
 =?utf-8?B?d0pEY3N0Nldjck9ublU2YmRZTDJROEVXc052dmJBc1RPcFMvWUtaWEdlUW5k?=
 =?utf-8?B?VC9PWHhOZmVVTjlnTlNuRFlSV1Vab2l4SnZoQit3a2l0VTFQdFh5ZGFRTCtk?=
 =?utf-8?B?d2VJSnJhMVo0a1JFRkFWck5DMmN5VnMvTitTMUY1Q1VqWnVpVTZYb29EN2Ir?=
 =?utf-8?B?OUlYNUt1K2w0VXNZV0FnWWRmZ3NkV0E1WHpTcERvWmJUMlB2dFJVN2VKZnpx?=
 =?utf-8?B?aW94cTNIS0k1WEx2ekVKc212T3BoY3BIK1I2TzdseDRoKzZhb1RxaWJvSFhz?=
 =?utf-8?B?UXhJMGVxYW9ZcVVkN3g3dFFFTHB3LzFVZjVrazd1Z1pocEpJemFCaGZmT1Ez?=
 =?utf-8?B?UFRLMGlzZDRqZS9YajJ1aXpMSGpYQ01URDMwWERmeCtsdTF4T29sQjNaVXR5?=
 =?utf-8?B?c2tsQzlmUWVGQWZDTmRMZmNMSGJHRnFoWWpUVXhoSzhQWFR6OTJ0VXpzcGI1?=
 =?utf-8?B?TGNNbEtYZThjZ3FheEFUTVZsajVvT0RjdEJaWVlrSGtGTFIyOGFMMVMxaHBO?=
 =?utf-8?B?Tk5lTlpOZERncDVTNitDSmdqTXVxL3I3OGM2R3VkNWl0UGdvY0psK1YxOXJW?=
 =?utf-8?B?M3ozZ1R5b1YvakIrUTNjT3g1bGRjakhmdStadlZSTnU4eEhhZkUxYTJRR1pK?=
 =?utf-8?B?Q0VwdU14Yldxb0lVSDN2YnFiNFp4aXJSUFBvemYveTNia3lSQmFLd3g0R0U0?=
 =?utf-8?B?VnBDNHpBUnMreFphemc3YjhkenVqckhUSm5YSUxFUHc1UmQwRkN4OVZiN0Rl?=
 =?utf-8?B?T1N0aVBSZUFpTnFkdGN3OTNxZ1R3N3phQ1VZdkRqUk0wZzV4RjhnMEVnL2lV?=
 =?utf-8?B?dEt5azlQQVF3OExiSU9uWjFFOG5SZUE4N2tZQ0pCcXFJaUozVUdkTnlTT1NK?=
 =?utf-8?B?M3Q4akRHcXU5WWxlQVIyZS9vYkg3RnBqcXdSbkZIWUJCeENwVCtUR3BIaHdk?=
 =?utf-8?B?NTRDZDZIdkNVWGFBai9OaDgwbk5VWTlSK3I1OVdGWEtEazl0Qzk4M3I0Y2VE?=
 =?utf-8?B?a1RqTWowU3NjK0lFK3FRb2JtMHp2V0VIZkx5T3E1aHdiV21QZjJaMDIyRmQ0?=
 =?utf-8?B?NktCRVlOMU1PdkQ3Zk5pUEtOQ3owdlRsSFFmMGt5Ty9wcWo0aHdpQXRjS2xs?=
 =?utf-8?B?bzVwajBBaWNoYmR5ZkhIcHQ1OFlJVEtUQWFBMlZsT084UlVaQlUwR1czYzZ0?=
 =?utf-8?B?UXd4THFuWVJlaW02blhJZFBuK2ozcHJuTU1vNThGY0c2NFZPM05IZVNUOHB4?=
 =?utf-8?B?YVF5RHFHWStBZHlScmdYK2hNVDNmYVpSZ2pWeUxVSnN5L2p1c3RUeWhKMmNY?=
 =?utf-8?B?VlNPWDJka3cxbGZydkwwQWo1NHJVcDR0ck8vYnZDVys5cUFWZi9WRStNWTZ2?=
 =?utf-8?B?SmxCY3hZbktaTnNWdnpOUzNucUJPcVEyaTUwdUlMdytpTCt4dUVIcWQ3Qk5O?=
 =?utf-8?B?Y0t6VUpmR2JzUWpHVERYWGdwdDBHOHAxR2huYmRqemtia3c4Qll4OGVNOVRs?=
 =?utf-8?B?T25zRGp3M0VpY0FsR2hXKytiWlNNK1BuWm5HVHVFMUtYZFZaRXQ3OE4yMitv?=
 =?utf-8?B?ZTZXZndwakJWRVY5azJtWmQrcjRvODMrandkRnVoaEk4VklyVVdWQ2pPZ1NG?=
 =?utf-8?B?bnVtbklvSmUydGUrRGUxWnIrank2cTB4ZTFlL29YeTJnMkFLQjlnY2FhUkc0?=
 =?utf-8?B?UkNNSmw1TG16T2cxbTVnK0ZEWFBmVE9YZXhXSSsrQkRJUGRTT0lsODBaR2VL?=
 =?utf-8?B?R3VEMDdKVi9jK0srODBxcUVIQTN1Q3Z1Mm9hT281bkVIeXExRHI0UT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: A6zGnSFIU/qUQ+DuGGyRrFwHd8J/QsxnCM2sCXy2tLUWw3VlCVokSs+SbVcxyS+qVyWEhZh+VMnBnmoxEhuVDm2P06tCoTXPhib6GllbBinaDt9sVjagBweT1EGng73kfPlhXWlpSJu06qwjTKBhFN/u5WQXq87toIxJQnPoVOT81LRCfFN2NVY7qtg1SIDWoJ3IChpPOShnuxSHhnl1XLSugSbUldWwUiqd1018/0sI3IQBNtowuKDeciCRjivbBvI+dRBsy60ne5tiOgRkB1OoROGrueIujBNPXb0sSqSZguWnsFwIUnwRAFji2isDxDhDTGm4PSqrPfoLSLe8cA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4904.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5140ef48-15a5-40e9-838d-08dec15f396d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2026 10:59:46.2132 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k4kokkv3maqtSmoVzcGCRKX7L432HnFLYM6/E4EFXARIaHeoiPQyI3Kvt4+DAiC3Y9zWcjoXvmnr8M7tVp3gvlUN2Q1fMiXI+JEXKZShmGo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAWPR11MB9759
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780484389; x=1812020389;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JQjaDwMEFZdHMvfpADZncjCAVrGquZAG9R6W4E/bSwU=;
 b=jD3ijHxmuftMamtVS4iLPQLov5f+fyq5iCeoKqEGuCeO6YlTODcmZgLT
 JZDHSfszykEGyQRLsUYajscefZQD3Y1pUNrfmSURuZLnnzQDbWpVdVZnJ
 uIB2sTUFFrBPacSemPRyzM/A3MiemkT5Vk8CoIg+rJ9DZClz6q/xiG6js
 ntK/Odzq6r+Rv/KKLxAVEe14EtoRuOKQFczEXPXySaTBYeIqT5Y9V5ZtG
 3/HdkE4ffP820SwuIOJyDSpW97jtLRsTIqa+Rjdj9iugz3uc0PNGFRGq3
 q8rkb0zsyN+XKNFL5mTXhAAQiUSIqyLMkcFXd5vFg/xjL0ShjXT0Ehs3d
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jD3ijHxm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fall back to SBQ when LL
 PHY timer interface times out
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:arkadiusz.kubalewski@intel.com,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,osuosl.org:dkim,osuosl.org:from_smtp,osuosl.org:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,PH0PR11MB4904.namprd11.prod.outlook.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C8ABD636C7B

DQoNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBOZ3V5ZW4sIEFudGhv
bnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgTWF5
IDI3LCAyMDI2IDExOjIyIFBNDQo+IFRvOiBLb3JiYSwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5r
b3JiYUBpbnRlbC5jb20+OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBDYzog
bmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgS2l0c3plbCwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5r
aXRzemVsQGludGVsLmNvbT47IExva3Rpb25vdiwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlv
bm92QGludGVsLmNvbT47DQo+IEt1YmFsZXdza2ksIEFya2FkaXVzeiA8YXJrYWRpdXN6Lmt1YmFs
ZXdza2lAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIGl3bC1uZXRdIGljZTogZmFs
bCBiYWNrIHRvIFNCUSB3aGVuIExMIFBIWSB0aW1lciBpbnRlcmZhY2UgdGltZXMgb3V0DQo+IA0K
PiANCj4gDQo+IE9uIDUvMTEvMjAyNiAyOjU4IEFNLCBQcnplbXlzbGF3IEtvcmJhIHdyb3RlOg0K
PiA+IFRoZSBsb3ctbGF0ZW5jeSAoTEwpIFBIWSB0aW1lciBpbnRlcmZhY2UgcmVsaWVzIG9uIGEg
dGlnaHQsIGF0b21pYyBwb2xsDQo+ID4gb2YgdGhlIFBGX1NCX0FUUUJBTCByZWdpc3RlciB3aXRo
IGEgMm1zIHRpbWVvdXQuIEFmdGVyIGFuIE5WTSB1cGRhdGUgLw0KPiA+IEVNUFIsIEZXIG1heSBu
ZWVkIHNpZ25pZmljYW50bHkgbG9uZ2VyIHRoYW4gMm1zIHRvIHN0YXJ0IHJlc3BvbmRpbmcgdG8N
Cj4gPiBBVFFCQUwgY29tbWFuZHMuIFRoZSBmaXJzdCBQSFkgYWRqdXN0IG9yIGluY3ZhbCB3cml0
ZSBpc3N1ZWQgYnkNCj4gPiBpY2VfcHRwX3JlYnVpbGRfb3duZXIoKSBmYWlscyB3aXRoIC1FVElN
RURPVVQuDQo+ID4NCj4gPiBGaXggdGhpcyBieSBmYWxsaW5nIGJhY2sgdG8gdGhlIGV4aXN0aW5n
IFNCUS1iYXNlZCBQSFkgcmVnaXN0ZXIgd3JpdGUNCj4gPiBwYXRoIHdoZW4gTEwgdGltZXMgb3V0
LiBUaGlzIG1ha2VzIHN1cmUgUFRQIGlzIGluaXRpYWxpemVkIHdoZW4gRlcgdGFrZXMNCj4gPiBs
b25nZXIgdGhhbiBleHBlY3RlZCB0byBjb21lIGJhY2sgb25saW5lLg0KPiA+DQo+ID4gU3RlcHMg
dG8gcmVwcm9kdWNlOg0KPiA+IC4vbnZtdXBkYXRlNjRlIC1pZiBkZXZsaW5rIC1mDQo+ID4gVXBk
YXRlIEU4MTAgY2FyZCB3aXRoIG52bXVwZGF0ZTY0ZSwgYW5kIG9ic2VydmUgZG1lc2cgZXJyb3Jz
Og0KPiA+ICAgIEZhaWxlZCB0byB3cml0ZSBQSEMgaW5jcmVtZW50IHZhbHVlLCBzdGF0dXMgLTEx
MA0KPiA+ICAgIFBUUCByZXNldCBmYWlsZWQsIGVycm9yOiAtMTEwICgtRVRJTUVET1VUKQ0KPiA+
DQo+ID4gRml4ZXM6IGVmOWE2NGMwNzI5NCAoImljZTogaW1wbGVtZW50IGxvdyBsYXRlbmN5IFBI
WSB0aW1lciB1cGRhdGVzIikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBQcnplbXlzbGF3IEtvcmJhIDxw
cnplbXlzbGF3LmtvcmJhQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmMgfCA0MCArKysrKysrKysrKy0tLS0tLS0tLS0N
Cj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkN
Cj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X3B0cF9ody5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuYw0K
PiA+IGluZGV4IDJjMThlMTZmZTA1My4uOWNkMzIzYmQ5NzM5IDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmMNCj4gPiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5jDQo+ID4gQEAgLTQ3NzEsMTUg
KzQ3NzEsMTIgQEAgc3RhdGljIGludCBpY2VfcHRwX3ByZXBfcGh5X2Fkal9sbF9lODEwKHN0cnVj
dCBpY2VfaHcgKmh3LCBzMzIgYWRqKQ0KPiA+ICAgCQkJCSAgICAgICAhRklFTERfR0VUKFJFR19M
TF9QUk9YWV9IX0VYRUMsIHZhbCksDQo+ID4gICAJCQkJICAgICAgIDEwLCBSRUdfTExfUFJPWFlf
SF9USU1FT1VUX1VTLCBmYWxzZSwgaHcsDQo+ID4gICAJCQkJICAgICAgIFJFR19MTF9QUk9YWV9I
KTsNCj4gPiAtCWlmIChlcnIpIHsNCj4gPiAtCQlpY2VfZGVidWcoaHcsIElDRV9EQkdfUFRQLCAi
RmFpbGVkIHRvIHByZXBhcmUgUEhZIHRpbWVyIGFkanVzdG1lbnQgdXNpbmcgbG93IGxhdGVuY3kg
aW50ZXJmYWNlXG4iKTsNCj4gPiAtCQlzcGluX3VubG9ja19pcnEoJnBhcmFtcy0+YXRxYmFsX3dx
LmxvY2spOw0KPiA+IC0JCXJldHVybiBlcnI7DQo+ID4gLQl9DQo+ID4gLQ0KPiA+ICAgCXNwaW5f
dW5sb2NrX2lycSgmcGFyYW1zLT5hdHFiYWxfd3EubG9jayk7DQo+ID4NCj4gPiAtCXJldHVybiAw
Ow0KPiA+ICsJaWYgKGVycikNCj4gPiArCQlpY2VfZGVidWcoaHcsIElDRV9EQkdfUFRQLCAiRmFp
bGVkIHRvIHByZXBhcmUgUEhZIHRpbWVyIGFkanVzdG1lbnQgdXNpbmcgbG93IGxhdGVuY3kgaW50
ZXJmYWNlXG4iKTsNCj4gPiArDQo+ID4gKwlyZXR1cm4gZXJyOw0KPiANCj4gIEZyb20gU2FzaGlr
bzoNCj4gDQo+IElmIHJlYWRfcG9sbF90aW1lb3V0X2F0b21pYygpIHRpbWVzIG91dCwgdGhlIFJF
R19MTF9QUk9YWV9IX0VYRUMgYml0DQo+IHJlbWFpbnMgc2V0LCBtZWFuaW5nIHRoZSBjb21tYW5k
IGlzIHN0aWxsIHBlbmRpbmcgaW4gdGhlIGZpcm13YXJlIHF1ZXVlLg0KPiANCj4gU2luY2UgdGhl
IGNvbW1pdCBtZXNzYWdlIG5vdGVzIHRoZSBmaXJtd2FyZSBtYXkganVzdCBiZSBkZWxheWVkIHJh
dGhlcg0KPiB0aGFuIGZhaWxlZCwgd2lsbCB0aGUgZmlybXdhcmUgZXZlbnR1YWxseSBwcm9jZXNz
IHRoaXMgcGVuZGluZyBjb21tYW5kDQo+IGFuZCBvdmVyd3JpdGUgdGhlIHNoYWRvdyByZWdpc3Rl
cnM/DQo+IA0KPiBJZiB0aGUgZGVsYXllZCBmaXJtd2FyZSBleGVjdXRpb24gY29tcGxldGVzIGFm
dGVyIHRoZSBTQlEgZmFsbGJhY2sgaGFzDQo+IGFscmVhZHkgYXBwbGllZCB0aGUgdXBkYXRlLCBj
b3VsZCB0aGlzIHJlZ3Jlc3Npb24gY2F1c2Ugc2lsZW50IFBUUCBjbG9jaw0KPiBjb3JydXB0aW9u
IG9uIGEgc3Vic2VxdWVudCBzeW5jaHJvbml6YXRpb24/DQo+IA0KDQpIaSBUb255LCB0aGFua3Mg
Zm9yIHJldmlldyENCkJvdGggTEwgYW5kIFNCUSBwYXRocyB3cml0ZSB0aGUgc2FtZSBpbmN2YWwv
YWRqIHZhbHVlIHRvIHRoZSBQSFkgc2hhZG93IHJlZ2lzdGVycy4NCkhvdyBJIHNlZSBpdCBpcyB0
aGF0IGV2ZW4gaWYgdGhpcyBjYXNlIGhhcHBlbnMgLCBhbmQgRlcgZXZlbnR1YWxseSBwcm9jZXNz
ZXMgdGhlIHRpbWVkLW91dCBMTCBjb21tYW5kLA0KaXQgd3JpdGVzIHRoZSBzYW1lIHZhbHVlIHRo
YXQgU0JRIGFscmVhZHkgd3JvdGUgc28gbm8gY29ycnVwdGlvbiB0aGVyZS4NCg0KPiA+IEBAIC00
ODkwLDggKzQ4ODksMTMgQEAgc3RhdGljIGludCBpY2VfcHRwX3ByZXBfcGh5X2luY3ZhbF9lODEw
KHN0cnVjdCBpY2VfaHcgKmh3LCB1NjQgaW5jdmFsKQ0KPiA+ICAgCXU4IHRtcl9pZHg7DQo+ID4g
ICAJaW50IGVycjsNCj4gPg0KPiA+IC0JaWYgKGh3LT5kZXZfY2Fwcy50c19kZXZfaW5mby5sbF9w
aHlfdG1yX3VwZGF0ZSkNCj4gPiAtCQlyZXR1cm4gaWNlX3B0cF9wcmVwX3BoeV9pbmN2YWxfbGxf
ZTgxMChodywgaW5jdmFsKTsNCj4gPiArCWlmIChody0+ZGV2X2NhcHMudHNfZGV2X2luZm8ubGxf
cGh5X3Rtcl91cGRhdGUpIHsNCj4gPiArCQllcnIgPSBpY2VfcHRwX3ByZXBfcGh5X2luY3ZhbF9s
bF9lODEwKGh3LCBpbmN2YWwpOw0KPiA+ICsJCWlmICghZXJyKQ0KPiA+ICsJCQlyZXR1cm4gMDsN
Cj4gDQo+IExvb2tpbmcgYXQgaWNlX3B0cF9wcmVwX3BoeV9hZGpfbGxfZTgxMCgpLCBpdCBjYW4g
cmV0dXJuIC1FUkVTVEFSVFNZUyBpZg0KPiB0aGUgd2FpdF9ldmVudF9pbnRlcnJ1cHRpYmxlX2xv
Y2tlZF9pcnEoKSBpcyBpbnRlcnJ1cHRlZCBieSBhIHNpZ25hbC4NCj4gDQo+IERvZXMgdGhpcyB1
bmNvbmRpdGlvbmFsIGZhbGxiYWNrIGNhdGNoIHRoZSAtRVJFU1RBUlRTWVMgcmV0dXJuIHZhbHVl
IGFuZA0KPiBpbmFkdmVydGVudGx5IGNvbnRpbnVlIHdpdGggdGhlIGJsb2NraW5nIFNCUSBwYXRo
LCByYXRoZXIgdGhhbg0KPiBwcm9wYWdhdGluZyB0aGUgc2lnbmFsIGludGVycnVwdGlvbiB0byB1
c2Vyc3BhY2U/DQo+IA0KPiBTaG91bGQgdGhpcyBmYWxsYmFjayBvbmx5IGJlIHRyaWdnZXJlZCB3
aGVuIGVyciBpcyAtRVRJTUVET1VUPw0KPiANCg0KSSBhZ3JlZSwgbGV0IG1lIHNlbmQgdjINCkFn
YWluLCB0aGFua3MgZm9yIHJldmlldyDwn5iKDQoNCj4gPiArCQlpY2VfZGVidWcoaHcsIElDRV9E
QkdfUFRQLCAiTEwgaW5jdmFsIGZhaWxlZCAoJWQpLCBmYWxsaW5nIGJhY2sgdG8gU0JRXG4iLA0K
PiA+ICsJCQkgIGVycik7DQo+ID4gKwl9DQo+ID4NCj4gPiAgIAl0bXJfaWR4ID0gaHctPmZ1bmNf
Y2Fwcy50c19mdW5jX2luZm8udG1yX2luZGV4X293bmVkOw0KPiA+ICAgCWxvdyA9IGxvd2VyXzMy
X2JpdHMoaW5jdmFsKTsNCj4gPg0KPiA+IGJhc2UtY29tbWl0OiA4MGI0N2U4OGY3ZWFkMDBiMDc5
NWU5ZjI4MzNmMWQwY2FmZTExZDkwDQoNCg==
