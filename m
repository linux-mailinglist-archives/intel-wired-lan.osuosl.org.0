Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4A88C8410
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2024 11:45:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8497982125;
	Fri, 17 May 2024 09:45:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id llypi-Q6Nvi8; Fri, 17 May 2024 09:45:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66B6682145
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715939150;
	bh=NoUMqtzfrKwJlQL6VrqcUeux9SFNsqPAZtV2AYwvMAA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yuX808jFHoE60m7m9RHHdVjBmDDwrUh01SbINWWlZF2exz02u38F+JhpmZetG6pxi
	 PW8sV99vqdGxBHHZBcn9Z/i2Olzn+LqwMCJTYXv6iSUXG80BEfSOegTqBFOuKk+GFm
	 /r/6BB7e8CR+paS/WFdWuOSf8VZ/qFTg/ig0PQm5mqHxHCG767NKRVlW+6mpPoJNzD
	 5pfqRJi3BKCh4qdqdj21/xWHHAYlFzmELYhq6wMMPt7djJqQ9OXOz4BngRez7RgyCb
	 t1A10PWWQm3ECmzSoIRw6j52WbxnqJE6gt5wJ3PEUK2KrvdN07UpfJYA0rabESeMuY
	 wZhV2F/30kIsg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66B6682145;
	Fri, 17 May 2024 09:45:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 50DD51BF228
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 09:45:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 37C8282122
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 09:45:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zzwVS4snfoV0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2024 09:45:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.121;
 helo=smtp-relay-canonical-1.canonical.com;
 envelope-from=hui.wang@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5830C82117
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5830C82117
Received: from smtp-relay-canonical-1.canonical.com
 (smtp-relay-canonical-1.canonical.com [185.125.188.121])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5830C82117
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 09:45:45 +0000 (UTC)
Received: from [10.55.5.117] (unknown [149.11.192.251])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id 929643F1FC; 
 Fri, 17 May 2024 09:45:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="------------5v0lDPZzpxePkjM1CS6o5ExZ"
Message-ID: <7b0a36a5-4265-41e7-b66a-2cd1f01aed42@canonical.com>
Date: Fri, 17 May 2024 17:45:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240508120604.233166-1-hui.wang@canonical.com>
 <cdab9b76-e935-4b38-9b5c-496ff8fdfb64@molgen.mpg.de>
Content-Language: en-US
From: Hui Wang <hui.wang@canonical.com>
In-Reply-To: <cdab9b76-e935-4b38-9b5c-496ff8fdfb64@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1715939142;
 bh=NoUMqtzfrKwJlQL6VrqcUeux9SFNsqPAZtV2AYwvMAA=;
 h=Content-Type:Message-ID:Date:MIME-Version:Subject:To:Cc:
 References:From:In-Reply-To;
 b=Xu2oqUFatjfMpV/AKpgfpav87zm+/Xwqll8qVMmhnYD1NwaBoIXF9ajo0K6kxaYrC
 MHEtKRx3IjKuvkh6G9BplW5o6nJBoHvG1PmXZqKSMoM72b5AL/qyORBcBOI4C2NJwt
 svxEWEBTreHg9mz0aqsgJJIGOZ2Upc1tw6D9ulyWphHmlXeSGKlmNJ+ttXwReCvmkQ
 +qlv4d07x4PD82V21XAURL7xeKtu9uJU2zeFh+JsffCbinF2F46zBcbYoZ8PKw16hH
 bNe23oY9tF+RnUMEAB+aAYFGAL3UvvcnPBufZR3enR6mON1uFy5jXakd+8wUqXZepR
 /JOyaUd2AJAdA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=Xu2oqUFa
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000e: move force SMBUS near the
 end of enable_ulp function
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
Cc: pabeni@redhat.com, naamax.meir@linux.intel.com, netdev@vger.kernel.org,
 kuba@kernel.org, edumazet@google.com, sasha.neftin@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 Jacob Keller <jacob.e.keller@intel.com>, vitaly.lifshits@intel.com,
 Zhang Rui <rui.zhang@intel.com>, dima.ruinskiy@intel.com, davem@davemloft.net,
 Oliver Sang <oliver.sang@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a multi-part message in MIME format.
--------------5v0lDPZzpxePkjM1CS6o5ExZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 5/17/24 13:45, Paul Menzel wrote:
> Dear Hui,
>
>
> Thank you for your patch.
>
> Am 08.05.24 um 14:06 schrieb Hui Wang:
>> The commit 861e8086029e ("e1000e: move force SMBUS from enable ulp
>> function to avoid PHY loss issue") introduces a regression on
>> CH_MTP_I219_LM18 (PCIID: 0x8086550A). Without the referred commit, the
>
> *P*CH
>
>> ethernet works well after suspend and resume, but after applying the
>> commit, the ethernet couldn't work anymore after the resume and the
>> dmesg shows that the NIC Link changes to 10Mbps (1000Mbps originally):
>
> 1.  s/Link/link/
> 2.  “couldn’t work” means the reduced bandwidth?
On my side, once the link changes to 10Mbps, I couldn't ping the machine 
anymore. And as you said, it probably has sth to do with switch/router 
configuration.
> 3. Please add a blank line and maybe indent the past with four spaces.
>
>> [   43.305084] e1000e 0000:00:1f.6 enp0s31f6: NIC Link is Up 10 Mbps 
>> Full Duplex, Flow Control: Rx/Tx
>>
>> Without the commit, the force SMBUS code will not be executed if
>> "return 0" or "goto out" is executed in the enable_ulp(), and in my
>> case, the "goto out" is executed since FWSM_FW_VALID is set. But after
>> applying the commit, the force SMBUS code will be ran unconditionally.
>>
>> Here move the force SMBUS code back to enable_ulp() and put it
>> immediate ahead of hw->phy.ops.release(hw), this could allow the
>
> immediate*l*?
>
>> longest settling time as possible for interface in this function and
>> doesn't change the original code logic.
>
> Re-ordering code to achieve some waiting time sounds like, it’s not 
> 100 % sure, that the problem won’t occur again?

Actually this patch not only adds the waiting time, but also restore the 
original code logic:

  original: On a machine with the CSME, the SMBUS will not be forced, 
accordingly the SMBUS will not be unforced after resume.

  wrong: On a machine with the CSME, the SMBUS is forced, but the SMBUS 
is not unforced after resume, there is an unbalance. My patch could fix 
this case.


>
> Could you please document your test system?
Lenovo Thinkpad P16Gen2 with ethernet card:

00:1f.6 Ethernet controller [0200]: Intel Corporation Device [8086:550a] (rev 20)

>
> Just a side note: Booting Linux 6.9-rc5+ *with kexec* on Supermicro 
> Super Server/X13SAE, BIOS 2.0 10/17/2022 with the network device 
> below, it also came up only with 10 Mbps and Ethernet did not work, 
> for example `ping`. I conjectured though, that the non-working part 
> was due to the switch configuration not allowing 10 Mbps.
>
>     00:1f.6 Ethernet controller [0200]: Intel Corporation Ethernet 
> Connection (17) I219-LM [8086:1a1c] (rev 11)
>
My test and result are same as yours.

Thanks.

> I didn’t find the time to further analyze and report the issue.
>
> Also could this also be related to the regression reported by the 
> kernel test robot [1]?
>
>     00:19.0 Ethernet controller: Intel Corporation Ethernet Connection 
> (3) I218-V (rev 03)
>
>
>> Fixes: 861e8086029e ("e1000e: move force SMBUS from enable ulp 
>> function to avoid PHY loss issue")
>> Signed-off-by: Hui Wang <hui.wang@canonical.com>
>> Acked-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> Tested-by: Naama Meir <naamax.meir@linux.intel.com>
>> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
>> ---
>> In the v2:
>>   Change "this commit" to "the referred commit" in the commit header
>>   Fix a potential infinite loop if ret_val is not zero
>>     drivers/net/ethernet/intel/e1000e/ich8lan.c | 22 
>> +++++++++++++++++++++
>>   drivers/net/ethernet/intel/e1000e/netdev.c  | 18 -----------------
>>   2 files changed, 22 insertions(+), 18 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c 
>> b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> index f9e94be36e97..2e98a2a0bead 100644
>> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> @@ -1225,6 +1225,28 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw 
>> *hw, bool to_sx)
>>       }
>>     release:
>> +    /* Switching PHY interface always returns MDI error
>> +     * so disable retry mechanism to avoid wasting time
>> +     */
>> +    e1000e_disable_phy_retry(hw);
>> +
>> +    /* Force SMBus mode in PHY */
>> +    ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
>> +    if (ret_val) {
>> +        e1000e_enable_phy_retry(hw);
>> +        hw->phy.ops.release(hw);
>> +        goto out;
>> +    }
>> +    phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
>> +    e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
>> +
>> +    e1000e_enable_phy_retry(hw);
>> +
>> +    /* Force SMBus mode in MAC */
>> +    mac_reg = er32(CTRL_EXT);
>> +    mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
>> +    ew32(CTRL_EXT, mac_reg);
>> +
>>       hw->phy.ops.release(hw);
>>   out:
>>       if (ret_val)
>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c 
>> b/drivers/net/ethernet/intel/e1000e/netdev.c
>> index 3692fce20195..cc8c531ec3df 100644
>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>> @@ -6623,7 +6623,6 @@ static int __e1000_shutdown(struct pci_dev 
>> *pdev, bool runtime)
>>       struct e1000_hw *hw = &adapter->hw;
>>       u32 ctrl, ctrl_ext, rctl, status, wufc;
>>       int retval = 0;
>> -    u16 smb_ctrl;
>>         /* Runtime suspend should only enable wakeup for link changes */
>>       if (runtime)
>> @@ -6697,23 +6696,6 @@ static int __e1000_shutdown(struct pci_dev 
>> *pdev, bool runtime)
>>               if (retval)
>>                   return retval;
>>           }
>> -
>> -        /* Force SMBUS to allow WOL */
>> -        /* Switching PHY interface always returns MDI error
>> -         * so disable retry mechanism to avoid wasting time
>> -         */
>> -        e1000e_disable_phy_retry(hw);
>> -
>> -        e1e_rphy(hw, CV_SMB_CTRL, &smb_ctrl);
>> -        smb_ctrl |= CV_SMB_CTRL_FORCE_SMBUS;
>> -        e1e_wphy(hw, CV_SMB_CTRL, smb_ctrl);
>> -
>> -        e1000e_enable_phy_retry(hw);
>> -
>> -        /* Force SMBus mode in MAC */
>> -        ctrl_ext = er32(CTRL_EXT);
>> -        ctrl_ext |= E1000_CTRL_EXT_FORCE_SMBUS;
>> -        ew32(CTRL_EXT, ctrl_ext);
>>       }
>>         /* Ensure that the appropriate bits are set in LPI_CTRL
>
>
> Kind regards,
>
> Paul
>
>
> [1]: 
> https://lore.kernel.org/intel-wired-lan/202405150942.f9b873b1-oliver.sang@intel.com/
--------------5v0lDPZzpxePkjM1CS6o5ExZ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 5/17/24 13:45, Paul Menzel wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:cdab9b76-e935-4b38-9b5c-496ff8fdfb64@molgen.mpg.de">Dear
      Hui,
      <br>
      <br>
      <br>
      Thank you for your patch.
      <br>
      <br>
      Am 08.05.24 um 14:06 schrieb Hui Wang:
      <br>
      <blockquote type="cite">The commit 861e8086029e ("e1000e: move
        force SMBUS from enable ulp
        <br>
        function to avoid PHY loss issue") introduces a regression on
        <br>
        CH_MTP_I219_LM18 (PCIID: 0x8086550A). Without the referred
        commit, the
        <br>
      </blockquote>
      <br>
      *P*CH
      <br>
      <br>
      <blockquote type="cite">ethernet works well after suspend and
        resume, but after applying the
        <br>
        commit, the ethernet couldn't work anymore after the resume and
        the
        <br>
        dmesg shows that the NIC Link changes to 10Mbps (1000Mbps
        originally):
        <br>
      </blockquote>
      <br>
      1.  s/Link/link/
      <br>
      2.  “couldn’t work” means the reduced bandwidth?
      <br>
    </blockquote>
    On my side, once the link changes to 10Mbps, I couldn't ping the
    machine anymore. And as you said, it probably has sth to do with
    switch/router configuration.<br>
    <blockquote type="cite"
      cite="mid:cdab9b76-e935-4b38-9b5c-496ff8fdfb64@molgen.mpg.de">3. 
      Please add a blank line and maybe indent the past with four
      spaces.
      <br>
      <br>
      <blockquote type="cite">[   43.305084] e1000e 0000:00:1f.6
        enp0s31f6: NIC Link is Up 10 Mbps Full Duplex, Flow Control:
        Rx/Tx
        <br>
        <br>
        Without the commit, the force SMBUS code will not be executed if
        <br>
        "return 0" or "goto out" is executed in the enable_ulp(), and in
        my
        <br>
        case, the "goto out" is executed since FWSM_FW_VALID is set. But
        after
        <br>
        applying the commit, the force SMBUS code will be ran
        unconditionally.
        <br>
        <br>
        Here move the force SMBUS code back to enable_ulp() and put it
        <br>
        immediate ahead of hw-&gt;phy.ops.release(hw), this could allow
        the
        <br>
      </blockquote>
      <br>
      immediate*l*?
      <br>
      <br>
      <blockquote type="cite">longest settling time as possible for
        interface in this function and
        <br>
        doesn't change the original code logic.
        <br>
      </blockquote>
      <br>
      Re-ordering code to achieve some waiting time sounds like, it’s
      not 100 % sure, that the problem won’t occur again?</blockquote>
    <p>Actually this patch not only adds the waiting time, but also
      restore the original code logic:</p>
    <p> original: On a machine with the CSME, the SMBUS will not be
      forced, accordingly the SMBUS will not be unforced after resume.</p>
    <p> wrong: On a machine with the CSME, the SMBUS is forced, but the
      SMBUS is not unforced after resume, there is an unbalance. My
      patch could fix this case.
    </p>
    <p> <br>
    </p>
    <blockquote type="cite"
      cite="mid:cdab9b76-e935-4b38-9b5c-496ff8fdfb64@molgen.mpg.de">
      <br>
      Could you please document your test system?
      <br>
    </blockquote>
    Lenovo Thinkpad P16Gen2 with ethernet card: <br>
    <pre class="bz_comment_text"
style="font-size: medium; width: 50em; font-family: monospace; white-space: pre-wrap; color: rgb(0, 0, 0); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">00:1f.6 Ethernet controller [0200]: Intel Corporation Device [8086:550a] (rev 20)</pre>
    <blockquote type="cite"
      cite="mid:cdab9b76-e935-4b38-9b5c-496ff8fdfb64@molgen.mpg.de">
      <br>
      Just a side note: Booting Linux 6.9-rc5+ *with kexec* on
      Supermicro Super Server/X13SAE, BIOS 2.0 10/17/2022 with the
      network device below, it also came up only with 10 Mbps and
      Ethernet did not work, for example `ping`. I conjectured though,
      that the non-working part was due to the switch configuration not
      allowing 10 Mbps.
      <br>
      <br>
          00:1f.6 Ethernet controller [0200]: Intel Corporation Ethernet
      Connection (17) I219-LM [8086:1a1c] (rev 11)
      <br>
      <br>
    </blockquote>
    <p>My test and result are same as yours.</p>
    <p>Thanks.<br>
    </p>
    <blockquote type="cite"
      cite="mid:cdab9b76-e935-4b38-9b5c-496ff8fdfb64@molgen.mpg.de">I
      didn’t find the time to further analyze and report the issue.
      <br>
      <br>
      Also could this also be related to the regression reported by the
      kernel test robot [1]?
      <br>
      <br>
          00:19.0 Ethernet controller: Intel Corporation Ethernet
      Connection (3) I218-V (rev 03)
      <br>
      <br>
      <br>
      <blockquote type="cite">Fixes: 861e8086029e ("e1000e: move force
        SMBUS from enable ulp function to avoid PHY loss issue")
        <br>
        Signed-off-by: Hui Wang <a class="moz-txt-link-rfc2396E" href="mailto:hui.wang@canonical.com">&lt;hui.wang@canonical.com&gt;</a>
        <br>
        Acked-by: Vitaly Lifshits <a class="moz-txt-link-rfc2396E" href="mailto:vitaly.lifshits@intel.com">&lt;vitaly.lifshits@intel.com&gt;</a>
        <br>
        Tested-by: Naama Meir <a class="moz-txt-link-rfc2396E" href="mailto:naamax.meir@linux.intel.com">&lt;naamax.meir@linux.intel.com&gt;</a>
        <br>
        Signed-off-by: Tony Nguyen <a class="moz-txt-link-rfc2396E" href="mailto:anthony.l.nguyen@intel.com">&lt;anthony.l.nguyen@intel.com&gt;</a>
        <br>
        ---
        <br>
        In the v2:
        <br>
          Change "this commit" to "the referred commit" in the commit
        header
        <br>
          Fix a potential infinite loop if ret_val is not zero
        <br>
            drivers/net/ethernet/intel/e1000e/ich8lan.c | 22
        +++++++++++++++++++++
        <br>
          drivers/net/ethernet/intel/e1000e/netdev.c  | 18
        -----------------
        <br>
          2 files changed, 22 insertions(+), 18 deletions(-)
        <br>
        <br>
        diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c
        b/drivers/net/ethernet/intel/e1000e/ich8lan.c
        <br>
        index f9e94be36e97..2e98a2a0bead 100644
        <br>
        --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
        <br>
        +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
        <br>
        @@ -1225,6 +1225,28 @@ s32 e1000_enable_ulp_lpt_lp(struct
        e1000_hw *hw, bool to_sx)
        <br>
              }
        <br>
            release:
        <br>
        +    /* Switching PHY interface always returns MDI error
        <br>
        +     * so disable retry mechanism to avoid wasting time
        <br>
        +     */
        <br>
        +    e1000e_disable_phy_retry(hw);
        <br>
        +
        <br>
        +    /* Force SMBus mode in PHY */
        <br>
        +    ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL,
        &amp;phy_reg);
        <br>
        +    if (ret_val) {
        <br>
        +        e1000e_enable_phy_retry(hw);
        <br>
        +        hw-&gt;phy.ops.release(hw);
        <br>
        +        goto out;
        <br>
        +    }
        <br>
        +    phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
        <br>
        +    e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
        <br>
        +
        <br>
        +    e1000e_enable_phy_retry(hw);
        <br>
        +
        <br>
        +    /* Force SMBus mode in MAC */
        <br>
        +    mac_reg = er32(CTRL_EXT);
        <br>
        +    mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
        <br>
        +    ew32(CTRL_EXT, mac_reg);
        <br>
        +
        <br>
              hw-&gt;phy.ops.release(hw);
        <br>
          out:
        <br>
              if (ret_val)
        <br>
        diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
        b/drivers/net/ethernet/intel/e1000e/netdev.c
        <br>
        index 3692fce20195..cc8c531ec3df 100644
        <br>
        --- a/drivers/net/ethernet/intel/e1000e/netdev.c
        <br>
        +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
        <br>
        @@ -6623,7 +6623,6 @@ static int __e1000_shutdown(struct pci_dev
        *pdev, bool runtime)
        <br>
              struct e1000_hw *hw = &amp;adapter-&gt;hw;
        <br>
              u32 ctrl, ctrl_ext, rctl, status, wufc;
        <br>
              int retval = 0;
        <br>
        -    u16 smb_ctrl;
        <br>
                /* Runtime suspend should only enable wakeup for link
        changes */
        <br>
              if (runtime)
        <br>
        @@ -6697,23 +6696,6 @@ static int __e1000_shutdown(struct
        pci_dev *pdev, bool runtime)
        <br>
                      if (retval)
        <br>
                          return retval;
        <br>
                  }
        <br>
        -
        <br>
        -        /* Force SMBUS to allow WOL */
        <br>
        -        /* Switching PHY interface always returns MDI error
        <br>
        -         * so disable retry mechanism to avoid wasting time
        <br>
        -         */
        <br>
        -        e1000e_disable_phy_retry(hw);
        <br>
        -
        <br>
        -        e1e_rphy(hw, CV_SMB_CTRL, &amp;smb_ctrl);
        <br>
        -        smb_ctrl |= CV_SMB_CTRL_FORCE_SMBUS;
        <br>
        -        e1e_wphy(hw, CV_SMB_CTRL, smb_ctrl);
        <br>
        -
        <br>
        -        e1000e_enable_phy_retry(hw);
        <br>
        -
        <br>
        -        /* Force SMBus mode in MAC */
        <br>
        -        ctrl_ext = er32(CTRL_EXT);
        <br>
        -        ctrl_ext |= E1000_CTRL_EXT_FORCE_SMBUS;
        <br>
        -        ew32(CTRL_EXT, ctrl_ext);
        <br>
              }
        <br>
                /* Ensure that the appropriate bits are set in LPI_CTRL
        <br>
      </blockquote>
      <br>
      <br>
      Kind regards,
      <br>
      <br>
      Paul
      <br>
      <br>
      <br>
      [1]:
<a class="moz-txt-link-freetext" href="https://lore.kernel.org/intel-wired-lan/202405150942.f9b873b1-oliver.sang@intel.com/">https://lore.kernel.org/intel-wired-lan/202405150942.f9b873b1-oliver.sang@intel.com/</a><br>
    </blockquote>
  </body>
</html>

--------------5v0lDPZzpxePkjM1CS6o5ExZ--
