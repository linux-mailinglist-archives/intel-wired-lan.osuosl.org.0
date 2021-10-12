Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D41C742AD49
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 21:28:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 55B8440437;
	Tue, 12 Oct 2021 19:28:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kk2JDSsUMGuR; Tue, 12 Oct 2021 19:28:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 064DE4042A;
	Tue, 12 Oct 2021 19:28:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C03D41BF3D6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 19:28:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B9AA14042A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 19:28:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JFDbWPgdn_7y for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 19:28:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E98A64036F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 19:28:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="207363894"
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="207363894"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 12:28:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="480495504"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 12 Oct 2021 12:28:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 12 Oct 2021 12:28:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 12 Oct 2021 12:28:28 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 12 Oct 2021 12:28:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=abg7Dhma3CW67F+TPx18bSz76M0l/nW3ojSSaG0kovkl0cAfjL9XJJC2s6AUPnSnS1XD3RD+hLR+E4hIZjBssbBVQuwgc076Z3hhE3xAIdmzW9Acu5aeY7NmoAQ6M/eLSD6GV8re2QRbA3BcYYZYWMceo7ZLYM9m9Jm+L3QOn8silsRlq5MNlQeOVs3TH9xoydvbeJp32hhqBT/K2AyVLBRDrfvireOvMSKIKw1GBx974CHyxYqK+Amtv+1rtVcGJ/UsylBn8h2DStGPqY63+h08zBkpT37K9BDO0M9MEAf7omj0X9rpTJpCM8FsQ7kMQkYkx95drZVQ0tFAF6zf5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iEGLD159KZmY5tp6Rc96Z/gbpwjwnKZmcu8AJfk4wo8=;
 b=SHKCTpo+bQvNeHqKKuMapc21R7kMACgV9nW5vuu8PoosugnRDlEtvW4XdLWHln1aUtUaFhoRT2DD95cWyxW3F7JoVSTcKArG1uq/cR9Bft7Lrfvqoi1kxkMOyzuvxeH8o+0/VixKEgle2Prt2pyI0PNoA9a5SCOos20pDG4lD3nLq9Bbytc+/iGdqugFZ7AGbvTkWFbxnV6OnRerOmJYkEkw7Jls5PJhsT0axUbHiPm0fmCHYyZNaohTRf9UilZi5Ho/5ZNon3pajXfCPa9YBhBgqStnmVhQC8j13R+TDHbLtzypdzx9ZjTgMRTwT7zNYLbd8J6U34tBbYXergcDkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iEGLD159KZmY5tp6Rc96Z/gbpwjwnKZmcu8AJfk4wo8=;
 b=GPkbYSitk07n1X68RhP4Z6qTYe1cM6vMHSto8SqUCRgbTL8VPfOuOVJBIumkUDKHAl6oQIEu5/mNOdFD1txwGzsSobcKDqjEltP2tCpUHDced0mAgQ7Qjvo2o3nzqZ8hXhZ0tgnC2myJul3cKBYib/aI8sgjOKZ15aecQJVL0LE=
Authentication-Results: kvack.org; dkim=none (message not signed)
 header.d=none;kvack.org; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by MW3PR11MB4698.namprd11.prod.outlook.com (2603:10b6:303:5a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.22; Tue, 12 Oct
 2021 19:28:27 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::d0b6:9cc:d07d:e8a3]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::d0b6:9cc:d07d:e8a3%9]) with mapi id 15.20.4587.026; Tue, 12 Oct 2021
 19:28:27 +0000
Message-ID: <55127ee0-e85c-9dba-4086-31516a843d27@intel.com>
Date: Tue, 12 Oct 2021 12:28:25 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: Benjamin LaHaise <bcrl@kvack.org>, <intel-wired-lan@lists.osuosl.org>
References: <20211011222800.GA17234@kvack.org>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20211011222800.GA17234@kvack.org>
X-ClientProxiedBy: CO2PR18CA0055.namprd18.prod.outlook.com
 (2603:10b6:104:2::23) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
Received: from [192.168.1.214] (50.39.107.76) by
 CO2PR18CA0055.namprd18.prod.outlook.com (2603:10b6:104:2::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4587.19 via Frontend Transport; Tue, 12 Oct 2021 19:28:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 29078f00-bed4-4876-f485-08d98db676f5
X-MS-TrafficTypeDiagnostic: MW3PR11MB4698:
X-Microsoft-Antispam-PRVS: <MW3PR11MB4698F8D6A302B6BB2F212EAA97B69@MW3PR11MB4698.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eZr0DMyl1/wdRP6KSJj/Qy3TEylLL7LH+5t4Kf4zTV3DJHrVi2DfJ593YgR96a9AOHLbb2Iw6pef8/HIhZxsUQMfpJCk3oPzmd9qC+bRmf0XkleZCFn+JWqd0B28Wu2W3HucYyXfO955sfn21v2RVe6DZ02yTWVvFq/zgIdoF9GIJFDzXtl02SdbU7PYqvFD6dnCamMPiuZ44EoX6XEg8ve4ij5y3psrZsluT8E8GCpcV00hwdjhu1xBznchLyjSRq3fd2lykg8mNySpqSF9vdw3nTyCOhj4c/Tf4fGgv7/wWg9U5YfykkV7kP15VSXxNhQDwLllWXqzpLmuVMqQ+p/1g4/5xxjdogdnAI+LpFfElVDMrXIqXvbyjaiaK82gV1TkN0VrhiIH4GesxU4OwY3sSs/1jRmiuDYHjK7fGsqNFVGdic++qQ0JgBBcDKZ9o+jH1ftnlYD1/QPtjUU+l5euq4ibfRTrIEmhibXzKjdO8TBeWfTZixurNoCrL6I5Qs7sISJ25o1DAFpEeONSz0MZex3jN/ckHhUasMbEGJMxRl3WHbRoy8gGCoapnpDLCUUqPvgmgCl6NSF235gxZZd92Rx6QWjoCYs6XJ46yvaGiK85zLmvva7ZRLo8pps8wtItFGhSTQRhI98mTP/cSg3XqRP9QiJPApRLm943JuJwZf5Jmb5mQvUey5dkDTEuXNhSAXl/GnIXz+Cme+EjAbz7c5Mok7hpBIAhLPYtwuU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(36756003)(83380400001)(5660300002)(956004)(31686004)(26005)(6486002)(2616005)(8676002)(86362001)(8936002)(16576012)(316002)(44832011)(66556008)(2906002)(186003)(38100700002)(66476007)(66946007)(53546011)(31696002)(508600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QWVnSW5US1ZIUEJzbEhnQzcvbzk0WjhxVDZJWVl0S1JoVFlUdkxYUkhha2JV?=
 =?utf-8?B?MUNVdFpGN2hqTHZ5cG5YaWNjWUhWQUJSUjlueTlDNGlNWXBGc3lHZ2Rwa2Ro?=
 =?utf-8?B?ck5HVmI4dHc3RlF5WmpmNzArcmhtdnJydVk2blY4VXZhaVJvcVhTY3FqWUJq?=
 =?utf-8?B?dkU3Z1JkMytBdEJiNjlibXFldE42OThsT0dqOExsNXFmd21QdHlKa1NBYU52?=
 =?utf-8?B?dEI3V0xmR2psbmVSUDJoak1ZOURqMjdpZXBCZlFaNzFCcmdnM0JOWXJSRlN4?=
 =?utf-8?B?NjcrRlFHcHB3bHp2dE9pSUozZFVJbHZOazE4dkRjQll3NDkzU0hxQ0tCMzVn?=
 =?utf-8?B?OEZhdTNRMkdzRWpkYUtSdWVVR1V5TWxGdEZlajVuK0ZHc3NnejI0cFFwd2pZ?=
 =?utf-8?B?QnhnRGFHWTdDWFl2RE5IMHpwNnhaK0JCREJ3ZnJ0dTMrYjJyZThiRFZjWjBU?=
 =?utf-8?B?SlRHVmJ5YWV3NU13RXNQdHpUY3dLcWtwb3RxdmwvdmJXU0hpL0NsZEdSMmpT?=
 =?utf-8?B?Q0ZTZk1tVEFZQjZaNEpwQm5rcEFnVlNzNU50SVFIWXZ0eTFLTmdzeG9iY09Z?=
 =?utf-8?B?T1Z0Y3RvNURxRGRja1I2TDY3RUFPbFQ4aTNmT3UxQ0FxY0dvVVoxMlFpTjNi?=
 =?utf-8?B?UTZWYWVoNmtFVGlienpMbEJENmZ2bzluNjQxTDNVK0FFS012V01KOUZ2aysy?=
 =?utf-8?B?c21RcTJVVjhCM1lkT0JJbXNmb3RUMlRHTHhWcFNNeDRjUVBCMXVKa3o5dUxi?=
 =?utf-8?B?WkF2VFhyUEQ1WU1ST2xWUmtLSE5KSDd1TktKVlNicTZUMGcrdmVOcENKL1Rq?=
 =?utf-8?B?VUdxRDBlYis1WWJLSUtIY3FEZ2lSbzhaN3IzWXp1dXJlQ0tSY1lNYW9Mam51?=
 =?utf-8?B?a1VWcTc0aTZ6WllDSXJ0MTc2bysyOWJ0OVRNOWtiQkd5dzQvRTB2UmhWdElq?=
 =?utf-8?B?SDNhMWpyM2xsRXFiTE1DanN4WjlHVkJwSmRmUk9NeStYL2FseEFacGJ0bUQ4?=
 =?utf-8?B?VzFLRUphU2RGU3BiR2h6WVVWb3Y2SVpYTGxDVS92d2lWbnRtUU5KNDVTcytW?=
 =?utf-8?B?OFJOam1VQ3picWt6ZUQ3WU5sS0YzSWhIVktmWks4S1ZZTGpBb2tZSUZBMFhE?=
 =?utf-8?B?QjNteHZyOXZ5YkJYaHFsQnZMSHkveUpRbGZKUEhhejU3YVZEd3hXV2tZZThL?=
 =?utf-8?B?RTdDWG1wc3B2ZzFNc1NCUndkWEVCWXpaLzNMdVVRaDZseFNBREw0WUMrSHdy?=
 =?utf-8?B?MjJIOGYvdzhaSFM5VzNET0x4QWR5a1ordmdid3c4NEwyVHVmWXpVbGY1TTE5?=
 =?utf-8?B?ck5zNEpXYjJ5YUVpLzlDNjJHTE0yblZzZ2w1RDlRNnNBUm9vOXlXS2Jqdzlm?=
 =?utf-8?B?T2RPVFJDbm8rcFppM2daTWwxVUk0ZkgrUDlueHJIZ2QrWDZqMjlzNVVleDl3?=
 =?utf-8?B?SmdqS0JNb3BUenZteE1POWk0SEpTY21MRWJVVWpPNlFjUngvV3ByelNFSHZs?=
 =?utf-8?B?blpZMk5tTG1mcWRkRC9rRm1RMjVOUjBrU0RlL0YvZTREWWhmdkdlanRxT29G?=
 =?utf-8?B?S0dkWHhaNC9NeDlVWE1wS2VrRGllZE1lQlJ0STh0eTI1QUhvMSswUGoyUkxH?=
 =?utf-8?B?RWIxVTkrbmxQVkcwK09ncG5LOVZIL0IzS1pTV3UyNjhvYjU3YUYxd2VpSEJP?=
 =?utf-8?B?US8vUUgybWREaUNnZ0tKUm1ZSTVrZjltYXBjMExOM0NCbzMvY0lodFRndWVO?=
 =?utf-8?Q?rtEis47z7/QdQe4VRLdmMLemXwkqgm2O2ob0xNQ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 29078f00-bed4-4876-f485-08d98db676f5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2021 19:28:27.1101 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P6csACyOA8ARdv8bqFc6eUqAFO9ost9zqIwK9vL/hjr517Y/YJakrUrT1OpWtBhRkJdqR4iZWcUMIpkFvSKYtSaASO2+Vyt3OwQuHQdwpEM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4698
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] i40e pppoe rss
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/11/2021 3:28 PM, Benjamin LaHaise wrote:
> I have been trying to get RSS working for incoming PPPoE packets with the
> Linux i40e driver.  After loading the DDP .pkgo file for PPPoE using
> "ethtool -f enp43s0f0 ppp-oe-ol2tpv2.pkgo 100", packets still come in on a
> single queue.  Changing destination IP addresses or port numbers in UDP
> packets does not result in any change in the ingress queue.  Are the
> ethtool commands required to enable RSS with PPPoE documented anywhere?
> The only documentation seems to rely on test-pmd with DPDK, but I am using
> the native Linux drivers and XDP.

Hi Ben, this was a known issue on an older package version, and since 
you asked, we realized that the version on intel.com hasn't been updated 
in a long time, and so doesn't have the fix.

We are working to correct the internal issues that lead to this stale 
package being left there and not updated, and are grateful you pointed 
us to the issue!

Please keep an eye out for the intel.com download page to be updated 
with the latest PPPoE package. Once you have that, RSS should start 
working correctly after loading the newer package.

Thanks for your patience, I don't have a direct ETA on this, but I did 
start the ball rolling internally.

-Jesse
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
