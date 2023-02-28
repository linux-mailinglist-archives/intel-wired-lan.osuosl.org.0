Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 706DC6A5B9F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 16:22:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C0DD6115F;
	Tue, 28 Feb 2023 15:22:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C0DD6115F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677597771;
	bh=e3Xv4eoDfHa+sCzrJPiMXYkIRYtTBjNp4wNGfXwx9Ow=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W/0VcY6oIETLMoqS/pl8e18wYc/Ic2M144StSwu+tumnD5c+o1NBPoXgWpJa2utlA
	 cTypuMuOdIz/oE5l2v+lEKd3mKp7Z23IDyl/LgynpTeq4sVuk1/g723RRBsErTwFbM
	 xOrtnNcHHaw9NfU7L25jnvVwPS4zv/JDJ96z9wxutPi2cqHf+eyju+e9zcsMolHoFP
	 Q9SmXw1AfbBebq7PNpmD7LZwx5NaHhb0I7L2K+/of9ltmSVReREWE0ikE9i0ICXAR/
	 7KISlRuRqBz1w/AYVV5duuBPQv77lfvWb0gyhkX7ITlG2XxpCfDXSJmkbDPi/WnrPg
	 iDEr88GcfAbZQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C4RhRlFK_ESG; Tue, 28 Feb 2023 15:22:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1A0760A9B;
	Tue, 28 Feb 2023 15:22:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B1A0760A9B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 53A9A1BF59A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 15:22:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2A9AC40105
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 15:22:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A9AC40105
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mn45gnptFv86 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 15:22:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 48B4240BCB
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 48B4240BCB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 15:22:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="396727725"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="396727725"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 07:22:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="624059576"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="624059576"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 28 Feb 2023 07:22:41 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 28 Feb 2023 07:22:41 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 28 Feb 2023 07:22:41 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 28 Feb 2023 07:22:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=my0x/n8/Y8lkFxm/stzSgt98lNzZJwwlA19AuAWrpueHepHIHplSZf36dJYsuTlxOVB70HPs9AhF14oxyMSYChNhQavvYF3fN5fDJ/rCgb0mxxJTtzORxTbQJz4j082yqfo2W9ngIWJSd9+cHd1sL3AyeumQtbhkzvVK4RL56uDYYAHIXxmPGAQ2hI9Pfl9EbTSCS8j+VaQsxAu5lZonMvDf30mGSomdd53KL7zy40aBzrtT4dLdduvLbb6JTM+OQ9apEC45o4SxpJSmGGdWAYz3fiVE7bnh70Y7ocUFDf45w9AuXUap65og4lT5OkoyrCSTqMxiQ2ls3Q5QIgnQbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rwVO/hXilPlSWNDqAPQRY/8y7Wge/NXCG///9TVavYg=;
 b=CJADKp3Ir7w0RsozCyQeUvwhME/vhsZDoMXKNtqlw1yvDUpU+TbZWqIDVr483s+xfMyxB17uEjGk3PfvmeucxHeupTW96Yu+zHbBu8sziDd2T+/ZfP4ILsBzL2z2r5ntoTOnpL6eTK1s+RL/C8D2Pvuqc3CeXcoPr3cqgs6wzqu18KPO5/beoo0vvlsi2z+mrHV0O4yzdFUiHxyeDU9dt6AO+dxjFl6CqXCtTHKVkoUpEKtT0ymud9GUMUG6ndkiXO87NpW17aX20rI6XsLFKBUsGFaIf2sIDD0VVQZFw9PT8Ps5Ekwm2F6bjITjCiS7OjLJisfApF/2TcQ4MxLdzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SJ0PR11MB6696.namprd11.prod.outlook.com (2603:10b6:a03:44f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.30; Tue, 28 Feb
 2023 15:22:39 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::3ff6:ca60:f9fe:6934]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::3ff6:ca60:f9fe:6934%4]) with mapi id 15.20.6134.030; Tue, 28 Feb 2023
 15:22:39 +0000
Message-ID: <afebb832-6216-6410-3974-5388c3fe7201@intel.com>
Date: Tue, 28 Feb 2023 16:21:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20230228084915.2866564-1-kalyan.kodamagula@intel.com>
 <7d2b1ae3-2bec-1456-3df9-7fb04105c681@molgen.mpg.de>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <7d2b1ae3-2bec-1456-3df9-7fb04105c681@molgen.mpg.de>
X-ClientProxiedBy: FR2P281CA0140.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9e::8) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SJ0PR11MB6696:EE_
X-MS-Office365-Filtering-Correlation-Id: bfa7eb64-1a71-471f-7bd7-08db199fa0be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 48olpLv0qsjXD1zLsMmKCzjwIrkY1MMYfnfb2cD/lkBZClyPo0KoEeOzfsEUSDZaRG9d3OcJ9t2kTd+pwMXTrHJK6WW24J1Ko5yHjD/V3O6wtxOUDakhfRlO61iALgwXHdyS5Rcg0hL8qCvaqvi+4hDQER24wZW+exlOr6VPsxJqHM9FznpqZS5BbmOp433vM/L3EQdEK5CwpJp0AJM1GbXEujYMWzzxHrKkcv9VbWC4ZbhityhjVMViUVeGYbZlp9dJnaiHE3B1d6OcE8AhFuHk+9FqILN+MellG4vJEkSx7jPep+mNHw3WDmrsZG6WLJpEE+vNta0SCoEpNQwG2TzDtXta/dVRaLYFTwDcdxdQ802g/3wbGWAvkEP0j8xdLMojKMI8l3G/42xT7Nk6zIkwVL7thWfWv7bMSjfeDP9QCCxpY8qJHXY40Fnybqrc9Kf1Uceu/2j7p80rU1RVKwbiuALdMaggNFe8xOme49HXRzIpeu+AnDN/6jpQvfaU0nDCG0aN31ZVW0AUKwADVaWbCqKlBQ6Sivn7f/5RtkqItU+a0mXxAcONdbFQr2vJM/50BYzTZ77XqU3L6RDopsHk/QO9XD+E+4EIuyTzSQm5aXwcZamqLDHd+lA1bUxR6iGEkNLL1PE5U1yNeCGjNQbX/aBpLzHaoA36THytzdut53f5ycrmwPPWZ1HAnmD8NiocqhJ0T9fTjSfBWFW0BSwdzjQv7MMw1FxRRiN2XA8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(346002)(396003)(136003)(39860400002)(451199018)(38100700002)(82960400001)(31696002)(86362001)(36756003)(2906002)(66946007)(66556008)(66476007)(41300700001)(8676002)(6916009)(4326008)(5660300002)(8936002)(2616005)(6506007)(6512007)(26005)(186003)(83380400001)(54906003)(478600001)(316002)(107886003)(6666004)(6486002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MS9mY2FRTVZjSW90TVVIWllBNkZxQlNhTUMxSTRTMEJWcVdlQmRXbFRvK3NZ?=
 =?utf-8?B?azU3Zlhpa1pKdHhjcFhROHdHazluaUZuOHFZU0gwT3VtSkFNYjcxT3dQOTUr?=
 =?utf-8?B?WjU2WDVweHJnS1RhNEtoMlRYc1lmRDBCc2hpOWQ1akFUWnlMcU1VYmRFMnk2?=
 =?utf-8?B?bjd6K3dMMnB5eDduVU1RUFlMVExlLzl2UHRWdVhXVFcwYlA3ek0rWG16WG1w?=
 =?utf-8?B?NFZVcVVzNmEvREM5ZDVMUTI0QWhSaHA0dUtjdFBmWnFVRGlWWW1UZ1hFSi9F?=
 =?utf-8?B?d3JHbVJUYjB6SGpkUXI1S2NSaVZoQ0lsRVIrTnF1WjdmTDF2MkF1Q0RGN0o2?=
 =?utf-8?B?U2ZHejRiQjE0M0JZS2piVzBMdGZWZE1rMHZZWWNwZTF6b2U4Q3YvYU9WaXcr?=
 =?utf-8?B?VHVGUGhRZDFXTFNwTG1SZVNUNmJqUVlFUnVRMjIxblJzK0RGTjNmcE0zNFJF?=
 =?utf-8?B?cjAvdUpiMDh3V1lJTTAydnZUbTZiUDkxUFhhOVZRb3VtMFlwc2ZFdUNlQ0NR?=
 =?utf-8?B?c0dtbGcrdFZuY09yTnByTnByaXVQK0VhbmkrUEQvODVkN3NaZm9HNjFnMjl4?=
 =?utf-8?B?dWV4M2ZXUDhRemVwVlhmOFZiYVV1dnd1TG8zMDJESldGakMrVCtBTGxvRCti?=
 =?utf-8?B?M041eXBjcVlNT283N0tFdSthd1FEVklUUGFxWkZXcWZsRG5JekhLNjBDd2Fz?=
 =?utf-8?B?S3U3b3E2TmRlQW1pemNtcXZKSjFvVXJhTi8wZkZER3A4VDJ0cnMwTUVpRHB0?=
 =?utf-8?B?ZnNzeUNXd1g3MHJXSXJnbDUzUmhpZkNxMXhpTnhELzJMNlM1T2ttVGtRVzYx?=
 =?utf-8?B?UXNLL1pxWkgyTlp1dCs4VUcvaEFXcDVnWjhGbk9ZUjhtd2hiVEdIdE1hbkhL?=
 =?utf-8?B?eHY1WlVZQWRPZ3pvdmUrRW82Tk5XbTdCc3pCS2syUUk2ZzlYc204MXBDd3RC?=
 =?utf-8?B?OHRNMlBvSVZ3dUhaeEs1TjFvaGZlK1pUbFlzWFNnSG95NlFxazlOeFhEc0dE?=
 =?utf-8?B?V3k2Z2djbmJGdUY1RXUwTG5hS2VrV0NZY1JkZUhYME5MZ1BSTzA2STFRU2Zx?=
 =?utf-8?B?TitNMGFGUFQveDhHSHE4UnVkdGFqVUFHdXVuNGFGOHBvNytGU0M5VHpkTmd3?=
 =?utf-8?B?aW1udnF3OVZGUVBUdHVkQWxqdVFaOFBSclJuVjUrQWp2QUpHcGxoVzV0ZHlo?=
 =?utf-8?B?emVGeHZPeDJic1E3Nll6V3RZZFN1Q1Rra2tZZEhOczZnUUYrcTVoUVM4aS9E?=
 =?utf-8?B?bXFhQVJZKzZ3VnBBZjhRcGxzYlpROHZhZ3h2anliN0szeHRmWXQzTmFQcEc0?=
 =?utf-8?B?SVN1WXMzalZFa2VKOWFwbUlqNnY5STdOVy9BTXcwOWtTa2ZCbHNkNzRzOFFZ?=
 =?utf-8?B?ODFVMThRUjlHZEtBVnVkeU1oMmFBeFJTaHNjZkx2NXNvb1hMQlRDWllFQ0l6?=
 =?utf-8?B?Szl2Vk1Xazd3VDJwdFRHc1gxYzBoUHlsN3M3MXgxSDR1TDNwMTQxZ1ErbHlW?=
 =?utf-8?B?Q250QlJ4ZzUxQzFSZStpZVJBUG9xS1BhRENKZzBCcVZDdmkyWjJFWHhZZ1Vi?=
 =?utf-8?B?VWRHUHRXNTUvSnYvdktzT0dRTGJXMXJ4TWsxbGJBRmZDeVFKWGZnQ2Nic0Fv?=
 =?utf-8?B?akhQM1E3THRoWjJueERMN3J4dy8rd2gvSGVyN1ZxTHRZeXhpT2N3M0FOdlJB?=
 =?utf-8?B?MHBNbkJza0hLNjVUemlvTXlXaVNLZmxpUmZWbVdTQW1VZnpZZnlOT0JIQlB2?=
 =?utf-8?B?Q29kZ1hpVEhlYWlmWitWQzFKZ0wyNjlKM0N3V2F3SlVCd1JyYjdIMHVQUTRP?=
 =?utf-8?B?NXQzQVptbjk5ZVcwMVJTaU5ucy9DTWxpWW5IVHVWeGQrMFpkWE5aZTdCQVNa?=
 =?utf-8?B?eGJDR0pncGFVclZCT3JIRExKQjRYdkNwQUJZQVQxclBkT0IyVWRkUG8wVklL?=
 =?utf-8?B?U1htYUVnL2tJZGovNmtQcGJVMkYvU3ZXQzJ5Z2RTcHZqWitySTdsWUxuMGZ1?=
 =?utf-8?B?WjB3ZlhYcEl6SDBxaG9nK0l3azBPQlZheHhyald6Z24yOHI2TzlUckZnc3h0?=
 =?utf-8?B?NGh0VzBVYUpLOEVoa2lrWW9TR0E5MWp3alRIS0kxSFZETFZPODVzTDloM0N6?=
 =?utf-8?B?OHE5OXFxbkNKSG1QUUdwNTZ4WHlVei9JdzBZWGEvVmJmK29YdmdzZFRrNWll?=
 =?utf-8?Q?e9tHZxywrfdrcGrfCj0gGTw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bfa7eb64-1a71-471f-7bd7-08db199fa0be
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2023 15:22:39.3202 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +7EoQfEccQ7uf2I9H71sX2YItp8tV0wSNm7/PdghCwFc9+nDlLJfncuaAhpz/FY6O8H5PlFj/e55Qn9PLmZjB844AoijFQP9z6Grmkxp1xY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6696
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677597763; x=1709133763;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9O/ab1AMoWtAbzDH8HOBH4q8Q6QHTHaj4NkwAT5Zuoc=;
 b=CAt509fvmmU7hr0/ygfBBCI4Tz9tE7mw8u5CS9rQmZ921dRk+vU8q8bV
 spfQ/tPlMJYn6B1Fn04dSAGuDcNkgLW23jyHtFqqJwGbi8KYzRJlOlhZg
 C84HojgVJqBkHIUiZtOglS1UqwSKXj/ODSJdALgQwax0VwfcleC7REoRi
 7ZgMmTdkVqj455BEVOz2KAgxPQmYs4H6ncpzVz82ga2X1DfcjwuIr85tl
 Amq3ZOacW0Gpt2/lP3pjYEKzGV/MfHM+mHYVz/8e1aaWknQYUKE66Xtub
 1FQH3wXud9Mp1BtFtP3Lp6a9ZH+oYWhGwDL8Mg3zGeFV7VxZFMPwF2i6J
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CAt509fv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix implicit cast u32
 to u16
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
Cc: intel-wired-lan@lists.osuosl.org, Marcin Szycik <marcin.szycik@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4KRGF0ZTogVHVlLCAyOCBG
ZWIgMjAyMyAxMTowMTowMCArMDEwMAoKPiBEZWFyIEthbHlhbiwgZGVhciBNYXJjaW4sCj4gCj4g
Cj4gQW0gMjguMDIuMjMgdW0gMDk6NDkgc2NocmllYiBLYWx5YW4gS29kYW1hZ3VsYToKPj4gRnJv
bTogTWFyY2luIFN6eWNpayA8bWFyY2luLnN6eWNpa0BpbnRlbC5jb20+Cj4+Cj4+IEZpeCBpbXBs
aWNpdCBjYXN0IGJ5IGNoYW5naW5nIGFyZ3VtZW50IHR5cGVzIG9mIHR3byBmdW5jdGlvbnMgdG8g
Y29ycmVjdAo+PiB0eXBlcy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTWFyY2luIFN6eWNpayA8bWFy
Y2luLnN6eWNpa0BpbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEthbHlhbiBLb2RhbWFndWxh
IDxrYWx5YW4ua29kYW1hZ3VsYUBpbnRlbC5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RkcC5jIHwgNCArKy0tCj4+IMKgIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RkcC5jCj4+IGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9kZHAuYwo+PiBpbmRleCBkNzFlZDIxMGY5YzQuLjgzMGZhNTNi
NWUwYSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9k
ZHAuYwo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RkcC5jCj4+
IEBAIC03MDEsMTQgKzcwMSwxNCBAQCBzdHJ1Y3QgaWNlX2J1Zl9idWlsZCAqaWNlX3BrZ19idWZf
YWxsb2Moc3RydWN0Cj4+IGljZV9odyAqaHcpCj4+IMKgwqDCoMKgwqAgcmV0dXJuIGJsZDsKPj4g
wqAgfQo+PiDCoCAtc3RhdGljIGJvb2wgaWNlX2lzX2d0cF91X3Byb2ZpbGUodTE2IHByb2ZfaWR4
KQo+PiArc3RhdGljIGJvb2wgaWNlX2lzX2d0cF91X3Byb2ZpbGUodTMyIHByb2ZfaWR4KQo+PiDC
oCB7Cj4+IMKgwqDCoMKgwqAgcmV0dXJuIChwcm9mX2lkeCA+PSBJQ0VfUFJPRklEX0lQVjZfR1RQ
VV9URUlEICYmCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBwcm9mX2lkeCA8PSBJQ0VfUFJPRklEX0lQ
VjZfR1RQVV9JUFY2X1RDUF9JTk5FUikgfHwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBy
b2ZfaWR4ID09IElDRV9QUk9GSURfSVBWNF9HVFBVX1RFSUQ7Cj4+IMKgIH0KPj4gwqAgLXN0YXRp
YyBib29sIGljZV9pc19ndHBfY19wcm9maWxlKHUxNiBwcm9mX2lkeCkKPj4gK3N0YXRpYyBib29s
IGljZV9pc19ndHBfY19wcm9maWxlKHUzMiBwcm9mX2lkeCkKPj4gwqAgewo+PiDCoMKgwqDCoMKg
IHN3aXRjaCAocHJvZl9pZHgpIHsKPj4gwqDCoMKgwqDCoCBjYXNlIElDRV9QUk9GSURfSVBWNF9H
VFBDX1RFSUQ6Cj4gCj4gSXMgdGhlcmUgYSByZWFzb24gdG8gbGltaXQgdGhlIGxlbmd0aCBvciBj
b3VsZCBgdW5zaWduZWQgaW50YCBiZSB1c2VkPwoKWW91IG1lYW4gdGhlIHN0cmluZyBsZW5ndGg/
IEJ1dCB3aGF0J3MgdGhlIHBvaW50IG9mIHVzaW5nIGB1bnNpZ25lZCBpbnRgCmlmIHdlIGhhdmUg
c2hvcnRlciBhbmQgbW9yZSBlbGVnYW50IGB1MzJgLCB3aGljaCBhdCB0aGUgc2FtZSB0aW1lCmV4
cGxpY2l0bHkgc3RhdGVzIGl0cyB3aWR0aD8gOikKSSd2ZSBiZWVuIGVuY291cmFnaW5nIGxvdHMg
bycgZm9sa3MgdG8gcHJlZmVyIHRoZSAic2hvcnRpZXMiIHdoZXJlCnBvc3NpYmxlIChJIGJhc2lj
YWxseSBvbmx5IHVzZSB7LHVuc2lnbmVkfSBsb25nIGZyb20gdGhlICJiYXNpYyIgdHlwZXMpCmFu
ZCBub3cgdGhpcyA6cCBJJ20gbm90IHNheWluZyBhbnkgb3BpbmlvbiBpcyBjb3JyZWN0IG9yIGlu
Y29ycmVjdCBoZXJlLApzaW5jZSBpdCdzIGEgbWF0dGVyIG9mIHRhc3RlIG1vc3RseSBJIGJlbGll
dmUsIGp1c3QgY3VyaW91cy4KCj4gCj4gCj4gS2luZCByZWdhcmRzLAo+IAo+IFBhdWwKVGhhbmtz
LApPbGVrCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
