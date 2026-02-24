Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SAwYJa/tnGkKMQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 01:15:43 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF91F1802C0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 01:15:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6F4160AB6;
	Tue, 24 Feb 2026 00:15:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KqTSqphE8YkQ; Tue, 24 Feb 2026 00:15:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E90260AC5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771892140;
	bh=MEbQE1FI4EpcE0+EPTdvrDbdALJb7cpHWyDt2fUhlNQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Iz8Ou0ctBsbwTJ6ytFha9imYqbLtdWmvlIBCdwe9ZWxaqwTrc7aQFzIZWn3hgqGiA
	 6P0pus/bK2EgPo2IE33li0cZplSjpckS/PUUujbZeQk6DBAwFQgZmU6ILNV0Jzn8qE
	 WglMHa83R2ZLNRACDDbdJs8cWkACjMA4FAgcO4bTVSHVOskSlRYAxagKWdVY9FY6/M
	 L785da1/aQAluSEI3S25QKe9vFW+O4zzSrRFsLgxrPdwbb64qsr6mKYFuz/NcJbfWP
	 JLu5h7ye7Cjf8/3but4Rd6MAgzGxnMGg5dcAibsPRaa+9xiKPbXRoJoDY6O6HD4lEF
	 R2HHlVGStUE+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E90260AC5;
	Tue, 24 Feb 2026 00:15:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 29C28237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 00:15:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1B12A4045A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 00:15:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Eg7qRDmMvtng for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 00:15:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 64A5C4035B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 64A5C4035B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 64A5C4035B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 00:15:37 +0000 (UTC)
X-CSE-ConnectionGUID: Awpj2rqORxC7FFFu1MldQw==
X-CSE-MsgGUID: CMbI9X4NRAeMPESxQ+zSAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="73007224"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="73007224"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 16:15:37 -0800
X-CSE-ConnectionGUID: ymsqVFy3QQ6mhwoDrGeazg==
X-CSE-MsgGUID: BCrTyJXQRTONrJ13ey6lWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="214589384"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 16:15:36 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 16:15:36 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 16:15:36 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.4) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 16:15:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IO3UmJbm2a2HpwT0srnnQCRPcBltcnRScEI7JnGXqLZax+RPZk8qeMkXzqzD3XiUNFAsp7uTQJLRVI24Ln3HzTw//WHRgcV6dxrFPYzDDaAVSwJbzuY2BhVkmkbSF9Dv1JkVDHd3Fp+bvZ6m0hJ5g4hJRRLHmvvEfT+TQm+LIFmLGGOWNLD8T3YybHjSpBCuKEp5euE8UMKa/+HtZ/2IuxELQt4B2FnSR4Gp5jEv5dVk8TRqlxAvk8QivsAEU5vgCIfUV7Az4R1QYYtNgVMlifNFiaN2MSckWgVKm6w/lqZ6TCkFyZKWJliXcVAvr3HSPJ15hm2Dwe7695fro278eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MEbQE1FI4EpcE0+EPTdvrDbdALJb7cpHWyDt2fUhlNQ=;
 b=rhlNmm1yFPtm1pg02XKhGymUjo5AGZiXBfGMW+DM39NmgGRkylFpX3tY9IL4du+8JV0RHP3yTqIRyDICvy27ciWGp/ov98MxfOEvtbNZlyC235RBTAb8PtYmK4GlW99qGoCtN5Alb+fN63YqHbBdktcs1uvV7JP0Mwjx4dVXvDaIJ+w1bbEhuW3hBjuCLha9pCHsukq/DwHprPL36LDQQ2BcrpS1L2hlz8x7y9jSwMmLttWmduORs8aExnFDiuNyE3YlRa4NvcogMrxmP0v3EwlWa4udrRr6GLmGrXm/Udh2fFV3IQoOLnTtHMKlC4gMoBszxoksdiXpwBou0IG/Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 CY8PR11MB7395.namprd11.prod.outlook.com (2603:10b6:930:86::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.21; Tue, 24 Feb 2026 00:15:29 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 00:15:29 +0000
Message-ID: <0cc101d5-f299-4aac-a391-a32a247549f4@intel.com>
Date: Mon, 23 Feb 2026 16:15:27 -0800
User-Agent: Mozilla Thunderbird
To: <netdev@vger.kernel.org>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, Anthony Nguyen
 <anthony.l.nguyen@intel.com>
CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
References: <20260223-jk-improve-fw-update-activate-message-v1-1-ce2b4abcf79f@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260223-jk-improve-fw-update-activate-message-v1-1-ce2b4abcf79f@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P221CA0005.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::10) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|CY8PR11MB7395:EE_
X-MS-Office365-Filtering-Correlation-Id: aa57352b-91c1-4ae8-03f5-08de7339d112
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZHhPS2ZFbDFQVThPZGFQSVkvZUhPZHpTdTFDVUsrR0IrZUJYeXRMRzZTdytX?=
 =?utf-8?B?blhSOW9XZXNFY0tvWEF4RitkTmFyYjlvYlozb0tRbmRQN2gzN2ZzazRncUM0?=
 =?utf-8?B?aW8xbHRRSXpNU3IzN1YyenQvN2dyK29DMWwxdGFSYmlxTEJSYWp5dlJ4YVE4?=
 =?utf-8?B?SmxqSUpOUXZwODJnS0N0eGJlNGlQL1oxWkl4OENtL05saGpBUi9neVN3dEpn?=
 =?utf-8?B?QlJrTXBjTUx0WVN4a21EWVpFRXZsaG1KKzdCb0Z5WitWbmxJV3ZrWmY4cmg5?=
 =?utf-8?B?QmQvdVlOc2REWlV1YWFhSkM2d2t1YjMrREUxaGNTMUdCK21hN1ErR3FCNEpG?=
 =?utf-8?B?VmduTEZiMk1NaFdMVzIrb3ZINElSQXA2SFpaUy9mM1lneitvSWVTckhQYmZq?=
 =?utf-8?B?Tk80d2Uwb0MxMGI2UGhKUkVWYU91aG1oVG9YUEVvbzhCZE5LYUFmSzhKWm9F?=
 =?utf-8?B?dlZ0aGFHckhmdkhwV3Q4Z2poRGxmZkZFbjhMaXQvZ3J5YllJdlVsaEVJeTJB?=
 =?utf-8?B?UWVMYmNsNHY4dGd5b2ZMWDd6VlRTR3Vrc3ZGRVJoTC9SWFJQSC83NU9Ja1M2?=
 =?utf-8?B?RVJCNGduMHVTRGlLOWZiR2FHelJwVFNQNStZQ3NjYmE1ZXNmb1BrM0c2Wm1y?=
 =?utf-8?B?TGxsWGpVdEF0TUpZTXdFQ1o2Ynk1UmR0UmJKWVVwMGg2MnRMNjVVNmdlWUR0?=
 =?utf-8?B?QXpwVEV6bjlhVVR0a2loMmwwT0MyUEFlR2h3L1Yrak55ZnZtOVl6dVVEVWtL?=
 =?utf-8?B?SVBkNU9GZys1clhUMzZxWWVEUklLZXBrMHd4Z0RUV2xUM0ZqZWlTS25tbm1s?=
 =?utf-8?B?UWRNVkgrTktxM1JGQTdqNm02VDc2S3padVdLTkdqLzZvMzVOQkdGTkVYOGRh?=
 =?utf-8?B?NlZzQmlHL2lueWh0Z2J1T2ppbGVUcUtkcStXVkd2RGR6R29yTVBOeFJCL3JI?=
 =?utf-8?B?bTdlNFdUR0hGTUE3bk9QOXIxa1RYaDFNQnhKdW5tSkRoQnNzaG5uWkJRZUZL?=
 =?utf-8?B?eU93VVRDZnVJenBMRExXanh4b2x2TXZtbDhxS0pMU0g2djhMUUJqSEdpMjNm?=
 =?utf-8?B?UDFVc0xWSUhLYWNJek9STGExcGg4TEUzcGxrWWdlVUMvNW02TVhaUVBiQWNJ?=
 =?utf-8?B?Y3gvaUcrY0lMTVBMQlBhUUxxdlJ4QnFBQ3Jsa1hnbS8zTGZMcDBaMXN4Q0xy?=
 =?utf-8?B?UkxQKzFIWE1jaVpYSm9yL1JuS1BpTHUyYURjRzR0VlpJbXNYdENXK2ovd1JO?=
 =?utf-8?B?em1tUTEzajNIdUoxcHlmdmtFa0Fia0o2MndJT1ZnUHVJbmNFcGxDWjgxR0cw?=
 =?utf-8?B?TlZxNXFlWFFIb1dLSExzbjN6K0E5QlRkUlFkOU1hZWtvYSt6RVdvQXdYQ2or?=
 =?utf-8?B?Rnc3Y3ExdnJkVHVHd2pkQUR6UEkyVlBKazdaeWtKdjBjMkRVYkhna1RYWmRk?=
 =?utf-8?B?Y3IrOVpsdThTc0JFQWtJaGw1Y0UvTnREc05HTDVRMU42YzF2TDBYWk9kVkll?=
 =?utf-8?B?cUdQRnBieVVnbFRtcUZoQWYwczFhVG96bzBxNHBDTW14WWhhY1FMVVN1WVZ1?=
 =?utf-8?B?VnRyUjZKbXMwMGUrMEEyWEpHdzZrQUFGZGpxenNaZURmekZhUDFvdVM5US9D?=
 =?utf-8?B?S1FCRFArYkxTMDR4T05yWGNYQjZPTWxZSWZHZWFYWlo3dVpTUE42cUhCbWFj?=
 =?utf-8?B?eWlQMktjTEJheVBYUHU5ZHV4Y2EyRDZEc1hBdHFNWVpzUFJnSEdRV2xDV0RV?=
 =?utf-8?B?TU1TbjRxU1FRTXV1TnVoV0RrL2xFbU5IUXZrRzY2bHJsUmc2TGNJWDJVdlJZ?=
 =?utf-8?B?dkdwdm4vNmJHdm9ISVZYZXFlbHJQa2EvYWs1aGU4UUJnbWZ6T1gvaE5MdUh1?=
 =?utf-8?B?Wkl0dms1TzFLa0RCdDVGWkZqMlVmT0NyUjdka3B3Nm9RbVdOVE83TzBQejZB?=
 =?utf-8?B?WmlnaG1mZXo2UjErY0pUV0RLQ2RrT3MvRHh5emVnVlBsWEhHa242K0N1Q2k3?=
 =?utf-8?B?cEFmQUJ3ODJvWFQyY1JzZmdjT0p1KzZFamFxK0phZExSQ2pDbisvNXhaN2xw?=
 =?utf-8?B?QURMeEtPUGNmdnFGT1dRT0dSOHcrNVFPYzhCM0RITGZHR1FrdUpLbjJGQXdj?=
 =?utf-8?Q?EIGA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S3NYcnNPYTUrOUpFeEFRcDBXTGVXRTdZbGwzbGtjQTkzOFhWTURxd0dNKzIz?=
 =?utf-8?B?Q2NIUUhkVENDWWFaYU5VRzZiblk1eDRhN0taQVBHK0pJR1ZuanJRZWZTMGdz?=
 =?utf-8?B?ZVZldlpZaUh6b3kzRFMrbHdveXpIcGpWbEtubGVFMklKam02SzdCUm9hNDVN?=
 =?utf-8?B?RkZEdG9PY1NaOTQxc2h2QkJ3LzF0M3NMVzZOdDBjYS94eFQzSTRMRmxxVzJE?=
 =?utf-8?B?YlBrTU45T0J5UVFQTVVyN2ZLOHlrODBBSjlJVU5GaG13djY3aWJabDJWeXd2?=
 =?utf-8?B?V3dlRW91WkVMbXN6bXUzQWxLRnR5TzloNUhjZzcvYVRwbklSaTYxbkVBdGI1?=
 =?utf-8?B?R25NVWJjb1RKUzA5cW9iVFdYQWxKZ3dlWlk3SHJPcFlHc2JETUVPa1pzOTNZ?=
 =?utf-8?B?UldCRlpXdmNWU2t3OVFROVh6V1dIN2dITWFPcXowZzdHVjlvSG1KYTJ6Wnps?=
 =?utf-8?B?cjltcCtUVXdKQWJXMTc5cFNBejlXNDVsUE90ZW5lREdLbFEvN0g0VTNsU0RM?=
 =?utf-8?B?eVk5MGlFcVdBUVRzNXgwRXhGczlMd1Z0K0JRYmF1MXVBK2cvMHBoaFp1cGln?=
 =?utf-8?B?b09lUHB5ajMwbElaWVpCQ3lLNGY5dlN1REFSL096cnR2V1gveEZUZ2pkRFY1?=
 =?utf-8?B?dG1QUzY5UHNpeVZNOXE2MDRZWUtvUzIzQ01qclhnTDJ1TEpVWFFCVTBVb0l5?=
 =?utf-8?B?Mk90NXdZOXZpdFB5cmIyYi96bWluc3hzTWI1L1lBM2ZnSVZvakppVlE2cFM4?=
 =?utf-8?B?NmM4OWhnMmdkMzhYMDVld1ZZb2lJcjhuR0R3eHplUlNaelRFSFBNT3F0VzA3?=
 =?utf-8?B?bXd1d09QTmF6QmZINnJnaG04TjVIcnRWZUVjWEM1TWoyaGNTM0FmOHp1eG1H?=
 =?utf-8?B?U2h0bjdwbXJxQ0pET1lyejh1bXlnb3I1UXpuazB5SzI3ZHJDRGh6TzFveXpz?=
 =?utf-8?B?MDZ5UHNJanVYL0tjRlpHMGlCK2ZacmVaa3VtZlpFOUlReXRxN3JpVENyWnha?=
 =?utf-8?B?UC9mUmdnMCtZZmlYZGdUalBEQUtPb3k0MWxmVnJqVmE2MVpxSU45R25lQ0gz?=
 =?utf-8?B?OVM2MnRBdi9MMDE3clFzSWFlQlFReUlrYW9wUXhDbGhLYTcxaFVaYnV2LzlR?=
 =?utf-8?B?cFhoTWVidy9HaVhLeG5YalpQOTBvOWNLRkUrNzhWeS9UR3g3d0d2SlNyMVE4?=
 =?utf-8?B?ejBhc2tGOGRGdytHS2ZMeWVvOFIvVGJZS2czVndzMDZVaFpPOXFsSkxCbDUr?=
 =?utf-8?B?YmZ4K3Q0VWVBQlh2OVA0M1F2c3hrS0VRWFkzbGkxRC9zSjNtTW5JcGNnZndn?=
 =?utf-8?B?THY3TkdkVFhuR2piUDEvaEsvbkZDb2ZtYmJGR1pCcFJSTW9jdFVQakhYMjBL?=
 =?utf-8?B?ZWY4R1ROdjBIZm9NZytIeFJjeUluMTFyV3R5bkFNTmlzRXhtQi9odW9zYkMw?=
 =?utf-8?B?Q2JmdXFSOUlsQVVZYXFtdlplZnl4N0hmbHU0blY2Rkw3eDVsNSs2UmpBVVJX?=
 =?utf-8?B?WTdxYjhPSGpFcUxRdGxaWW0vOGROR0V4VS9oOTFmZXdoQVRxanpTVVBBTnpT?=
 =?utf-8?B?RzJFV25Nbk1hRkJkSytpMDd6T2xvajB2RmtXVTBUeE8xTGJwbXZCKzhqMXJQ?=
 =?utf-8?B?bmUxWEp5RzNXa3pNekdQTzNFU1plUXo5QmZJMlBPb2xoSHRuOEZRcmhZTmNi?=
 =?utf-8?B?Y3U2bWVEMXhEaU9uZlZGUnhCN0ZzRThZbkUxVWVtejIwdUNiWjBpVXo0ejlz?=
 =?utf-8?B?OWk3WGk3bWpOVzZJWG9PRHdITWxza1RlNnp5bGFyS1AwcnNLZkViV25nbGJV?=
 =?utf-8?B?dUszNWdlYm1KaGxlVFdGNzN1UzZjM3dUb1lFVFo0SC9WYzJxZ2R3dEovYUlS?=
 =?utf-8?B?S2NNaUV2MkE2ZC9lMkZaZUZmam80dVR1dVhPNXpmcjhkS0tGQldYdmJWR1pn?=
 =?utf-8?B?Wlp3T01LYlZCb1ZaQ1VtQ3ZSdnBrVG5NL3ZEUHJpbDV5QVo4TFl4cEt2endt?=
 =?utf-8?B?VDg4Y0s5WlRiWFBrUkdab3hTOTFvOFNXSjcxa1J2ZDE3YzRuTUM2T3Rqa3JN?=
 =?utf-8?B?dDhsOFp2RU9qTHN4MjF5eDgrNTNMYmtyVWRWTWhWUytjd1FhVVRsbDVVYnBN?=
 =?utf-8?B?eWNDT2t6MDFtY1NweHpWZmIrUm1QUk9MMUljTTR6WGY4UkVDZmtOK0FZNFN3?=
 =?utf-8?B?ZWlDaTFHN0pjSW9ZZk43QS94U0l3Q1l1NjNDV2piTXlKQWgvQUVQR2VJZFg1?=
 =?utf-8?B?b0tEZHNMLy93MVdGR1M3Y1NiMEdIYjE1emlLMzhLT3hISi9STS9Wd1pLd0Uy?=
 =?utf-8?B?NGpDRlZpa1BMQkY2ajBKeDB4Z0o4U1llVFBiY2c5NkVabUl5Q3hkUT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aa57352b-91c1-4ae8-03f5-08de7339d112
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 00:15:29.3997 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eRriQYgBBdxQjW9tjMczp8xVPqxxvm56or/CHk8QR2Dj4t/bCJ1Ok9u+YMpVu8tRyEA5mEnoKQm3ololB3LfSOPwtsO2+WgePDm90QH1pIw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7395
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771892137; x=1803428137;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3Q5KMM+feR6HJ5rfZCga6CK+fR+UnS+Bhlp4Nt+istg=;
 b=U0IcsF62vewxcnBWqbjd802FR7xAwVN2iEw08Dk107X78z+KDXw3izhV
 sTu0+1h31SvobncrBrUTwbi5lkizn/9sne5h+YASDMPNCkBqQCb+HrkkM
 V5zneY35SzpvoC/ugP7zgV/o74yYxeD1pYFpY0h9z4qmyyiwaNdT4TOGY
 Mg/q1E95OoAvUtpDg5sMx0Gb0ov2+p5TqeANdM1osdR6PqfOTf4HHLOGc
 OibPHkmFdOoa86i3b6wh7pOahqsRhYUDD4HfR72cCUba1OpMeAKZYk67h
 mJLexjRWw1AzpiRsg7wUQPq3gon66an4vZuNnVMKnHLWWg/kqq4HI9Tv+
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=U0IcsF62
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: mention fw_activate action along
 with devlink reload
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: DF91F1802C0
X-Rspamd-Action: no action



On 2/23/2026 4:12 PM, Jacob Keller wrote:
> The ice driver reports a helpful status message when updating firmware
> indicating what action is necessary to enable the new firmware. This is
> done because some updates require power cycling or rebooting the machine
> but some can be activated via devlink.
> 
> The ice driver only supports activating firmware with the specific action
> of "fw_activate" a bare "devlink dev reload" will *not* update the
> firmware, and will only perform driver reinitialization.
> 
> Update the status message to explicitly reflect that the reload must use
> the fw_activate action.
> 
> I considered modifying the text to spell out the full command, but felt
> that was both overkill and something that would belong better as part of
> the user space program and not hard coded into the kernel driver output.
> 
This should target the iwl-next tree, I forgot to add that to the 
subject and my eyes missed it in the double check.

Thanks,
Jake
