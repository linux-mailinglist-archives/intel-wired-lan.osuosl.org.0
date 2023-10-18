Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4D17CDB23
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 13:59:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1859F61020;
	Wed, 18 Oct 2023 11:59:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1859F61020
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697630346;
	bh=0QKOnZjyOmcvdDh+kWzaL6EnbfIrU/oD9B6uWfIiBEQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p/RwdPiOBJ6QjULWlpUvdiPbP7Kc39nPwHyUGSl7tTwbkYzAyU5O2MJ/TeLOhUUQZ
	 Ljg8Q6QeQ2mjvL5M6u9V6+JHrWe+3sF8Z5K6prCiBQ1gm4SBHrVv/g+DA0KRtWDJg0
	 NVs3cPuQLa5gbVR0HzhtVMAF1oLAwItCB+ZUWz59Y3iGGf4oAnSOOQfJoH2/C5d4zX
	 USMK2HJmovk6m0Hzk4BWtEjmr59tE9uAjvy5WA0ea/vr28YwqJeBEuOLFCs+w/57z2
	 lmh20WwRJSlVqCbyPgkN6eTCpyhnA3lBZwfFDlHBZKVDxGyIVkYHXMDdeSXtfvf/gq
	 2j9mNsqAFxQrw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KYa5p8RJCXLe; Wed, 18 Oct 2023 11:59:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFE5F60F0D;
	Wed, 18 Oct 2023 11:59:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFE5F60F0D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C76051BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:58:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D90841BDF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:58:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D90841BDF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JhjFyhkNXmg9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 11:58:58 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B10D341B84
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:58:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B10D341B84
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-690-8a9MVqywO8erVYyhNhg87A-1; Wed, 18 Oct 2023 07:58:52 -0400
X-MC-Unique: 8a9MVqywO8erVYyhNhg87A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 94F33881F00;
 Wed, 18 Oct 2023 11:58:51 +0000 (UTC)
Received: from [10.45.226.105] (unknown [10.45.226.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 277C640C6CA3;
 Wed, 18 Oct 2023 11:58:49 +0000 (UTC)
Message-ID: <901e8187-097e-457c-a467-e878afbc3504@redhat.com>
Date: Wed, 18 Oct 2023 13:58:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org
References: <20231013170755.2367410-1-ivecera@redhat.com>
 <20231013170755.2367410-4-ivecera@redhat.com>
 <93fa7e66-a4fc-47f5-84c8-e26551eb3204@intel.com>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <93fa7e66-a4fc-47f5-84c8-e26551eb3204@intel.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697630337;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=t354rC8K4HgkPzvMiAse2NVWm0ar8ppamL3evFb9Y8k=;
 b=cCSOQnOwZeOsZDbegk6d3/d9XUg8mvVYYtrWXjnBUjPJ/PV56XEmF8llPcUMbUiF+0DoH0
 y0H5X23cmLipLG2pEoUxWboEMw6cSTWHHtbghaUzbs+M4fpN5ECSSLCDxn7yUM8MRonAkz
 Zw1AEHVGRBauZ6gkeL1/uFi22jkBQd8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=cCSOQnOw
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/5] i40e: Add handler for
 devlink .info_get
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 17. 10. 23 19:17, Jacob Keller wrote:
> 
> 
> On 10/13/2023 10:07 AM, Ivan Vecera wrote:
>> Provide devlink .info_get callback to allow the driver to report
>> detailed version information. The following info is reported:
>>
>>   "serial_number" -> The PCI DSN of the adapter
>>   "fw.mgmt" -> The version of the firmware
>>   "fw.mgmt.api" -> The API version of interface exposed over the AdminQ
>>   "fw.psid" -> The version of the NVM image
>>   "fw.bundle_id" -> Unique identifier for the combined flash image
>>   "fw.undi" -> The combo image version
>>
>> With this, 'devlink dev info' provides at least the same amount
>> information as is reported by ETHTOOL_GDRVINFO:
>>
>> $ ethtool -i enp2s0f0 | egrep '(driver|firmware)'
>> driver: i40e
>> firmware-version: 9.30 0x8000e5f3 1.3429.0
>>
>> $ devlink dev info pci/0000:02:00.0
>> pci/0000:02:00.0:
>>    driver i40e
>>    serial_number c0-de-b7-ff-ff-ef-ec-3c
>>    versions:
>>        running:
>>          fw.mgmt 9.130.73618
> 
> The ice driver used fw.mgmt.build for the fw_build value, rather than
> combining it into the fw.mgmt value.

OK, will fix by follow up.

>>          fw.mgmt.api 1.15
>>          fw.psid 9.30
> 
> As discussed in the other thread, ice used fw.psid.api

OK, will change it to fw.psid.api.

>>          fw.bundle_id 0x8000e5f3
>>          fw.undi 1.3429.0
>>
> 
> Does i40e have a netlist? The ice driver reports netlist versions as
> well. It also reports the DDP version information, but I don't think
> i40e supports that either if I recall..

i40e supports to load DDP in runtime by ethtool flash function and the
name and version of DDP package could be provided IMHO.


>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
>> ---
>>   .../net/ethernet/intel/i40e/i40e_devlink.c    | 90 +++++++++++++++++++
>>   1 file changed, 90 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
>> index 66b7f5be45ae..fb6144d74c98 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
>> @@ -5,7 +5,97 @@
>>   #include "i40e.h"
>>   #include "i40e_devlink.h"
>>   
>> +static void i40e_info_get_dsn(struct i40e_pf *pf, char *buf, size_t len)
>> +{
>> +	u8 dsn[8];
>> +
>> +	put_unaligned_be64(pci_get_dsn(pf->pdev), dsn);
>> +
>> +	snprintf(buf, len, "%8phD", dsn);
>> +}
>> +
>> +static void i40e_info_fw_mgmt(struct i40e_hw *hw, char *buf, size_t len)
>> +{
>> +	struct i40e_adminq_info *aq = &hw->aq;
>> +
>> +	snprintf(buf, len, "%u.%u.%05d",
>> +		 aq->fw_maj_ver, aq->fw_min_ver, aq->fw_build);
>> +}
>> +
>> +static void i40e_info_fw_api(struct i40e_hw *hw, char *buf, size_t len)
>> +{
>> +	struct i40e_adminq_info *aq = &hw->aq;
>> +
>> +	snprintf(buf, len, "%u.%u", aq->api_maj_ver, aq->api_min_ver);
>> +}
>> +
>> +enum i40e_devlink_version_type {
>> +	I40E_DL_VERSION_RUNNING,
>> +};
>> +
>> +static int i40e_devlink_info_put(struct devlink_info_req *req,
>> +				 enum i40e_devlink_version_type type,
>> +				 const char *key, const char *value)
>> +{
>> +	if (!strlen(value))
>> +		return 0;
>> +
>> +	switch (type) {
>> +	case I40E_DL_VERSION_RUNNING:
>> +		return devlink_info_version_running_put(req, key, value);
>> +	}
>> +	return 0;
>> +}
>> +
>> +static int i40e_devlink_info_get(struct devlink *dl,
>> +				 struct devlink_info_req *req,
>> +				 struct netlink_ext_ack *extack)
>> +{
>> +	struct i40e_pf *pf = devlink_priv(dl);
>> +	struct i40e_hw *hw = &pf->hw;
>> +	char buf[32];
>> +	int err;
>> +
>> +	i40e_info_get_dsn(pf, buf, sizeof(buf));
>> +	err = devlink_info_serial_number_put(req, buf);
>> +	if (err)
>> +		return err;
>> +
>> +	i40e_info_fw_mgmt(hw, buf, sizeof(buf));
>> +	err = i40e_devlink_info_put(req, I40E_DL_VERSION_RUNNING,
>> +				    DEVLINK_INFO_VERSION_GENERIC_FW_MGMT, buf);
>> +	if (err)
>> +		return err;
>> +
>> +	i40e_info_fw_api(hw, buf, sizeof(buf));
>> +	err = i40e_devlink_info_put(req, I40E_DL_VERSION_RUNNING,
>> +				    DEVLINK_INFO_VERSION_GENERIC_FW_MGMT_API,
>> +				    buf);
>> +	if (err)
>> +		return err;
>> +
>> +	i40e_info_nvm_ver(hw, buf, sizeof(buf));
>> +	err = i40e_devlink_info_put(req, I40E_DL_VERSION_RUNNING,
>> +				    DEVLINK_INFO_VERSION_GENERIC_FW_PSID, buf);
>> +	if (err)
>> +		return err;
>> +
>> +	i40e_info_eetrack(hw, buf, sizeof(buf));
>> +	err = i40e_devlink_info_put(req, I40E_DL_VERSION_RUNNING,
>> +				    DEVLINK_INFO_VERSION_GENERIC_FW_BUNDLE_ID,
>> +				    buf);
>> +	if (err)
>> +		return err;
>> +
>> +	i40e_info_civd_ver(hw, buf, sizeof(buf));
>> +	err = i40e_devlink_info_put(req, I40E_DL_VERSION_RUNNING,
>> +				    DEVLINK_INFO_VERSION_GENERIC_FW_UNDI, buf);
>> +
>> +	return err;
>> +}
> 
> The ice driver created a struct list and loop flow to iterate this. I'm
> wondering if it could make sense to extract that logic into devlink
> core, so that drivers just need to implement a map between version names
> and functions which extract the name.
> 
> It seems like it would be straight forward to implement with a setup,
> the list mapping info names to version getters, and a teardown.
> 
> Hmm...
> 
>> +
>>   static const struct devlink_ops i40e_devlink_ops = {
>> +	.info_get = i40e_devlink_info_get,
>>   };
>>   
>>   /**
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
