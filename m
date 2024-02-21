Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 146E785D7C0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Feb 2024 13:16:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A06E60E5A;
	Wed, 21 Feb 2024 12:16:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I5EwrdTafIAw; Wed, 21 Feb 2024 12:16:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 506F960E74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708517763;
	bh=KAp0PNDNhvqBEmSPDCHgGRqJavJFVcdjPvtp1hwmygw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cMwNl+YuxkkEnKlLzaDtKTFXGLXVxgTO4Y8fhoZXHVP99w8ep1qUbp7Uf4reJeRDY
	 q+h2JpoNU2T1AbNVrJP7mw0RmsvH8Wus/nvGgyJJJu2iHT9tZXEsuasx6zpnSQOgPw
	 I9PVt77wYs+DRe+m+Y9WC3f1Hdp9CK4LBktLfcib6e7MnwrzVy9btAqIJ66wECD4Fy
	 qEpeQJoFyoE6jxC/3Yugg6ZN/Pp4jmvytkscd28hU8zpebB8IHOpEX6RI46wPjLmjZ
	 0zzLax15jYWwuqfzhQOZdarAxhdrq9Ioxn1DcN4A71Jo677/FDi1q6HeoRyJCp5huP
	 Pec1XQ1W8R1zQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 506F960E74;
	Wed, 21 Feb 2024 12:16:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AAADE1BF484
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 12:16:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A3B7460DFF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 12:16:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DjbkSd34K4jz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Feb 2024 12:16:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BE64160DFA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE64160DFA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE64160DFA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 12:15:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="6488261"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="6488261"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 04:15:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="9810870"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Feb 2024 04:15:58 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 21 Feb 2024 04:15:57 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 21 Feb 2024 04:15:57 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 21 Feb 2024 04:15:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RzPIortC5xWbX1mbwS1XsszmJ2S41ArmrBjdF4Dt7A+pryD2IjWR5619lefAvbgZoDPq8SvNk7Gk+tDscsxovOAKadMiWUYPticygp7AdlmIO6aNh5zFkD/c0G5Q7MGwvAHgQVyg75sLFMntlTtAhX3toGgqAVPZuOz/oe+zTSuW19mI8OoO7rH5QKAhoCZbzBjhsuc60fHasgF1aqc6ivIAX4sanSMfHche0UpcA4gC7QffLlEMCeKbfeo4a9t6/0aIUPy+scfxpf6r5fVwETrg1rivSrekh80C/3tblKu/jYy687Y0PaD5V0B2b1iPrcRgmlj1SJvLX6P/TdSrmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KAp0PNDNhvqBEmSPDCHgGRqJavJFVcdjPvtp1hwmygw=;
 b=D58flpgBsUsotzOae1nf3aDQQ5rxCnb9FS4qyMZG/q04Blbm+hpwOZk2i7LADMZIyAYajwW5A4jj4bjVhvwySr8/aOsSxN4EZTwKAeXZCDdC0ZZOClhQLx4784X5NqBeCnp7rQeHfXMMIzk8I2qW355yDozMn+DAhnyUJjY2EvSiFqsWptSjeWAMZ2hTxfHGLDKxUIs+CwL7P51C/n9NbdVLrOpF9foWBNTuFvH33f21dyVIMfr3c2OyoqJnzKjfhTCv2sCj/G2MPW8QAcyvyJwWaCgYIBD9Yu+Ym3R0KJmwbs2gRWT30jdZaV7j9si0OBtvmsWSYT4B263dyG/zsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH7PR11MB8551.namprd11.prod.outlook.com (2603:10b6:510:30d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Wed, 21 Feb
 2024 12:15:50 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::93d9:a6b2:cf4c:9dd2]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::93d9:a6b2:cf4c:9dd2%5]) with mapi id 15.20.7292.036; Wed, 21 Feb 2024
 12:15:50 +0000
Message-ID: <369a78cd-a8ed-49ea-9f89-20fea77cc922@intel.com>
Date: Wed, 21 Feb 2024 13:15:46 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alan Brady <alan.brady@intel.com>
References: <20240221004949.2561972-1-alan.brady@intel.com>
 <20240221004949.2561972-2-alan.brady@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20240221004949.2561972-2-alan.brady@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0090.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cd::16) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH7PR11MB8551:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e46cc48-573e-4e42-ad70-08dc32d6d77b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ATgebsM14Qq2au2fvvFgm1/wr9CERwCTkSOZYRnDd/XhwXg+Eu/98yBqYAFhi0gh+aHetoJzzkufSjfsOp46pbw+Ka+KjhHN62jgBI9IZqSMWDECuVNGOBRbi8MYZjZdu/eU/FlJPbvEf3mxDOA/mmxp+pwcot2CKbEELn1tl0944gNotNxBsEUFS5DPl3DJaogAw3RRh6I7EoNpIE/MLhRag3UJsjWtpDn760tbpHm6l9YMOrOFNq4tggwyJ3bc0NhaFBbX0q+VB+x8JUiTlfOUHRpGoIm0GQ4zogaH3MuqU2BoAjHp+p1jZLL+lSyLUZAVTDIHOoQrhxS1Bn4YazxG3Q4lRQtqAo7WylCN1PIH5nhPoD44BHON2efQMiLaZa3cBoqdNJ8ORdS7OZInGreEdL7zPPCvWkRLLtUBOZ7EE5486O9O7RB+dY2w3IpEP6DCn9ktRjitnXm5uwVEAD/QCyM8+hgFdGFa2iVVIcpuzr4C6PZ631NJIgff2JNhfzFQhPqlFa6UVHNGbTQB34udQx0hJ/nGyAZthP7tTAs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QTBTaXJYTDFiVWs3SmNlWUMyblR3MG8vSVpRbEFPNlZKRkVvMU5hQWswUU5D?=
 =?utf-8?B?UGpSSnpXazhqVHhuSlc0YWRrQStNMmxvVFBZNzhCaU1zTTFpYzVFQnlINU81?=
 =?utf-8?B?eDRqM21LSlBIMUVSZW9sWWR6TkVKc1oyOHJXbGhHaG9LLy9jVFZIK2NWSk9a?=
 =?utf-8?B?bGFFalU5c3MxRGx1SUx2OFdFVytkVlFWRXA5OExaSnpJSzdBY3Q3d1llUVpH?=
 =?utf-8?B?aERDSjVzL2JRbW5YTjBEZFA3OVBBZjBpbThWS1RnZUVPQ1E4YUdBeXZTTXdy?=
 =?utf-8?B?Smp4TDRpT1JKRlpnQjRLQm1idDlhek9uOE5uZjRoK09wQ09XWDdubVZUM0gv?=
 =?utf-8?B?UG1BQlU5SU00RlJ6UjM0T3ZPZEh5eHpWNldPTUo0NStOSHZwSUtOUXgvMXVO?=
 =?utf-8?B?WnBMWEMrQUt5TmU5VTJZemNRMCtFamg5MFZpSXg0NUk1b0toSDIwNTVSN2pu?=
 =?utf-8?B?cVI2aWNIUy96OTNjYmJ5SVk4MUJLT0NOOW5TTHp4dDRaRCt2RSs0YzZNK2dk?=
 =?utf-8?B?WG8vRytVM1FyQ2NONkVXVm9DbGVWakRNcncxdkkyb3NkSGNoaDdoRE5ISGZK?=
 =?utf-8?B?MWVTSjlOaUo3cml2Nzd3WitFSUN0VDlSS1BlRnBPNTZObllqU1J3REd1UHZV?=
 =?utf-8?B?Y0RTQklMZFhTeDhKRzNUdkJhSU9DZDVrYm5Hb3dvLzROV2tHM1REc01iS2Ev?=
 =?utf-8?B?d1JjK3lNMEtOc1hCV3AxbDlVSTNEb1pPN1cxcFF1TEYzcC9PZHBKOWVTYUh4?=
 =?utf-8?B?QVJxalVxaHk2MCtyS2JzNCsyUVZBa1ByQ2k5SHlzdytDdnM4U3Y2enpyRmll?=
 =?utf-8?B?SklUZ3BWeTlJMjVCcjV0NUZXRVRxL3NlWHh6eUYrS2VndEFDc3hqK1dOMnd5?=
 =?utf-8?B?MDBtR0ZvUWRKRlA4emhJaStCZWpFc0xxbU1HRnA5UXl5K0J6QTRIZ1p0bnRV?=
 =?utf-8?B?M0JoV2RVZkFxYjJ2Y1labW53Z2lDYklEQ0NzbDZxSG1UUGtETDFvSWJIYURi?=
 =?utf-8?B?dkJLRHVVTVNMa1JaNXVVS3ZrWjRObUdZRkpXVm9GNWtBbjdSWHlaQzZxWllC?=
 =?utf-8?B?SG1XVVIyZFp4blNsak0vY2J0RC9rSVN4V2F3ZnhHcDlSa3huVnRySVpQOWl0?=
 =?utf-8?B?aUtvMWdvOWFmZnpLTEZYNU1aTU5ZTGNwanAzcklqNjZZUWROakRkbFhUenlM?=
 =?utf-8?B?UTNOYVJTb2ZWYW1jUWFQcllWeWVHYll6a3gzT1BDQ3lmNG90dFRFWjlHc0Va?=
 =?utf-8?B?RFhxL3F0YU42ejBYWWh4ank4dDJRUWtPdzNkYW8vWkUzaWVzTjFpb1Rnb04v?=
 =?utf-8?B?aXptUUFqdEorL3ROeGRaYTNRT280T3lmc1ZqQVlqOWYxMVBhL2tSdjdBdEdV?=
 =?utf-8?B?NDJFNW9kMVhzajIyRHowUEhEMzZSN3JCMHJVc0dsN0xScFFFY0R4bGU3bGlU?=
 =?utf-8?B?Zmg2Q2g3WUU5aXpCUkdiNTIyTTNmdHNRYllkNXdackI3ck90aEc4YXFhaG53?=
 =?utf-8?B?c1IyWEtqSmcrNU1rSUJPeVRWV0dPZW1GRmF4R1hqeFVBMnk1UzVaNUNYeUZ2?=
 =?utf-8?B?MXg1cVhUMi9kS01laW8wZVNRdVE3UVRhQWdxQmRVem0zcVF3Y3FJSnk2N2RT?=
 =?utf-8?B?dmhwa2dkN2ZWN09ONzdFMUs5K3pRYnhDMjRCa2xYVUw3Wno3bUdHa2JwRzNZ?=
 =?utf-8?B?Ny90bG9oc0R1a1FxdTNIZGYzdkpTVEdXL3BZOWMzcDI5UTBtQkd6SXViNkox?=
 =?utf-8?B?ZjZSWU13WVFNQjdHVGloNHlNTHY3bU1ZSFNwSlFBdXFjWlhkZ0NmZU8wMXNi?=
 =?utf-8?B?bHVUNk1DZzlFenJXK1hQQmMxcjRCRndvZzNwMjhOald3YUJPWHRNNzNSQk1x?=
 =?utf-8?B?OVMxdTVydXVzeDRGam5GQWlUdVVxMWsyc1NTem9NRHQvWGJEYTJDYkpMRnVT?=
 =?utf-8?B?cDBhejMrVG90Ujlmb0YvR2l1Sjl4NzEyWmczK0tEM3ZPZ0pUVG9TZWZsQW1F?=
 =?utf-8?B?KzZjcFJFdGFJUTBMa1FPdlNnV3gramZnbFQzY08yWmUwSFUrRzZja1hGaEpJ?=
 =?utf-8?B?RVExWWpRWDhJSWx3ait2MlArSm1Jd0ZVZFRwbWl6Znh5dU03cXcxWDBDYklr?=
 =?utf-8?B?Uk56MFh2azhIWCsxb010a0JzdTFsYVl2MEEzOUFERGhTZWZaM3EvZWFjOEln?=
 =?utf-8?B?K0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e46cc48-573e-4e42-ad70-08dc32d6d77b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2024 12:15:50.1793 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8deAcEPFCSogajTU8R3UBuNS5QVGJLxDpv9sgND6Bj1Szeh6tp4SiSkAUcvYkaBI8EHV3UbSuJUMd0JQ5FZjQNETOreKg1k6zohINgHdeCA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8551
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708517760; x=1740053760;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oPdzTZ97ugh5ivVIwAc1kTUBUp/kHdoUw8E71XJceoc=;
 b=mCliy514NkhKbxx/jev6CX15M3IdboLpREErTa9F84VXMhI3TnL8vyer
 b4o1XEKrcIdaoje9ylg7AyRhgOgk4VbbaSJ0eKlEMMaDD+cqn98h9Rkfw
 8wwPWDwRlKb92B5rIluJxV4PQdAP+KUG367/y741nvYzY5TYR2WlI6nEK
 GxJuhLpk3I0bU4XIO92xGsUyO3RkUyBgt9HGjdtT+DD4zqQFRmWGYBjG/
 e/NGJc6nyqq500azow2Vh/IgMqFdgSVuZqY9ZftqmeZEOVtMilEXlux13
 rLk72r6hF3oLP9ZfqV/7t/WZb4kNwWtw6bjTb18rRvX9tJ51HDfB6sU3n
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mCliy514
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 01/10 iwl-next] idpf: implement
 virtchnl transaction manager
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
Cc: netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>,
 intel-wired-lan@lists.osuosl.org, Igor Bagnucki <igor.bagnucki@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alan Brady <alan.brady@intel.com>
Date: Tue, 20 Feb 2024 16:49:40 -0800

> This starts refactoring how virtchnl messages are handled by adding a
> transaction manager (idpf_vc_xn_manager).

[...]

> +/**
> + * struct idpf_vc_xn_params - Parameters for executing transaction
> + * @send_buf: kvec for send buffer
> + * @recv_buf: kvec for recv buffer, may be NULL, must then have zero length
> + * @timeout_ms: timeout to wait for reply
> + * @async: send message asynchronously, will not wait on completion
> + * @async_handler: If sent asynchronously, optional callback handler. The user
> + *		   must be careful when using async handlers as the memory for
> + *		   the recv_buf _cannot_ be on stack if this is async.
> + * @vc_op: virtchnl op to send
> + */
> +struct idpf_vc_xn_params {
> +	struct kvec send_buf;
> +	struct kvec recv_buf;
> +	int timeout_ms;
> +	bool async;
> +	async_vc_cb async_handler;
> +	u32 vc_op;
> +};

Sorry for not noticing this before, but this struct can be local to
idpf_virtchnl.c.

> +
> +/**
> + * struct idpf_vc_xn_manager - Manager for tracking transactions
> + * @ring: backing and lookup for transactions
> + * @free_xn_bm: bitmap for free transactions
> + * @xn_bm_lock: make bitmap access synchronous where necessary
> + * @salt: used to make cookie unique every message
> + */

[...]

Thanks,
Olek
