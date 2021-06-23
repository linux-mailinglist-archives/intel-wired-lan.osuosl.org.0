Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 439F33B1E8D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jun 2021 18:21:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9ADD83B5C;
	Wed, 23 Jun 2021 16:21:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RfELpw__5i4s; Wed, 23 Jun 2021 16:21:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E79CC83B5F;
	Wed, 23 Jun 2021 16:21:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CAEB21BF40B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 16:21:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C6F3740390
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 16:21:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K5dT-ie3beBI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jun 2021 16:21:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D5B0A402CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 16:21:06 +0000 (UTC)
IronPort-SDR: jeq/WUKD00/Pm9TDgiyApqRalM54j5FPEeHLetmyOzwAbeOFC2/gBDBLKkGCXiT5j6x0tOsuZy
 KlS898DQRu/w==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="204291470"
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="204291470"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 09:21:03 -0700
IronPort-SDR: LPhPhSvi02ifTXVrTOfbTlDbLKkXSGC1q/6Ku63IR+qKpl7/QjRZ/hydiNFYQDgyWRX7xP3wW/
 q4Bc6MsWq3wA==
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="417780127"
Received: from samudral-mobl.amr.corp.intel.com (HELO [10.212.149.45])
 ([10.212.149.45])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 09:21:03 -0700
To: "Creeley, Brett" <brett.creeley@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
References: <20210426181940.14847-1-sridhar.samudrala@intel.com>
 <CO1PR11MB48359F4AB09484353280CBA9F52D9@CO1PR11MB4835.namprd11.prod.outlook.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <c78efee5-d864-7903-98b5-207aadae19fa@intel.com>
Date: Wed, 23 Jun 2021 09:21:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CO1PR11MB48359F4AB09484353280CBA9F52D9@CO1PR11MB4835.namprd11.prod.outlook.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Enable configuration
 of number of qps per VF via devlink
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
Cc: "Ismail, Mustafa" <mustafa.ismail@intel.com>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/17/2021 2:49 PM, Creeley, Brett wrote:
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Sridhar Samudrala
>> Sent: Monday, April 26, 2021 11:20 AM
>> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Samudrala, Sridhar
>> <sridhar.samudrala@intel.com>
>> Subject: [Intel-wired-lan] [PATCH net-next v2] ice: Enable configuration of number of qps per VF via devlink
>>
>> Introduce a devlink parameter 'num_qps_per_vf' to allow user
>> to configure the maximum number of queue pairs given to SR-IOV
>> VFs before they are created.
>>
>> This is currently determined by the driver based on the number
>> of SR-IOV VFs created. In order to keep this behavior by default
>> the parameter is initialized to 0. To change the default behavior,
>> user can set num_qps_per_vf parameter via devlink and this will
>> be used as the preferred value to determine the queues and vectors
>> assigned per VF.
> What if the host administrator wants to give the VF a different number
> of vectors than queues? For example, if the admin knows the VF
> instance will be exercising VF RDMA and the VF needs more vectors
> for RDMA traffic.
>
> Should we have 2 separate values, i.e. "num_qps_per_vf" and
> "num_msix_per_vf"?

I missed responding to this comment.
Sure. We can add num_msix_pr_vf as a later patch to enable additional 
vectors for RDMA.

Tony,
Can this patch be included in your series when you submit to netdev?
OR do i need to rebase it based on the latest net-next?

Thanks
Sridhar
>
>> USAGE:
>> On a 2 port NIC
>>   # devlink dev param show
>>   pci/0000:42:00.0:
>>     name num_qps_per_vf type driver-specific
>>       values:
>>         cmode runtime value 0
>>   pci/0000:42:00.1:
>>     name num_qps_per_vf type driver-specific
>>       values:
>>         cmode runtime value 0
>>
>>   /* Set num_qps_per_vf to 4 */
>>   # devlink dev param set pci/0000:42:00.0 name num_qps_per_vf value 4 cmode runtime
>>
>>   # devlink dev param show pci/0000:42:00.0 name num_qps_per_vf
>>   pci/0000:42:00.0:
>>     name num_qps_per_vf type driver-specific
>>       values:
>>         cmode runtime value 4
>>
>>   # echo 8 > /sys/class/net/enp66s0f0/device/sriov_numvfs
>>
>> This will create 8 VFs with 4 queue pairs and 5 vectors per VF
>> compared to the default behavior of 16 queue pairs and 17 vectors
>> per VF.
>>
>> v2:
>> Fixed kdoc for ice_devlink_num_qps_per_vf_validate()
>>
>> Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
>> ---
>>   Documentation/networking/devlink/ice.rst      |  23 ++++
>>   drivers/net/ethernet/intel/ice/ice_devlink.c  | 110 +++++++++++++++++-
>>   drivers/net/ethernet/intel/ice/ice_main.c     |   3 +
>>   .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   5 +-
>>   4 files changed, 139 insertions(+), 2 deletions(-)
>>
> <snip>
>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
